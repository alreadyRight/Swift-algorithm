//
//  Person.swift
//  计算型属性
//
//  Created by 周冰烽 on 2017/12/12.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class Person: NSObject {
    var _name: String?
    // getter & setter 仅用演示,日常开发不用
    // Swift 中一般不会重写getter和setter方法
    var name: String? {
        get{
            //返回 _成员变量
            return _name
        }
        set{
            _name = newValue
        }
    }
    
}
