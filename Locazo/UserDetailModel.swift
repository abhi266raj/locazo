//
//  UserDetailModel.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/17/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

class UserDetailModel: NSObject {
    static let sharedInstance = UserDetailModel()
    var cityName:String?
    var name:String?
    var phoneNumber:String?
    var suburbName:String?
    var houseNo:String?
    var email:String?
    var time:String?
    var date:String?
}
