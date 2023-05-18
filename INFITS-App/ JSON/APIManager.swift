//
//  APIManager.swift
//  Networking
//
//  Created by Rajni Banduni on 20/03/23.
//

import Foundation
import Alamofire

class APIManager {
     var error = ""
    
    static let shareInstance = APIManager()
    
    func getSignupData(register:RegisterModel, completionHandler: @escaping(Bool) -> ()){
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
                                
                                if response.response?.statusCode == 200{
                                    completionHandler(true)
                                }else {
                                    completionHandler(false)
                                }
                            }catch{
                                print(error.localizedDescription)
                                completionHandler(false)
                            }
                        case.failure(let error):
                            print(error.localizedDescription)
                            completionHandler(false)
                        }
        }
    }
    
    
    func callingLoginApi(login:LoginModel, completionHandler: @escaping Handler) {
       let header:HTTPHeaders = [
           .contentType("application/x-www-form-urlencoded")
       ]
              
       AF.request(loginUrl, method: .post, parameters: login, encoder: JSONParameterEncoder.default, headers: header).response { response in
           debugPrint(response)
           switch response.result {
           case .success(let data):
               do {
                   
                   let json  = try JSONDecoder().decode(ResponseData.self, from: data!)
                   print(json)

                   if response.response?.statusCode == 200 {
                       completionHandler(.success(json))
                   } else {
                       completionHandler(.failure(.custome(message: "Please check your net connectivity. ")))
                   }
               } catch {
                   print(error.localizedDescription)
                   completionHandler(.failure(.custome(message: "Please try again. ")))
                   self.error = "Please Enter a Correct Data"
               }
           case.failure(let error):
               print(error.localizedDescription)
               completionHandler(.failure(.custome(message: "Please try again. ")))
           }
           
       }
   }
   
   
  
    //Testing
    func testAPi(login:LoginModel, completionHandler: @escaping Handler) {
        
        let header:HTTPHeaders = [
            .contentType("application/x-www-form-urlencoded")
        ]
        
        AF.request(loginUrl, method: .post, parameters: login, encoder: JSONParameterEncoder.default, headers: header).response { (response) in
                print(response.result)
            debugPrint(response)
                switch response.result {
                case .success(let data):
                    let decoder = JSONDecoder()
                    do{
                        let users = try decoder.decode(loginResponseModel.self, from:data!)
                        print("Users list :", users)
                        
////                   let json  = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
                        //                   print(json)
                        //
                        
                        
//                        let data = response.value
//                        let jsonData = try JSONSerialization.jsonObject(with: data!!, options: .fragmentsAllowed)
//
//                         print(data)
//                        print(jsonData)

                    } catch{
                        print(error.localizedDescription)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                
                }
            }
    }
    
    
   
    
}

 
