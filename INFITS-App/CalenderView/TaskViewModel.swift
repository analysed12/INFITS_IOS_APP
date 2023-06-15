//
//  TaskViewModel.swift
//  DietChart
//
//  Created by Rajni Banduni on 31/03/23.
//

import SwiftUI

class TaskViewModel : ObservableObject{
    //Current WeekDay
    @Published var currentWeek:[Date] = []
    //curretn day
    @Published var currentDay:Date = Date()
    
    init() {
        fetchCurrentWeek()
    }
    
    
    func fetchCurrentWeek() {
        let today = Date()
        let calender = Calendar.current
        let week = calender.dateInterval(of: .weekOfMonth, for: today)
         
        guard let firstWeekDay = week?.start else {
            return
        }
        (1...7).forEach { day in
            if let weekday  = calender.date(byAdding: .day, value: day, to: firstWeekDay) {
                currentWeek.append(weekday)
            }
        }
    }
    
    //Extracting Date
    func extractDate(date:Date, format:String) -> String  {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    //Checking if current date is today
    
    func isToday(date:Date) -> Bool{
        let calender = Calendar.current
        return calender.isDate(currentDay, inSameDayAs: date)
    }
    
}
