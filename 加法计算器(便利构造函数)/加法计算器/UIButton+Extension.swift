//
//  UIButton+Extension.swift
//  加法计算器
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

extension UIButton{
    convenience init(title: String,color:UIColor = UIColor.darkGray){
        self.init()
        self .setTitle(title, for: .normal)
        self.setTitleColor(color, for: .normal)
        self.sizeToFit()
    }
}
