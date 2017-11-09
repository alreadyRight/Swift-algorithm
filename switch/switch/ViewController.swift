//
//  ViewController.swift
//  Switch
//
//  Created by bxkj on 2017/10/26.
//  Copyright © 2017年 devil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo(number: "10")
        demo1()
    }
    
    func demo1(){
        let point = CGPoint(x: 10, y: 10)
        switch point {
        case let p where p.x == 0 && p.y == 0:
            print("原点")
        case let p where p.x == 0:
            print("Y轴")
        case let p where p.y == 0:
            print("X轴")
        case let p where abs(p.x) == abs(p.y):
            print("对角线")
        default:
            print("其他")
        }
        
    }

    //在Swift中 可以针对任意类型的值进行分支,不再局限在整数
    //switch 一般不需要break
    //switch 如果要多值,使用','
    //所有的分支需要一条指令,如果什么都不干,才使用break
    func demo(number : String){
        switch number {
        case "10","9":
            print("邮")
        case "8":
            break
        default:
            print("一般")
        }
        
    }


}

