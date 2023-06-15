//
//  FoodList.swift
//  DietChart
//
//  Created by Rajni Banduni on 24/03/23.
//

import Foundation

struct DietChartFoodList:Identifiable {
    var id = UUID()
    var foodImage :  String
    var foodTitle :  String
    var foodTiming:String
    
  
}

//struct DietChartFoodTitle:Identifiable {
//    var id: ObjectIdentifier
//    var foodTitle:String
//}

struct DietChartFoodDataList {
 
    
    static var DietChartBreakfastList = [
                 
        DietChartFoodList(foodImage: "HoneyPancake", foodTitle: "Honey Pancake", foodTiming: "07:00am"),
        
        DietChartFoodList(foodImage: "coffee", foodTitle: "Coffee", foodTiming: "07:30am")
        
    ]
    
    static var DietChartLunchList = [
        
        DietChartFoodList(foodImage: "chickensteak", foodTitle: "Chicken Steak", foodTiming: "01:00pm"),

        DietChartFoodList(foodImage: "glass-of-milk 1", foodTitle: "Milk", foodTiming: "01:20pm")
        
    ]
    
    
    static var DietChartSnacksList = [
        
        DietChartFoodList(foodImage: "orange-snacks", foodTitle: "Orange", foodTiming: "04:30pm"),

        DietChartFoodList(foodImage: "applepie", foodTitle: "Apple Pie", foodTiming: "04:40pm")
        
    ]
    
    static var DietChartDinnerList = [
        
        DietChartFoodList(foodImage: "salad", foodTitle: "Salad", foodTiming: "07:10pm"),

        DietChartFoodList(foodImage: "oatmeal", foodTitle: "Oatmeal", foodTiming: "08:10pm")
        
    ]
}

 
