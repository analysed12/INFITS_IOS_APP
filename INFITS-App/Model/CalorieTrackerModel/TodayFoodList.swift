//
//  TodayFoodList.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 12/04/23.
//

import Foundation

 
import Foundation


struct TodayFoodList:Identifiable {
    var id = UUID()
    var foodImage :  String
    var foodTitle :  String
    var totalKcal:String
    var fat:String
    var Protein:String
    var Carbs:String
    var quantityNumber:String
    var quantity:String
  
}

struct TodayFoodDataList {
     
    static var todayBreakFastList = [
        
        TodayFoodList(foodImage: "Frame-Donut", foodTitle: "Donut", totalKcal: "50 kcal", fat: "5.3 Fat", Protein: "6.3g Protein ", Carbs: "54 Carbs", quantityNumber: "1", quantity: "Regular"),
        TodayFoodList(foodImage: "Frame-pizza", foodTitle: "Pizza", totalKcal: "60 kcal", fat: "7.3 Fat", Protein: "3.3g Protein ", Carbs: "97 Carbs", quantityNumber: "2", quantity: "Small")
         
    ]
}

 
