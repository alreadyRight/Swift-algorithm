//
//  Student.swift
//  构造函数
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class Student: Person {
    var num : String
    
    override init() {
        print("student init")
        num = "001"
        super.init()
    }
    
}
