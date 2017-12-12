//
//  DemoLabel.swift
//  懒加载
//
//  Created by 周冰烽 on 2017/12/12.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {
    //重写构造函数
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    //initWithCoder -> 使用Xib / Storyboard 开发的入口
    //提示: 所有UIView 及子类在开发时,一旦重写了构造函数,必须要实现initWithCoder函数,以保证两个通道
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
        //如果使用xib开发,会直接崩溃
        //禁止xib使用本类
        //fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        print("设置界面")
    }
}
