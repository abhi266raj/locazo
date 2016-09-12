//
//  PageViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/11/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController , UIPageViewControllerDataSource {
    
    
    
    
    // Initialize it right away here
    private let contentImages = ["home",
                                 "1",
                                 "2",
                                 "3",
                                 "4"];
    var imageViewController:[ImageViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
       
        self.setContentVC();
        self.setViewControllers([imageViewController[0]], direction: .Forward, animated: true, completion: nil)

        //self.setV
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setContentVC(){
        for (index,imageName) in contentImages.enumerate(){
            let vc = ImageViewController.init()
            vc.imageView.image  = UIImage(named:imageName);
            vc.imageIndex = index;
            imageViewController.append(vc);
        }
    }
    
     func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?{
        //if let  viewController
        if let vc = viewController as? ImageViewController{
            if (vc.imageIndex == 0){
                return nil;
            }else{
                if ((vc.imageIndex) < imageViewController.count ){
                return  imageViewController[vc.imageIndex-1]
            }
                return nil
        }
           
    }
         return nil;
    }
   
     func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?{
               
        
        if let vc = viewController as? ImageViewController{
            if (vc.imageIndex == imageViewController.count - 1){
                return nil;
            }else{
                if ((vc.imageIndex) >= 0 ){
                    return  imageViewController[vc.imageIndex+1]
                }
                return nil
            }
            
        }
    
        return nil;
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
