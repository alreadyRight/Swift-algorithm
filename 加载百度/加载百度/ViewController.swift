//
//  ViewController.swift
//  加载百度
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:"http://www.baidu.com")
        //发起网络请求
        //和 OC 的区别,闭包的所有参数,需要自己写,OC是直接带入
        URLSession.shared.dataTask(with: url!){ (data,_,error) in
            guard let data = data else{
                print("网络请求失败\(error!)")
                return
            }
            //将data转换为String
            guard let html = String.init(data: data, encoding: String.Encoding.utf8) else{
                return
            }
            print(html)
        }.resume()
    }

    


}

