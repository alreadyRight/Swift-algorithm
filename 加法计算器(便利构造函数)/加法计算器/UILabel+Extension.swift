//
//  UILabel+Extension.swift
//  加法计算器
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

extension UILabel{
    convenience init(frame:CGRect,text:String,alignment:NSTextAlignment = .center){
        self.init(frame: frame)
        self.text = text
        self.textAlignment = alignment
    }
}
