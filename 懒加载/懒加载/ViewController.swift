//
//  ViewController.swift
//  懒加载
//
//  Created by 周冰烽 on 2017/12/12.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //初始化label,并且分配空间,会提前创建
    //lazy - 懒加载
    lazy var label: DemoLabel = DemoLabel()
    
    private func setupUI(){
        //! -- 解包,为了参与计算,addSubView 用 subViews 数组记录空间,数组中不允许插入nil
        //? -- 可选解包,调用方法,如果为nil,不调用方法,但是不能参与计算
        view.addSubview(label)
        label.text = "hello"
        label.sizeToFit()
        label.center = view.center
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


}

