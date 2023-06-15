//
//  CalenderHelper.swift
//  DietChart
//
//  Created by Rajni Banduni on 31/03/23.
//

import Foundation

class CalenderHelper {
    
    let calender = Calendar.current
    let dateFormatter = DateFormatter()
    
     
    
    //Month
    func monthYearString(_ date:Date)-> String {
        dateFormatter.dateFormat = "LLL yyyy"
        return dateFormatter.string(from: date)
    }
    
    
    func plusMonth(_ date:Date)-> Date {
        return calender.date(byAdding: .month, value: 1, to: date)!
    }
    
    func minusMonth(_ date:Date)-> Date {
        return calender.date(byAdding: .month, value: -1, to: date)!
    }
}
