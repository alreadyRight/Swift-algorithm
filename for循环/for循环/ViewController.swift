//
//  ViewController.swift
//  for循环
//
//  Created by bxkj on 2017/10/26.
//  Copyright © 2017年 devil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo1()
        demo2()
    }
    
    //反序遍历
    func demo2(){
        for i in (0..<10).reversed() {
            print(i)
        }
    }
    
    func demo1(){
        //变量 i 在[0,5)中循环
        for i in 0..<5 {
            print(i)
        }
        //变量 i 在[0,5]中循环
        for i in 0...5 {
            print("----" + String(i))
        }
        print("---------")
        
        let r1 = 0..<5
        print(r1)
        
        
        let r2 = 0...5
        print(r2)
        
        
    }
    
    //MARK: 传统for循环
    func demo(){
        //传统的for,在Swift3.0中被取消
        //i++ ++i 从Swift3.0倍取消
        //替换为 i+= 1
        //i++会多一个临时变量
//        for var i = 0; i < 10; i++{
//
//        }
    }
    


}

