//
//  ViewController.swift
//  循环引用
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var completionCallBack:(()->())?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //bloack 中如果出现 self. 要特别小心
        //'循环引用' 单方向对引用不会产生循环引用!
        //- 只是闭包最self进行了copy,闭包执行完成之后会自动销毁,同时释放对self的引用
        //- 同时需要self对闭包引用
        loadData {
            print(self.view)
        }
    }

    func loadData(completion:@escaping ()->()) -> () {
        //使用属性记录闭包
        completionCallBack = completion
        //异步
        DispatchQueue.global().async {
            print("耗时操作")
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

