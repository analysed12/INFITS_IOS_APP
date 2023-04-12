//
//  APIManager.swift
//  Networking
//
//  Created by Rajni Banduni on 20/03/23.
//

import Foundation
import Alamofire

class APIManager {
    
    static let shareInstance = APIManager()
    
    func getSignupData(register:RegisterModel){
        let header:HTTPHeaders = [
            .contentType("application/json")
        ]
        
        AF.request(resgisterUrl, method: .post, parameters: register, encoder: JSONParameterEncoder.default, headers: header).response { response in
            debugPrint(response)
            switch response.result {
            case .success(let data):
                do{
                    let json  = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                }catch{
                  
                }
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getLoginData(){
        
    }
}
