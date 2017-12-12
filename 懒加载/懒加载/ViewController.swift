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
//    lazy var label: DemoLabel = DemoLabel()
    // 懒加载本质上是一个'闭包'
    // 完整写法,日常开发不建议这么写
    /**
        {}包装代码
        ()执行代码
     
     日常开发:
     1.闭包中的只能提示不好
     2.闭包中如果出现self.还需要注意循环引用
     */
    lazy var label = { ()->DemoLabel in
            let l = DemoLabel()
        return l
    }()
    
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

