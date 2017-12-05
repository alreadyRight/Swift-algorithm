//
//  ViewController.swift
//  函数的定义
//
//  Created by 周冰烽 on 2017/12/5.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(sum(x: 20, y: 80))
//        print(sum1(num1: 30, num2: 60))
//        print(sum2(80, 90))
//        print(sum3())
//        print(sum3(x: 10, y: 20))
//        print(sum3(x: 10))
//        print(sum3(y: 20))
        demo1()
        demo2()
        demo3()
    }
    
    //MARK: - 无返回值
    /**
     知道就行,主要用在闭包
     - 直接省略
     - ()
     - Void
     */
    func demo1(){
        print("lalala")
    }
    
    func demo2() -> () {
        print("hehehe")
    }
    
    func demo3() -> Void {
        print("heiheihei")
    }
    
    //MARK: - 默认值
    //通过给参数设置默认值,在调用的时候,可以任意组合参数,如果不指定的,就使用默认值
    func sum3(x : Int = 0 , y : Int = 0) -> Int {
        return x + y
    }
    
    func sum2(_ x : Int,_ y : Int) -> Int {
        return x+y
    }

    //MARK: - 外部参数
    /// 外部参数就是在形参前加一个名字
    /// 外部参数不会影响函数内部的细节
    /// 外部参数会让外部调用方看起来更加直观
    /// 外部参数如果使用_,在外部调用会忽略形参的名字
    func sum1(num1 x : Int,num2 y : Int) -> Int {
        return x+y
    }
    
    //MARK: - 函数定义
    /// 函数定义,格式 函数名(形参列表)->返回值类型
    func sum(x:Int,y:Int) -> Int {
        return x+y
    }


}

