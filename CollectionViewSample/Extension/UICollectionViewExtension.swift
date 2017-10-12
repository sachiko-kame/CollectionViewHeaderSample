//
//  UICollectionViewExtension.swift
//  CollectionViewSample
//
//  Created by 水野祥子 on 2017/10/12.
//  Copyright © 2017年 sachiko. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(cellType: T.Type) {
        let className = cellType.className
        let nib = UINib(nibName: className, bundle: nil)
        register(nib, forCellWithReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as! T
    }
}

