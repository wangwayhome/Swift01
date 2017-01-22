//
//  ViewController.swift
//  Swift01
//
//  Created by wangwayhome on 2017/1/22.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //每个语言开始学习的第一句话，很熟悉了吧，嘿嘿，这个变态的语言，不需要加分号，不需要main()之类函数入口的。不知道设计者脑门是不是小时候被夹过。
        print("Hello, world!")
        
        
        //简单值
        /*
         let 常量：简单粗暴，就像古代妇女只能出嫁一次，然后就“嘿嘿”多次。奇葩的是这个语言，你娶回来之后可以不指定娶的是凤姐还是林志玲，到时候进门了，还可以选。
             只能给一次值，可以读很灰常多次，乃们 编译的时候还可以不用指定初始值以及类型。
         var 变量：没啥可说，随便**，随便约。放荡不羁。
        */
        
        var myVariable = 42
        myVariable = 50
        let myConstant = 42
        print(myVariable,myConstant)
        
        
        /*
         1、初始值决定类型
         2、如果初始值没有提供足够的信息(或者没有初始值)，那你需要在变量后面声明类型，用冒号分割。
         */
        let implicitInteger = 70
        let implicitDouble = 70.0
        let explicitDouble: Double = 70
        let explicitFloat: Float = 70.0
        
        let explicitString: String
        explicitString = "printFloat"
        
        print(explicitString)
        print(implicitInteger,implicitDouble,explicitDouble,explicitFloat)
        
        /*
         老婆不会偷偷变成隔壁老王的，必须离婚才可以。
         类型必须显示转换
         */
        let label = "The width is"
        let width = 94
        let widthLabel = label + String(width)
        print(widthLabel)
        //有一种更简单的把值转换成字符串的方法:把值写到括号中，并且在括号之前写一个反斜杠。例如:
        //其实就是把 @()  换成 \()  感觉 没提高多少嘛。呵呵
        
        let dstringFloat = explicitString + "\(explicitFloat)"
        print(dstringFloat)
        
        /*
         创建数组和字典
         */
        var shoppingList = ["catfish", "water", "tulips", "blue paint"]
        shoppingList[1] = "bottle of water"
        print(shoppingList)
        
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
            ]
        occupations["Jayne"] = "Public Relations"//add
        occupations["Kaylee"]? = "Public Mechanic"//问号 判断非空
        let malcolmValue = occupations["Malcolm"]!//强制拆包
        print(occupations)
        print(malcolmValue)
        
        textView.text = occupations["Malcolm"]
        
        /*
        shoppingList = []
        occupations = [:]
        let emptyArray = [String]()
        let emptyDictionary = [String: Float]()
         */
        
   }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

