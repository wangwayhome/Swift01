//
//  TriangleAndSquare.swift
//  Swift01
//
//  Created by wangwayhome on 2017/4/14.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

import Foundation
//你中有我 我中有你，就算你給其中一个赋值 也会影响到我，willset 显然是 将要做 。但 didSet 其实我可以把他想成是后悔药
class TriangleAndSquare {
    var triangle: EquilateralTriangle
    {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square
    {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
        
//        didSet { 打回原型。
//            triangle.sideLength = oldValue.sideLength
//        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
