//
//  RegisterModel.swift
//  Networking
//
//  Created by Rajni Banduni on 20/03/23.
//

import Foundation

struct RegisterModel:Encodable {
    let email: String
    let password: String
    let userID: String
    let name: String
    let phone: String
    let age:String
    let gender:String
    let height:String
    let weight:String
    let verification:String
    
}
