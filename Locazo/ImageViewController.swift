//
//  ImageViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/11/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    var imageView:UIImageView = UIImageView()
    var imageContetMode:UIViewContentMode = .scaleAspectFill
    var imageIndex:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        //imageView = UIImageView.init();
        self.view = imageView;
        imageView.contentMode = imageContetMode
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
