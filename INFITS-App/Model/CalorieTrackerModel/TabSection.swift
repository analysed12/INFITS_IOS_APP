//
//  TabSection.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 26/02/23.
//

import SwiftUI
 

struct TabSection:Identifiable {
    var id = UUID()
    var day:String
    var week:String
    var month:String
    var Frequent:String
    var Recent:String
    var Favourites:String
    
    init(id: UUID = UUID(), day: String, week: String, month: String, Frequent: String, Recent: String, Favourites: String) {
        self.id = id
        self.day = day
        self.week = week
        self.month = month
        self.Frequent = Frequent
        self.Recent = Recent
        self.Favourites = Favourites
    }
  
}
