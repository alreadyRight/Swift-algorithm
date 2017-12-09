//
//  ViewController.swift
//  重载构造函数
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let p = Peson(name: "老王")
//        print(p.name)
        let s = Student(name: "lala", num: "32")
        print(s.name + s.num)
    }

    


}

