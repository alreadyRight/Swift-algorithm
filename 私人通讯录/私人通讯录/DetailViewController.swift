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
    
    var name: String?
    var phone: String?
    var address: String?
    
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
        tableView.estimatedRowHeight = 0
        tableView.estimatedSectionHeaderHeight = 0
        tableView.estimatedSectionFooterHeight = 0
        tableView.register(DetailTableViewCell.classForCoder(), forCellReuseIdentifier: detailCellID)
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DetailTableViewCell = tableView.dequeueReusableCell(withIdentifier: detailCellID, for: indexPath) as! DetailTableViewCell
        switch indexPath.row {
        case 0:
//            cell.setNormalValue(titleText: "姓名", placeholder: "请填写姓名", dataText: name ?? "")
            cell.title = "姓名"
            cell.placeholder = "请填写姓名"
            cell.dataText = name ?? ""
            cell.changeText { [weak self](text) in
                self?.name = text
            }
        case 1:
            cell.title = "电话号码"
            cell.placeholder = "请填写电话号码"
            cell.dataText = phone ?? ""
            cell.changeText { [weak self](text) in
                self?.phone = text
            }
        default:
            cell.title = "地址"
            cell.placeholder = "请填写地址"
            cell.dataText = address ?? ""
            cell.changeText { [weak self](text) in
                self?.address = text
            }
        }
        
        return cell
    }
    
    @objc func clickFinish() -> Void {
        guard let name = name,
            let phone = phone,
            let address = address
            else {
                return
        }
        let dict = ["name":name,"phone":phone,"address":address]
        let ud = UserDefaults.standard
        var arr: Array<[String : String]> = ud.object(forKey: "addressBook") as? Array<[String:String]> ?? []
        if arr.count == 0 {
            arr = Array<[String:String]>()
        }
        for i in 0 ..< arr.count {
            if dict["name"] == arr[i]["name"] {
                arr.remove(at: i)
                break
            }else if dict["phone"] == arr[i]["phone"]{
                arr.remove(at: i)
                break
            }else if dict["address"] == arr[i]["address"]{
                arr.remove(at: i)
                break
            }
        }
        arr.append(dict)
        ud.set(arr, forKey: "addressBook")
        navigationController?.popViewController(animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.becomeFirstResponder()
    }
}
