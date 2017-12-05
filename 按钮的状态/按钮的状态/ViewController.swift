//
//  ViewController.swift
//  按钮的状态
//
//  Created by 周冰烽 on 2017/12/5.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
     *  Swift
        -类
        -结构体
        -枚举(一般不会用到太高级的语法)
     
        以上三个都有构造函数,都可以有方法,整体看起来,都像原有的类
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton()
        btn.setTitle("let", for: .normal)
        btn.sizeToFit()
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.center = view.center
        view.addSubview(btn)
    }

    


}

