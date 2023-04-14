//
//  Constant.swift
//  Networking
//
//  Created by Rajni Banduni on 20/03/23.
//

import Foundation

//http://localhost:8080/infits/register_client.php
 
let baseUrl = "http://localhost:8080/infits"
let resgisterUrl = "\(baseUrl)/register_client.php"
let loginUrl = "\(baseUrl)/login_client.php"


enum APIError:Error {
    case custome(message:String)
}

typealias Handler = (Swift.Result<Any?, APIError>) -> Void

