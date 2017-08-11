//
//  Square.swift
//  Swift01
//
//  Created by wangwayhome on 2017/4/14.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

import Foundation

class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() ->  Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {//override 没有加，无法重写 会报错。
        return "A square with sides of length \(sideLength)."
    } }
