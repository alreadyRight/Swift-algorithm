//
//  ViewController.swift
//  循环引用
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var completionCallBack:((_ result:[String])->())?
    var completionCallBack:(()->())?

    override func viewDidLoad() {
        super.viewDidLoad()
        //bloack 中如果出现 self. 要特别小心
        //'循环引用' 单方向对引用不会产生循环引用!
        //- 只是闭包最self进行了copy,闭包执行完成之后会自动销毁,同时释放对self的引用
        //- 同时需要self对闭包引用
        
        //解除循环引用,需要打断链条
        //方法1:OC的方式
        //细节 var,weak只能修饰var,不能修饰let
        //weak 可能会被在运行时被修改 -> 只想的对象一旦被释放,会被自动设置为nil
//        weak var weakSelf = self
//
//        loadData { result in
//            //细节
//            //解包有两种方式的解包
//            //? 可选解包 - 如果 self 已经被释放,不会向对象发送view getter的消息
//            //! 强行解包 - 如果 self 已经被释放,强行解包会导致崩溃
//            /**
//             weakSelf?.self - 只是单纯的发送消息,没有计算
//             强行解包,因为需要计算,可选项不能直接参与到计算
//             */
//            print(weakSelf?.view as Any)
////            print(self.view)
//            print(result)
//        }
        
        //方法2 - Swift的推荐方法
        //[weak self] 表示{}中的所有self都是弱引用
        loadData2 { [weak self] in
            print(self?.view as Any)
        }
        
        //方法3 - Swift 的另外一个用法 , 知道就好
        //[unowned self] 表示{}中所有self都是assign的,不会强引用,但是如果对象释放,指针地址不会变化
        //如果对象呗释放,继续调用,就会出现野指针的问题
//        loadData2 {[unowned self] in
//            print(self.view)
//        }
    }

//    func loadData(completion:@escaping (_ result:[String])->()) -> () {
//        //使用属性记录闭包
//        completionCallBack = completion
//        //异步
//        DispatchQueue.global().async {
//            print("耗时操作")
//            let json = ["asdadadasasdasd","aaaasssssss","ppppllllooooo"]
//            Thread.sleep(forTimeInterval: 2.0)
//            DispatchQueue.main.async {
//                //回调,执行闭包
//                completion(json)
//            }
//        }
//    }
    
    
    func loadData2(completion:@escaping ()->()) -> () {
        //使用属性记录闭包
        completionCallBack = completion
        //异步
        DispatchQueue.global().async {
            print("耗时操作")
            Thread.sleep(forTimeInterval: 2.0)
            DispatchQueue.main.async {
                //回调,执行闭包
                completion()
            }
        }
    }
    //类似于 OC 的dealloc
    deinit {
        print("我走了")
    }

}

