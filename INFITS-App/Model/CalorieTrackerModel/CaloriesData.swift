//
//  CaloriesData.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 24/02/23.
//

 
import Foundation


struct CaloriesData:Identifiable {
    var id = UUID()
    var activitieImage:String
    var activitiesTitle:String
    var activitiesTiming:String
    var KcalImage:String
    var Kcal:String
    var time:String
  
}

struct CaloriesDataList {
    
    static var activitieList = [
        
        CaloriesData(activitieImage: "Running", activitiesTitle: "Running", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        CaloriesData(activitieImage: "Walking", activitiesTitle: "Walking", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        CaloriesData(activitieImage: "Cycling", activitiesTitle: "Cycling", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        
        CaloriesData(activitieImage: "Running", activitiesTitle: "Running", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        CaloriesData(activitieImage: "Walking", activitiesTitle: "Walking", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        CaloriesData(activitieImage: "Cycling", activitiesTitle: "Cycling", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        
        CaloriesData(activitieImage: "Running", activitiesTitle: "Running", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        CaloriesData(activitieImage: "Walking", activitiesTitle: "Walking", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m."),
        
        CaloriesData(activitieImage: "Cycling", activitiesTitle: "Cycling", activitiesTiming: "00:18:52", KcalImage: "Calories", Kcal: "452 kcal", time: "11:10 a.m.")
        
    ]
    
    
    
    
}

 

