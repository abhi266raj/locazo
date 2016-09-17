//
//  UserDetailPage2Controller.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/12/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class UserDetailPage2Controller: BaseViewController {

    
    
    @IBOutlet weak var suburbName: UITextField!
    
    @IBOutlet weak var houseNumber: UITextField!
    
    @IBOutlet weak var emailAddress: UITextField!
    
    @IBOutlet weak var date: UITextField!
    
    
    @IBOutlet weak var time: UITextField!
    
    
    var model = UserDetailModel.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.updateDataFromModel()
    }


    func updateDataFromModel(){
        
        if let text = model.suburbName{
            self.suburbName.text = text
        }
        if let text = model.houseNo{
            self.houseNumber.text = text
        }
        if let text = model.date{
            self.date.text = text
        }
        if let text = model.time{
            self.time.text = text
        }
        if let text = model.email{
            self.emailAddress.text = text
        }

    
}

    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        model.suburbName = self.suburbName.text
        model.houseNo =  self.houseNumber.text
        model.date = self.date.text
        model.time = self.time.text
        model.email = self.emailAddress.text
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
