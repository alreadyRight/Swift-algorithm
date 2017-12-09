//
//  UITextField+Extension.swift
//  加法计算器
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

//extension 类似于 OC 中的category
extension UITextField{
    convenience init(placeholder: String,fontSize:CGFloat = 14,frame:CGRect){
        //实例化当前对象
        self.init(frame: frame)
        //访问属性
        self.borderStyle = .roundedRect
        self.placeholder = "0"
        self.font = UIFont.systemFont(ofSize: fontSize)
    }
}
