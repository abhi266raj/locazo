//
//  CustomerReviewPageViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/17/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class CustomerReviewPageViewController: UIPageViewController , UIPageViewControllerDataSource {

    
    
     fileprivate var contentImages = ["truested",
                                                     "truested",
                                                     "truested"];
    

    var imageViewController:[CustomerReviewViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        self.setContentVC();
        self.setViewControllers([imageViewController[0]], direction: .forward, animated: true, completion: nil)
       
        
        //self.setV
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setContentVC(){
        for (index,imageName) in contentImages.enumerated(){
            let vc =
                CustomerReviewViewController(nibName: "CustomerReviewViewController", bundle: nil)
            vc.imageName  = imageName;
            vc.imageIndex = index;
            imageViewController.append(vc);
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        //if let  viewController
        if let vc = viewController as? CustomerReviewViewController{
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
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        
        
        if let vc = viewController as? CustomerReviewViewController{
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
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int{
        return contentImages.count
    }
    
    
    
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int{
        return 0;
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
