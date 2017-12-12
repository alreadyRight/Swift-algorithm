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
        
    }

}

