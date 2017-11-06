//
//  ViewController.swift
//  数组
//
//  Created by bxkj on 2017/11/6.
//  Copyright © 2017年 devil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo()
        demo1()
    }

    //MARK: - 数组的遍历
    func demo1(){
        let array = ["经济技术",2,3,4,"说了肯定",CGPoint(x: 10, y: 300)] as [Any]
        
        //按照下标遍历
        for i in 0..<array.count {
            print(array[i])
        }
        
        //for in 遍历元素
        for i in array {
            print(i)
        }
        
        //enum block遍历,同时遍历下标和内容
        for e in array.enumerated() {
            print("元素\(e.element)")
            print("下标\(e.offset)")
            if e.offset == 3{
                break
            }
        }
        //n是索引下标,s是n对应的Int元素
        for (n,s) in array.enumerated() {
            print("\(n)\(s)")
        }
        
    }
    
    //MARK: - 数组的定义
    func demo(){
        //自动推导结果[Int]->表示数组中存放的是Int
        //跟OC中国的数组指定的泛型类似
        //Swift中的基本数据类型不需要包装
        let array = [1,2,3,4,5]
        
        print(array)
        //混合数组:开发中基本不用,因为数组靠下表索引
        let array1 = ["经济技术",2,3,4,"说了肯定",CGPoint(x: 10, y: 300)] as [Any]
        
        print(array1)
        //基本数据类型也不需要包装
        let p = CGPoint(x: 10, y: 300)
        
        let array2 = [p]
        
        print(array2)
    }
}

