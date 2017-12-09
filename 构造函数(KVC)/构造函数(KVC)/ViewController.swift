//
//  ViewController.swift
//  构造函数(KVC)
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let p = Person(dict: ["name":"老张","age":109,"title":"BOSS"] as[String:AnyObject])
        print(p.name ?? "hehe")
        print(p.age)
//        print(p.title ?? "")
    }


}

