//
//  Student.swift
//  重载构造函数
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class Student: Peson {
    var num : String
    
    init(name: String, num : String) {
        self.num = num
        super.init(name: name)
    }
    
}
