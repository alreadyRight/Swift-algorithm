//
//  Person.swift
//  运行时加载属性列表
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String?
    var age: Int = 0
    var title: String?
    
    
    /// 目标:[使用运行时]获取当前所有属性的数组
    class func propertyList()->[String] {
        
        var count: UInt32 = 0
        
        //1.获取 '类' 的属性列表
        let list = class_copyIvarList(self, &count)
        
        print("属性的数量\(count)")
        
        //遍历数组
        for i in 0..<Int(count) {
            //根据下标获取属性
            let pty = list?[i]//从可选的数组中提取下标对应的结果,结果可能为nil
            //获取'属性'的名称 C 语言字符串
            let cName = property_getName(pty!)//需要用属性获取名称,属性必须存在,用了强行解包
            print(cName)
            //转换成String的字符串
            
//            let name = String(uft8String:cName!)
//            print(name)
            
            //释放C语言的对象
            free(list)
        }
        
        return []
    }
}
