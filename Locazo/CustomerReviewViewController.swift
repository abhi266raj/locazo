//
//  CustomerReviewViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/17/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class CustomerReviewViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var customerName: UILabel!
    
    @IBOutlet weak var customerDetail: UILabel!
    
    @IBOutlet weak var customerDescription: UITextView!
    var imageName:String? = nil;
    var imageIndex: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        if (imageName != nil){
            imageView.image = UIImage(named: imageName!);
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
      

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
