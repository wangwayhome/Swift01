//
//  NamedShape.swift
//  Swift01
//
//  Created by wangwayhome on 2017/4/14.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

import Foundation
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    } }

