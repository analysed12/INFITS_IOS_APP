//
//  String+Extensions.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 14/03/23.
//

import Foundation

extension String{
    var isValidEmail: Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPredicate.evaluate(with: self)
    }
    
    var isValidPhone: Bool {
            let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
            let phonePredicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
            return phonePredicate.evaluate(with: self)
        }
}



