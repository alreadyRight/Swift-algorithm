//
//  ViewController.swift
//  可选项判断
//
//  Created by 周冰烽 on 2017/10/23.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo(x: nil, y: 10)
        demo1(x: nil, y: 10)
    }
    
    
    //MARK: -??
    func demo1(x : Int? , y : Int?){
        //??简单的三目
        //如果没有值,使用??后面的值替代
        print((x ?? 0) + (y ?? 0))
        let name:String? = "老王"
//        print("\(name ?? "")你好")
        print((name ?? "") + "你好")
        //??操作符的优先级'低',在使用的时候+()包一下
        print(name ?? "" + "你好")
    }
    
    func demo(x : Int?,y : Int?){
        //强行解包有风险
//        print(x!+y!)
        //如果直接使用if,一不小心,会让代码很丑陋
        if x != nil && y != nil {
            print(x! + y!)
        }else{
            print("x或y为nil")
        }
        
    }


}

