//
//  LoginModel.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 20/03/23.
//

import Foundation

struct LoginModel: Encodable {
    let clientuserID: String
    let dietitianuserID:String
    let name: String
    let mobile:String
    let password:String
    let email:String
    let profilePhoto:String
    let location:String
    let age:String
    let gender:String
    let plan:String
    let verification:String
    let height:String
    let weight:String
}
