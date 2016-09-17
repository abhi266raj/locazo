//
//  ServiceListCollectionViewCell.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/17/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class ServiceListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commoninit()
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        self.commoninit()
    }
    
    func commoninit(){
       self.selectedBackgroundView = UIView()
        self.selectedBackgroundView?.frame = self.bounds
        self.selectedBackgroundView?.backgroundColor = UIColor.lightGray
    }
    
}
