//
//  SignUpViewModel.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 13/03/23.
//

import Foundation
import Combine

class SignUpViewModel: ObservableObject {
    
    @Published var fullName = ""
    @Published var userName = ""
    @Published var emailid = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    @Published var phoneno = ""
    
    @Published var isEmailValid = false
    @Published var isPasswordValid = false
    @Published var isconfirmPasswordValid = false
    @Published var isPhoneNoValid = false
    @Published var canSumbit = false
    
    private var cancellabelSet:Set<AnyCancellable> = []
    
//    Same use for password checking :- is passwor dsmae or not
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")
    let phonePredicate = NSPredicate(format: "SELF MATCHES %@", "^[0-9+]{0,1}+[0-9]{5,16}$")
//     least one uppercase, least one digit, least one lowercase, least one symbol, min 8 characters total
    let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,}$")
    
    init() {
        $emailid
            .map{emailid in
                return self.emailPredicate.evaluate(with: emailid)
            }
            .assign(to: \.isEmailValid, on: self)
            .store(in: &cancellabelSet)

        $phoneno
            .map{emailid in
                return self.phonePredicate.evaluate(with: emailid)
            }
            .assign(to: \.isPhoneNoValid, on: self)
            .store(in: &cancellabelSet)

        $password
            .map{emailid in
                return self.passwordPredicate.evaluate(with: emailid)
            }
            .assign(to: \.isPasswordValid, on: self)
            .store(in: &cancellabelSet)


        Publishers.CombineLatest($password, $confirmPassword)
            .map{password, confirmPassword in
                return password == confirmPassword
            }
            .assign(to: \.isconfirmPasswordValid, on: self)
            .store(in: &cancellabelSet)



    Publishers.CombineLatest4($isEmailValid, $isPasswordValid, $isconfirmPasswordValid, $isPhoneNoValid)
        .map{isEmailValid, isPasswordValid, isconfirmPasswordValid, isPhoneNoValid in
            return (isEmailValid && isPasswordValid && isconfirmPasswordValid && isPhoneNoValid)
        }
        .assign(to: \.canSumbit, on: self)
        .store(in: &cancellabelSet)
}

    var emailPromt:String{
        isEmailValid ?
        ""
        :
        "Enter a Valid Email"
    }

    var passwordPromt:String{
        isPasswordValid ?
        ""
        :
        "Minimum 8 characters at least 1 Alphabet, 1 Number and 1 Special Character"
    }

    var conformPasswordPromt:String{
        isconfirmPasswordValid ?
        ""
        :
        "Password Feild To not match"
    }

    var phoneNumberPromt:String{
        isPhoneNoValid ?
        ""
        :
        "Enter a valid Phone Number"
    }


    func login(){
        print("run sucess")
    }
    
    
    func checkDetails(fullName: String, username:String, password:String, confirmPassword:String, phone_number: String,email:String) {
            
        let body: [String: Any] = ["data": ["fullName": fullName, "username": userName, "password":password, "confirmPassword":confirmPassword,"phone_number": phone_number, "Email":email]]
                    
            let jsonData = try? JSONSerialization.data(withJSONObject: body)
                    
            let url = URL(string: "http://localhost:8080/login_client.php")!
            var request = URLRequest(url: url)
            
            request.httpMethod = "POST"
            
            request.setValue("\(String(describing: jsonData?.count))", forHTTPHeaderField: "Content-Length")
//            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            request.httpBody = jsonData

            print(body)
            print(jsonData)
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    print(error?.localizedDescription ?? "No data")
                    return
                }

                let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
                if let responseJSON = responseJSON as? [String: Any] {
                    print(responseJSON)
                }
            }

            task.resume()
        }
    
//    func isValidPhone(phone: String) -> Bool {
//            let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
//            let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
//            return phoneTest.evaluate(with: phone)
//        }
//
//    func isValidEmail(email: String) -> Bool {
//            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//            return emailTest.evaluate(with: email)
//        }
//
//    func isValidPassword() -> Bool {
//        // least one uppercase,
//        // least one digit
//        // least one lowercase
//        // least one symbol
//        //  min 8 characters total
//         let passwordRegx = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$"
//        let passwordCheck = NSPredicate(format: "SELF MATCHES %@",passwordRegx)
//        return passwordCheck.evaluate(with: password)
//
//    }
////
//    func getMissingValidation(str: String) -> [String] {
//        var errors: [String] = []
//        if(!NSPredicate(format:"SELF MATCHES %@", ".*[A-Z]+.*").evaluate(with: str)){
//            errors.append("least one uppercase")
//        }
//
//        if(!NSPredicate(format:"SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: str)){
//            errors.append("least one digit")
//        }
//
//        if(!NSPredicate(format:"SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: str)){
//            errors.append("least one symbol")
//        }
//
//        if(!NSPredicate(format:"SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: str)){
//            errors.append("least one lowercase")
//        }
//
//        if(str.count < 8){
//            errors.append("min 8 characters total")
//        }
//        return errors
//    }
}
 



