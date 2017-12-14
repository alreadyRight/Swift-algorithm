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
    
    var title: String?{
        //只
        get{
            return "Mr." + (name ?? "")
        }
    }
    //只读属性的简写 -->直接 return
    //又称为计算型属性 -> 本省不保存内容,都是通过计算获取结果
    //类似一个函数
    // - 没有参数
    // - 一定有返回值
    var title2: String {
        return "Mr XXX." + (name ?? "")
    }
    
    //懒加载的 title ,本质是一个闭包
    //懒加载会在第一次访问的时候,执行,闭包执行结束后,会把结果保存在 title3 中
    lazy var title3: String = {
        return "lazy" + (self.name ?? "")
    }()
    
    
}
