//
//  ViewController.swift
//  GCD
//
//  Created by 周冰烽 on 2017/12/5.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // '尾'随闭包
        //如果函数的最后一个参数是闭包,函数参数可以提前结束,最后一个参数直接使用{}包装闭包的代码
        loadData { (result) in
            print("获取的数据:\(result)")
        }
        loadData(completion: {(result)->() in
            print(result)
        })
    }
    
    func demo() -> () {
        //尾随闭包
        DispatchQueue.global().async {
            DispatchQueue.main.async(execute: {
                
            })
        }
        //尾随闭包
        DispatchQueue.main.async {
            
        }
    }
    /**
     在异步执行过程中,获取结果,通过闭包回调
        闭包的应用场景和 block 完全一致
     */
    func loadData(completion:@escaping(_ result:[String])->()) -> Void{
        //将任务添加到队列,指定执行任务的函数
        //翻译:'队列'调度任务(闭包),以 同步/异步 的方式执行
        DispatchQueue.global().async {
            print("好事操作 \(Thread.current)")
            Thread.sleep(forTimeInterval: 1.0)
            let json = ["touxaijiso","asjiojdoiq","asjdoqdpo"]
            //主队列回调
//            DispatchQueue.main.async(execute: {
//                print("主线程更新UI\(Thread.current)")
//                completion(json)
//            })
            DispatchQueue.main.async {
                print("主线程更新UI\(Thread.current)")
                completion(json)
            }
        }
    }
}

