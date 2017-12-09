//
//  Peson.swift
//  重载构造函数
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class Peson: NSObject {
    
    var name : String
    
    //重写
//    override init() {
//        name = "zhang"
//        super.init()
//    }
//    
    //重载,函数名相同,但是参数和个数不同
    //重载可以给自己的属性从外部设置初始值
    //如果重载了构造函数,并且没有实现父类的init方法,系统不再提供init()构造函数(默认是会有的)
        //因为默认的构造函数,不能给本类的属性分配空间
    init(name:String) {
        //使用参数的 name 设置给属性
        self.name = name
        
        //调用父类构造函数
        super.init()
    }
    
    
}
