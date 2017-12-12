//
//  ViewController.swift
//  计算型属性
//
//  Created by 周冰烽 on 2017/12/12.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let p = Person()
        p.name = "老王"
        print(p.name ?? "")
        print(p.title ?? "")
        //'title' is a get-only property
        //只读属性,不写set方法
//        p.title = "老张"
        print(p.title2)
//        p.title2 = "laoksj"
    }

}

