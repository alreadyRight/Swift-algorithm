//
//  ViewController.swift
//  tableView
//
//  Created by 周冰烽 on 2017/12/4.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        //1.创建表格
        let tableView = UITableView(frame: view.bounds, style: .plain)
        //2.添加到视图
        view.addSubview(tableView)
        //3.注册可重用cell
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cellID")
        //4.设置数据源
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }

}




