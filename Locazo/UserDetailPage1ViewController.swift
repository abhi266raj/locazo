//
//  UserDetailPage1ViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/12/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class UserDetailPage1ViewController: BaseViewController {

    @IBOutlet weak var cityName: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    
    var model = UserDetailModel.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.updateDataFromModel()
    }
    
    
   
    
    
    func updateDataFromModel(){
        if let cityName = model.cityName{
            self.cityName.text = cityName;
        }
        
        if let name = model.name{
            self.name.text = name;
        }
        
        if let phoneNumber = model.phoneNumber{
            self.phoneNumber.text = phoneNumber
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        model.phoneNumber = self.phoneNumber.text
        model.cityName = self.cityName.text
        model.name = self.name.text
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
//     overide func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        
////         Get the new view controller using segue.destinationViewController.
////         Pass the selected object to the new view controller.
//    }
    

}
