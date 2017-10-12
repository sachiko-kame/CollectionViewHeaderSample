//
//  SampleCollectionViewCell.swift
//  CollectionViewSample
//
//  Created by 水野祥子 on 2017/10/12.
//  Copyright © 2017年 sachiko. All rights reserved.
//

import UIKit

class SampleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(top:String, bottom:String){
        self.topLabel.text = top
        self.bottomLabel.text = bottom
    }
}
