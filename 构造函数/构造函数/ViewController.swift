//
//  ViewController.swift
//  构造函数
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

/**
 在Swift中,默认同一个项目中(同一个命名空间下),所有的类都是共享的,可以直接访问,不需要 import
 所有对象的属性 var,也可以直接访问到
 */

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //()->alloc init
        //Swift中对应一个函数init()
        //作用:给成员变量分配空间,初始化成员变量
//        let p = Person()
//        print(p.name)
//        print(p)
        let s = Student()
        print(s.name + s.num)
        
    }
}

