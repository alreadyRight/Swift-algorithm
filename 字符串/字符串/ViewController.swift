//
//  ViewController.swift
//  字符串
//
//  Created by bxkj on 2017/10/26.
//  Copyright © 2017年 devil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
    }

    //MARK: - 字符串的遍历
    func demo(){
        let str = "我要飞OK哦地区ID号"
        
        for c in str.characters {
            print(c)
        }
        
    }


}

