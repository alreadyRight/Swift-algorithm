//
//  Person.swift
//  构造函数(KVC)
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit
/**
 1.定义模型属性的时候,如果是对象,通常都是可选的
    - 在需要的时候创建
    - 避免写构造函数,可以简化代码
 2.如果是基本数据类型,不能设置成可选的,而且要设置初始值,否则KVC会崩溃
 3.使用KVC方法之前,应该调用super.init方法 保证对象实例化完成
 4.如果需要使用KVC设置数值,属性不能是private的
 */
@objcMembers
class Person: NSObject {
    //name 属性是可选的,在 OC 中很多的属性都是在需要的时候创建
    //因为在手机开发,内存很宝贵,有些属性并不是一定需要分配空间的
    //延迟加载,在需要的时候再创建
    var name : String?
    //给基本数据类型做初始化
    //使用KVC会提示无法找到 age 的 KEY
    //原因:Int 是一个基本数据类型的结构体,OC中没有,OC中只有基本数据类型!
    //var age : Int?
    var age : Int = 0
    //如果是private属性,使用KVC设置值得时候,同样无法设置
    //如果设置成private属性/方法,禁止外部访问
//    private var title : String?
    var title : String?
    
    init(dict:[String:AnyObject]){
        //保证对象已经完全初始化完成!
        super.init()
        //使用 self 的方法 'setValueForKeys' 之前,应该调用 super.init
        //KVC 的方法, 是 OC 的方法,在运行时,给对象发送消息
        //要求对象已经实例化完成
        setValuesForKeys(dict)
    }
    //当KVC赋值失败时,走的方法
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        //没有调用super,将父类的代码完全覆盖,不会崩溃,打印错误的key/value
        print(value as Any,key)
    }
}
