//
//  EquilateralTriangle.swift
//  Swift01
//
//  Created by wangwayhome on 2017/4/14.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

import Foundation
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0//newValue 算是默认输入的东东 关键字吧
        } }
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}
