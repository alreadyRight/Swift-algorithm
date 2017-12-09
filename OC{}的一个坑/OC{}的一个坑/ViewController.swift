//
//  ViewController.swift
//  OC{}的一个坑
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let l = UILabel()
        //参数结束 { 尾随闭包 }
        view.addSubview(l);
        // Extra argument in call
        // 调用了额外的参数
        {
            let l = UILabel()
            view.addSubview(l)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

