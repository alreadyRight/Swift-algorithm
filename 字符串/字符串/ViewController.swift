//
//  ViewController.swift
//  字符串
//
//  Created by bxkj on 2017/10/26.
//  Copyright © 2017年 devil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo()
//        demo1()
//        demo2()
//        demo3()
        demo4()
    }
    
    /** 字符串的子串 */
    func demo4(){
        //建议 : 一般使用NSString 作为中转,因为Swift取子串的方法一直在优化
        let str = "一起来开黑了"
        
        let ocStr = str as NSString
        
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        
        print(s1)
        
        //2.String de 3.0方法
//        let r = 0..<5
//        str.substring(with: <#T##Range<String.Index>#>)
        print(str.startIndex)
        print(str.endIndex)
        //String de 3.0方法
//        let s2 = str.substring(from: "我们".endIndex)
        //String de 4.0方法
        //"一起"只是来计算长度
        let s2 = str.suffix(from: "一起".endIndex)
        
        print(s2)
        
//        let s3 = str.distance(from: "一起".endIndex, to: "l".startIndex)
        
        let s3 = str.prefix(upTo: "lllll".endIndex)
        print(s3)
        
        
        let i = str.index(of: "了")
        let s4 = str.prefix(upTo: i!)
        print(s4)
        //取子字符串范围
        guard let range = str.range(of: "一起") else{
            print("没有找到字符串")
            return
        }
        
        
        print(range)
//        print(str.substring(with: range))
        
        
    }
    
    /** 格式化 */
    func demo3() -> (){
        let h = 8
        let m = 9
        let s = 6
        let dataStr = "\(h):\(m):\(s)"
        print(dataStr)
        let dateStr1 = String(format:"%02d:%02d:%02d",h,m,s)
        print(dateStr1)
    }
    
    /** 拼接字符串 */
    func demo2(){
        let name = "老王"
        let age = 18
        let title : String? = "BOSS"
        let point = CGPoint(x: 100, y: 200)
        
        //\(变量/常量)
        //拼接字符串需要注意 可选项 Optional
        let str = "\(name) \(age) \(title ?? "") \(point)"
        print(str)
        
    }
    
    //字符串长度
    func demo1(){
        
        let str = "hello world啦啦"
        //1.返回指定编码的对应的字节数量
        //utf8 的编码(0~4个),每个汉字是3个字节
        print(str.lengthOfBytes(using: .utf8))
        
        //2.字符串成都 - 返回字符的个数(推荐使用)
        print(str.characters.count);
        
        //3.用NSString中转
        /** as 类型转换 */
        let ocStr = str as NSString
        print(ocStr.length)
        
    }
    
    //MARK: - 字符串的遍历
    func demo(){
        //NSString不支持以下方式遍历
        let str = "我要飞OK哦地区ID号"
        
        for c in str.characters {
            print(c)
        }
        
    }


}

