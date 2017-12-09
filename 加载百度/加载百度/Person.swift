//
//  Person.swift
//  加载百度
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String?
    var age: Int = 0
    
    //重载构造函数
    /**
     1.便利构造函数允许返回nil,
        - 正常的构造函数一定会创建对象
        - 判断给定的参数是否符合条件,如果不符合条件,直接返回nil,不会创建对象,减少内存开销
     2.'只有'便利构造函数中使用'self.init'构造当前对象
        -没有conbenience关键字的构造函数是负责创建对象的,反之是用来检查条件的,本身不负责对象的创建
     3.如果要在便利构造函数中使用 当前对象的属性 ,一定要在self.init之后
     */
    convenience init?(name: String, age: Int){
        if age > 100 {
            return nil
        }
        //实例化当前对象
        self.init()
        //使用self访问name之前应该调用self.init
        //执行至此 self 才允许被访问,才能够访问到对象的属性
        self.name = name
    }
    override init() {
        super.init()
//        self.init()
    }
    
}
