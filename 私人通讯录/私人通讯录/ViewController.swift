//
//  ViewController.swift
//  私人通讯录
//
//  Created by 周冰烽 on 2017/12/9.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    private var selfTableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView(frame: CGRect(x: 0, y: 64, width: view.frame.size.width, height: view.frame.size.height - 64), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        selfTableView = tableView
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellID")
        }
        cell?.textLabel?.text = "测试\(indexPath.row)"
        cell?.detailTextLabel?.text = "详情测试\(indexPath.row)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        detailVC.status = 1
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    @IBAction func clickRight(_ sender: Any) {
        let detailVC = DetailViewController()
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

