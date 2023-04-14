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
    let gender:String
    let age:String
    let height:String
    let weight:String
    let verification:String
    let dietitianuserID:String?
     let location: String?
 
}

struct ResponseData: Codable {
    let status: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let clientuserID: String
    let dietitianuserID: JSONNull?
    let name, mobile, password, email: String
    let profilePhoto: String
    let location: JSONNull?
    let age, gender: String
    let plan: JSONNull?
    let verification, height, weight: String
    
    enum CodingKeys: String, CodingKey {

        case clientuserID = "clientuserID"
        case dietitianuserID = "dietitianuserID"
        case name = "name"
        case mobile = "mobile"
        case password = "password"
        case email = "email"
        case profilePhoto = "profilePhoto"
        case location = "location"
        case age = "age"
        case gender = "gender"
        case plan = "plan"
        case verification = "verification"
        case height = "height"
        case weight = "weight"
    }
    
}
 
class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

//struct ResponseData : Codable {
//    let clientuserID : String?
//    let dietitianuserID : String?
//    let name : String?
//    let mobile : String?
//    let password : String?
//    let email : String?
//    let profilePhoto : String?
//    let location : String?
//    let age : String?
//    let gender : String?
//    let plan : String?
//    let verification : String?
//    let height : String?
//    let weight : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case clientuserID = "clientuserID"
//        case dietitianuserID = "dietitianuserID"
//        case name = "name"
//        case mobile = "mobile"
//        case password = "password"
//        case email = "email"
//        case profilePhoto = "profilePhoto"
//        case location = "location"
//        case age = "age"
//        case gender = "gender"
//        case plan = "plan"
//        case verification = "verification"
//        case height = "height"
//        case weight = "weight"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        clientuserID = try values.decodeIfPresent(String.self, forKey: .clientuserID)
//        dietitianuserID = try values.decodeIfPresent(String.self, forKey: .dietitianuserID)
//        name = try values.decodeIfPresent(String.self, forKey: .name)
//        mobile = try values.decodeIfPresent(String.self, forKey: .mobile)
//        password = try values.decodeIfPresent(String.self, forKey: .password)
//        email = try values.decodeIfPresent(String.self, forKey: .email)
//        profilePhoto = try values.decodeIfPresent(String.self, forKey: .profilePhoto)
//        location = try values.decodeIfPresent(String.self, forKey: .location)
//        age = try values.decodeIfPresent(String.self, forKey: .age)
//        gender = try values.decodeIfPresent(String.self, forKey: .gender)
//        plan = try values.decodeIfPresent(String.self, forKey: .plan)
//        verification = try values.decodeIfPresent(String.self, forKey: .verification)
//        height = try values.decodeIfPresent(String.self, forKey: .height)
//        weight = try values.decodeIfPresent(String.self, forKey: .weight)
//    }
//
//}
