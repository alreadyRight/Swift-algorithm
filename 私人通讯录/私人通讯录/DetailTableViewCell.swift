//
//  DetailTableViewCell.swift
//  私人通讯录
//
//  Created by 周冰烽 on 2017/12/11.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit
import SnapKit
class DetailTableViewCell: UITableViewCell,UITextFieldDelegate {
    
    typealias ttt = (_ text: String)-> Void
    
    var CellBlock :ttt?
    
    func changeText(completion:@escaping (_ text: String)->()) -> Void {
       CellBlock = completion
    }
    
    private var titLabel = UILabel()
    private var dataTextField = UITextField()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14.0)
        label.textColor = UIColor.black
        addSubview(label)
        label.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(22)
            make.centerY.equalTo(self)
        }
        titLabel = label
        
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 14.0)
        textField.textColor = UIColor.lightGray
        textField.borderStyle = .none
        textField.delegate = self
        addSubview(textField)
        textField.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(100)
            make.right.equalTo(self).offset(-10)
            make.top.bottom.equalTo(self)
        }
        dataTextField = textField
    }
    
    func setNormalValue(titleText: String,placeholder: String, dataText: String) -> Void {
        titLabel.text = titleText
        dataTextField.placeholder = placeholder
        dataTextField.text = dataText
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {
            return
        }
        CellBlock!(text)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
