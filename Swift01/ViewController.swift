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
        
        
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            } }
        print(teamScore)
        
        
        let optionalString: String? = "Hello"
        print(optionalString == nil)
        let optionalName: String? = "John Appleseed"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        print(optionalString ?? "def")
        print(optionalName ?? "def")
        print(greeting)
        
        //??  判断是否非空，空则选择后面的
        let nickName: String? = nil
        let fullName: String = "John Appleseed"
        let informalGreeting = "Hi \(nickName ?? fullName)"
        print(informalGreeting)
        
        
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        
        
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
            ]
        var largest = 0
        var kindest = "Prime";
        for (kind, numbers) in interestingNumbers {
            print(kind,numbers)
            
            for number in numbers {
                if number > largest {
                    largest = number
                    kindest = kind
                }
            } }
        
        print(kindest)
        print(largest)
        
        

        print(greet(person:"Bob", eat: "apple"))
        
        print(greet("JOHN", on: "Wednesday"))
        
        let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
        print(statistics.sum)
        print(statistics.2)
        
        print(sumOf())
        print(sumOf(numbers: 42, 597, 12))
            
            
        var aanumbers = [20, 19, 7, 12]
        print(hasAnyMatches(list: aanumbers, condition: lessThanTen))

        //使用 {} 来创建 一个匿名闭包。比如把上面的代码 进行重构下， 使用 in 将参数和返回值类型声明与闭包函数体进行分离。讲起来拗口其实就是 入参->出参 in 函数代码  
        //ps： 不知道哪个脑残设计成in，我感觉用大括号看起来顺眼。
        
        print(hasAnyMatches(list: aanumbers, condition: ({
            (number : Int) -> Bool in
            return number < 10
        })))

        var numbers_a = [20, 19, 7, 12]
        print(
            numbers_a.map { (number : Int) -> Int in
                let result = 3 * number
                return result
            }
        )
        
        //如果一个闭包的类型已知，比如作为一个回调函数，你可以忽略参数的类型和返回值。单个语句闭包会把它语句的值当做结果返回。
        print(hasAnyMatches(list: aanumbers, condition: ({
            number in
            number < 10
        })))
        

        
        
        let mappedNumbers = numbers_a.map({ number in 3 * number })
        print(mappedNumbers)
        
        //你可以通过参数位置而不是参数名字来引用参数——这个方法在非常短的闭包中非常有用。当一个闭包作为最后
        //一个参数传给一个函数的时候，它可以直接跟在括号后面。当一个闭包是传给函数的唯一参数，你可以完全忽略括号
        //唯一一个参数的情况下，作者估计觉得括号实在太尼玛多了，就去掉了。
        //提出一点小小的吐槽，这样的语法，我是在看不出有啥优越性，可读性略差。而且还不如oc 来得严谨。实在是跪了。同样的功能，我感觉oc的闭包写起来更加优雅。
        
        print(hasAnyMatches(list: aanumbers, condition: {
            number in
            number < 10
        }))
        
        
        let sortedNumbers = numbers_a.sort { $0 > $1 }
        print(sortedNumbers)

        print(repeatItem(repeating: "knock", numberOfTimes:4))
        
        
        //_________________
        classTest()
    }
    

    //泛型
    func repeatItem<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
        var result = [Item]()
        for _ in 0..<numberOfTimes {
            result.append(item)
        }
        return result
    }
    
    //函数
    func greet(person: String, eat: String) -> String {
        return "Hello \(person), eat \(eat)."
    }
    //默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签。
    func greet(_ person: String, on day: String) -> String {
        return "Hello \(person), today is \(day)."
    }
    
    //使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示。 按我理解 可以扔出一个对象出来。
    func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score }
            sum += score }
        return (min, max, sum)
    }
    
    
 
    
    //也就是传入可变数组 不过这个 “...” 写法真的比较恶心。
    // 还是之前的oc 定义一个可变数组的类型看起来顺眼。
    //不懂为啥这么设计，这么设计可读性有更强吗，我看不一定对。
    
    func sumOf(numbers: Int...) -> Int {
        var sum = 0
        for number in numbers {
            sum += number
        }
        return sum
    }
    
    //函数可以嵌套函数，书上写说可以重构一些太长或者太复杂的函数，我看这样也不简单到哪里去啊。。。。为啥要这样呢。。奇葩。分开不同地方写不是挺好的么。何必嵌套。
    
    func returnFifteen() -> Int {
        var y = 10
        func add() {
            y += 5
        }
        add()
        return y
    }
    
    //函数也可以当做参数传入另一个函数。
    //这个就有点意思了，类似之前的闭包。
//    用来做回调函数还不错，我觉得。嘿嘿。
    
    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            } }
        return false
    }
    func lessThanTen(number: Int) -> Bool {
        return number < 10
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

//类的测试

func classTest(){
    let test = Square(sideLength: 5.2, name: "my test square")
    test.area()
    print( test.simpleDescription())
    
    
    var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
    print(triangle.perimeter)
    triangle.perimeter = 9.9
    print(triangle.sideLength)
    
    var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
    print(triangleAndSquare.square.sideLength)
    print(triangleAndSquare.triangle.sideLength)
    triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
    print(triangleAndSquare.triangle.sideLength)
    print(triangleAndSquare.square.sideLength)
    
    //问好判断是不是存在，不为nil 才执行问号后面的东东。
    let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
    let sideLength = optionalSquare?.sideLength
    
}

//结构体和枚举 没啥好说的
//1、在 switch 里，枚举成员使用缩写 .Hearts 来引用，2、枚举可以包含方法。
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    } }
//let hearts = Suit.Hearts
//let heartsDescription = hearts.simpleDescription()

