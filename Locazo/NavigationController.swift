//
//  NavigationController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/18/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
            var vcarray = self.viewControllers;
        
         if (type(of: viewController) == type(of: vcarray.last!)){
            return
        }
        
        
        
//        for abc in [1,2,3] {
//            
//        }
                for (index, controller) in  self.viewControllers.enumerated(){
                    if (type(of: viewController) == type(of: controller)){
                        vcarray.remove(at: index)
                        break;
                    }
                }
        self.viewControllers = vcarray;
        
            super.pushViewController(viewController, animated: animated);
            
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
