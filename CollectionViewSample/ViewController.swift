//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by 水野祥子 on 2017/10/12.
//  Copyright © 2017年 sachiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    var CollectionView : UICollectionView!
    let CollectionNum:Int = 50
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width:viewWidth, height:viewHieght)
        layout.sectionInset = UIEdgeInsetsMake(16, 10, 60, 10)
        layout.headerReferenceSize = CGSize(width:100,height:30)
        layout.minimumInteritemSpacing = 0.0
        layout.minimumLineSpacing = 0.0
        
        CollectionView = UICollectionView(frame: viewFrame, collectionViewLayout: layout)
        CollectionView.delegate = self
        CollectionView.dataSource = self
        CollectionView.backgroundColor = UIColor.white
        
        self.view.addSubview(CollectionView)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CollectionNum
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        collectionView.register(cellType: SampleCollectionViewCell.self)
        let cell = collectionView.dequeueReusableCell(with: SampleCollectionViewCell.self, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 80, height: 80)
    }


}

