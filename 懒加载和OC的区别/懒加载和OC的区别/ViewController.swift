//
//  ViewController.swift
//  懒加载和OC的区别
//
//  Created by 周冰烽 on 2017/12/12.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var label: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "hello world"
        label.sizeToFit()
        print(label)
        //释放label
        //和OC不同,一旦label被设置为nil,懒加载也不会再次执行
        //懒加载的代码智慧在第一次调用的时候,执行闭包,然后将闭包的结果保存在 label 中
//        label = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Swift 中一定注意不要主动清理视图
    }
}

