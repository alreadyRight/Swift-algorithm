//
//  ViewController.swift
//  可选项判断
//
//  Created by 周冰烽 on 2017/10/23.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo(x: nil, y: 10)
//        demo1(x: nil, y: 10)
//        demo2()
//        demo3()
        demo4(name: "老王", age: 18)
    }
    
    func demo4(name : String?,age : Int?){
        if let name = name,let age = age {
            //非空的name和age仅在{}内有效
            print(name + String(age))
        }else{
            print("姓名或者年龄为空")
        }
        //使用同名的变量接受值,在后续使用的都是非空值,不需要解包
        //好处:可以避免起名字的烦恼
        guard let name = name,
            let age = age else {
                print("姓名或者年龄为空")
                return
        }
        print(name + String(age))
    }
    
    //MARK: - guard 守护/守卫
    //guard let 和 if let刚好相反
    func demo3(){
        let oName:String? = "老王"
        let oAge:Int? = 10
        //guard let 守护一定有值,如果没有就直接返回
        guard let name = oName,let age = oAge else {
            print("姓名或者年龄为空")
            return
        }
        //代码执行至此,name和age一定有值
        //通常判断是否有值之后,会做具体的逻辑实现,通常代码多
        //如果用if let 凭空多了一层分支,guard 是降低分支层次的办法
        //guard 的语法是Swift2.0推出的
        print(name + String(age))
        
    }
    
    //MARK: - if let / var 连用语法,目的就是判断值是否为nil,{}内一定有值,可以直接使用,不需要解包
    func demo2(){
        let oName:String? = "老王"
        let age:Int? = 10
        if oName != nil && age != nil {
            print(oName! + String(age!))
        }
        if var name = oName,let ass = age {
            
            name = "老李"
            
            //进入分支之后,name和ass一定有值,不需要解包
            //name和ass的作用域仅在{}中
            print(name + String(ass))
        }else{
            print("name 或者 age 为nil")
        }
        
        
    }
    
    //MARK: -??
    func demo1(x : Int? , y : Int?){
        //??简单的三目
        //如果没有值,使用??后面的值替代
        print((x ?? 0) + (y ?? 0))
        let name:String? = "老王"
//        print("\(name ?? "")你好")
        print((name ?? "") + "你好")
        //??操作符的优先级'低',在使用的时候+()包一下
        print(name ?? "" + "你好")
    }
    
    func demo(x : Int?,y : Int?){
        //强行解包有风险
//        print(x!+y!)
        //如果直接使用if,一不小心,会让代码很丑陋
        if x != nil && y != nil {
            print(x! + y!)
        }else{
            print("x或y为nil")
        }
        
    }


}

