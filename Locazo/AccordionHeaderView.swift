//
//  AccordionHeaderView.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/12/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit
import FZAccordionTableView

class AccordionHeaderView: FZAccordionTableViewHeaderView {
    static let kDefaultAccordionHeaderViewHeight: CGFloat = 150.0;
    static let kAccordionHeaderViewReuseIdentifier = "AccordionHeaderViewReuseIdentifier";
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var text: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.white
    }
//
//    
    required override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = UIColor.white

    }
}

