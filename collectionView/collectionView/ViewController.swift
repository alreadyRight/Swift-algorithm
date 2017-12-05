//
//  ViewController.swift
//  collectionView
//
//  Created by 周冰烽 on 2017/12/5.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        let fl = UICollectionViewFlowLayout()
        fl.itemSize = view.bounds.size
        fl.minimumLineSpacing = 0
        fl.minimumInteritemSpacing = 0
        fl.scrollDirection = .horizontal
        //猜测,flowLayout不能设置collectionView的属性
//        fl.collectionView?.isPagingEnabled = true
//        fl.collectionView?.bounces = false
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: fl)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.white
        collectionView.isPagingEnabled = true
        collectionView.bounces = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView .register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "cellID")
        view.addSubview(collectionView)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView .dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)
        cell.backgroundColor = (indexPath.row % 2 == 0) ? UIColor.green : UIColor.blue
        return cell
    }
}

