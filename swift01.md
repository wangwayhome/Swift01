### swift 简单值 

```swift
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
        explicitString = "sss"
        
        print(explicitString)
        print(implicitInteger,implicitDouble,explicitDouble,explicitFloat)
        
        /*
         值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请显式转换。
         */
```

