//
//  UserInfo.swift
//  DealTyme
//
//  Created by Ali Apple on 11/01/2019.
//  Copyright © 2019 Ali Apple. All rights reserved.
//

import Foundation

class vendorInfo: NSObject{
    static let sharedInstance = vendorInfo()
    var vid: Int?
    var name: String = ""
    var password: String = ""
    var phone: Int?
    var email: String = ""
    var businessName: String = ""
    var businessType: String = ""
    var cType: String = ""
    var isVerify: Int?
    var token: String?
    var vCode: String?
    var city: String = ""
    var state: String = ""
    var zip: String = ""
    var country: String = ""
    var address: String = ""
    var status: Int?
}
