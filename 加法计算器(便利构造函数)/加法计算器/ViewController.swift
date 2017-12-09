//
//  ViewController.swift
//  加法计算器
//
//  Created by 周冰烽 on 2017/12/8.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numText1 : UITextField?
    var numText2 : UITextField?
    var label : UILabel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() -> () {
        //1.两个textField
//        let textField1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
//        textField1.borderStyle = .roundedRect
//        textField1.text = "0"
//        view.addSubview(textField1)
        let textField1 = UITextField(placeholder: "0",
                                     frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        view.addSubview(textField1)
        numText1 = textField1
        
//        let textField2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
//        textField2.borderStyle = .roundedRect
//        textField2.text = "0"
        let textField2 = UITextField(placeholder: "0",
                                     frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        
        view.addSubview(textField2)
        numText2 = textField2
        
        //2.三个label
//        let label1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
//        label1.text = "+"
//        label1.textAlignment = .center
        let label1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30),
                             text: "+")
        view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30),
                             text: "=")
        view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x: 260, y: 20, width: 60, height: 30),
                             text: "0")
        view.addSubview(label3)
        
        label = label3
        
        //3.一个button
        let button = UIButton(title: "计算")
        button.center = view.center
        view.addSubview(button)
        button.addTarget(self, action: #selector(clac), for: .touchUpInside)
    }
    
    @objc func clac() -> Void {
        print(#function)
        //将文本框内容转换为数值,如果文本框内容不是数字 Int 之后 是nil
        
        guard let num1 = Int(numText1?.text ?? ""),
            let num2 = Int(numText2?.text ?? "") else {
            print("输入数字才能计算")
            return
        }
        label?.text = "\(num1 + num2)"
    }
    
}

