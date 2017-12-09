//
//  Person.swift
//  构造函数
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

/**
 1.给自己的属性分配空间并且设置初始值
 2.调用父类的'构造函数',给父类的属性分配空间设置初始值
    NSObject 没有属性,只有一个成员变量'isa'
 */

//Person 类没有初始化器,构造函数,可以有多个,默认是init
class Person: NSObject {
    var name : String
    
    //重写 -> 父类有这个方法,子类重新实现,需要override关键字
    //属性 self.name没有初始化,implicitly(隐式生成的super.init())
    override init() {
        print("person init")
        name = "zhang"
        //提示:给self.name初始化 -> 分配空间,设置初始值!
        super.init()
//        name = "li"
    }
}
