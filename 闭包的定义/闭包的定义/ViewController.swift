//
//  ViewController.swift
//  闭包的定义
//
//  Created by 周冰烽 on 2017/12/5.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /**
        闭包
        1.提前准备好的代码
        2.在需要的时候执行
        3.可以当做参数传递
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1>最简单的闭包
        //() -> () 没有参数,没有返回值的函数
        //如果没有参数,没有返回值,可以省略,连in都一起省略
        let b1 = {
            print("hello")
        }
        //执行闭包
        b1()
        
        //2> 带参数的闭包
        //闭包中,参数,返回值,实现代码都是卸载{}中
        //需要使用一个关键字 'in'
        //{ 形参列表 -> 返回值类型 in//实现代码 }
        let b2 = { (x : Int) -> () in
            print(x)
        }
        b2(20)
        
        //3>带参数带返回值的比吧
        let b3 = {
            (x : Int) -> (Int) in
            return x + 250
        }
        
        print(b3(100))
    }
    
    //MARK: - 使用常量记录函数的演练
    func demo(){
        //定义一个常量记录 函数
        let f = sum
        print(f(10, 20))
    }
    
    func sum(x : Int , y : Int) -> Int {
        return x + y
    }


}

