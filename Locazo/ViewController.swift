//
//  ViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/11/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class ViewController: SlideMenuController {
    //var mainController:UIViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Nav") {
            self.mainViewController = controller
            
            
            
        }
        if let controller = self.storyboard?.instantiateViewController(
            //    "SideTable")
            withIdentifier: "Nav2")
        {
            self.rightViewController = controller
        }
        super.awakeFromNib()
    }
    
    
    
    

    
    
}

extension UIViewController{
    func addAppSpecificRightBar(){
       self.addRightBarButtonWithImage(UIImage(named: "hambug")!)
    }
}




