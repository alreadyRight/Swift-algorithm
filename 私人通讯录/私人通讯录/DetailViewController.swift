//
//  DetailViewController.swift
//  私人通讯录
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit
class DetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var status: Int = 0
    private let detailCellID = "detailCellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        if status == 0 {
            title = "添加联系人"
        }else{
            title = "编辑联系人"
        }
        view.backgroundColor = UIColor.white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "完成", style: .plain, target: self, action: #selector(clickFinish))
        setupTableView()
    }

    
    func setupTableView() -> Void {
        let tableView = UITableView(frame: CGRect(x: 0, y: 64, width: view.frame.size.width, height: view.frame.size.height - 64), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailTableViewCell.classForCoder(), forCellReuseIdentifier: detailCellID)
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: detailCellID, for: indexPath)
        
        return cell
    }
    
    @objc func clickFinish() -> Void {
        
    }
}
