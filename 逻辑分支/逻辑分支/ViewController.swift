//
//  ViewController.swift
//  逻辑分支
//
//  Created by 周冰烽 on 2017/10/23.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo()
        demo1()
    }

    func demo(){
        let x = 10
        if x > 5 {
            print("大了")
        }else {
            print("小了")
        }
    }
    
    func demo1(){
        let x = 3
        x > 5 ? print("大了") : print("小了")
        //'()'表示空执行
        x > 5 ? print("大了") : ()
    }


}

