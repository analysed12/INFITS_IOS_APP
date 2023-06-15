//
//  PastActivityTrackerList.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 10/06/23.
//

import SwiftUI

struct PastActivityTrackerList:Identifiable {
    var id = UUID()
    var activityImage: String
    var activityName :  String
    var activityTime :  String
    var activityCalulationTime:String
    var activityKcal : String
  
}

 
struct PastActivityTrackerDataList {
 
    
    static var ActivityTrackerList = [
        PastActivityTrackerList(activityImage:"person-biking", activityName: "Cycling", activityTime: "11:10 a.m.", activityCalulationTime: "00:18:52", activityKcal: "452 kcal"),
        PastActivityTrackerList(activityImage:"man-running", activityName: "Running", activityTime: "18:10 a.m.", activityCalulationTime: "00:18:52", activityKcal: "452 kcal"),
        
        PastActivityTrackerList(activityImage: "man-walking", activityName: "Walking", activityTime: "28:10 a.m.", activityCalulationTime: "00:18:52", activityKcal: "452 kcal")
    ]
     
}
 
