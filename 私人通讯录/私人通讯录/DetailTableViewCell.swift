//
//  DetailTableViewCell.swift
//  私人通讯录
//
//  Created by 周冰烽 on 2017/12/11.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit
import SnapKit
class DetailTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let label = UILabel()
        self.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(22)
            make.centerY.equalTo(self)
        }
        label.text = "hahaha"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
