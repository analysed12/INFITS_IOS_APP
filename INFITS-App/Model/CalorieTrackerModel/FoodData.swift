//
//  FoodData.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 23/02/23.
//

import Foundation


struct FoodData:Identifiable {
    var id = UUID()
    var foodImage :  String
    var foodTitle :  String
    var totalKcal:String
    var roti:String
    var totalGrm:String
  
}

struct FoodDataList {
    
    static var frequentList = [
        
         
        FoodData(foodImage: "Hotdog", foodTitle: "Hotdog", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "pizza", foodTitle: "Pizza", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "Cake", foodTitle: "Cake", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
         
        FoodData(foodImage: "Donut", foodTitle: "Donut", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "popcorn", foodTitle: "popcorn", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "cookies", foodTitle: "Cookies", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "Cake", foodTitle: "Cake", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
         
        FoodData(foodImage: "Donut", foodTitle: "Donut", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g")
        
    ]
    
    static var recentlist = [
        
        FoodData(foodImage: "Donut", foodTitle: "Donut", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "Cake", foodTitle: "Cake", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
         
        FoodData(foodImage: "cookies", foodTitle: "Cookies", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "Hotdog", foodTitle: "Hotdog", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "pizza", foodTitle: "Pizza", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "Cake", foodTitle: "Cake", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
         
        FoodData(foodImage: "Donut", foodTitle: "Donut", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "popcorn", foodTitle: "popcorn", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g")
        
    ]
    
    
    static var favouriteslist = [
        
        
        FoodData(foodImage: "cookies", foodTitle: "Cookies", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "Donut", foodTitle: "Donut", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
         
        FoodData(foodImage: "Hotdog", foodTitle: "Hotdog", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "pizza", foodTitle: "Pizza", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        FoodData(foodImage: "Cake", foodTitle: "Cake", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
         
       
        FoodData(foodImage: "popcorn", foodTitle: "popcorn", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        
        
        FoodData(foodImage: "Cake", foodTitle: "Cake", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
         
        FoodData(foodImage: "Donut", foodTitle: "Donut", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g")
        
    ]
    
    static var todayBreakFastList = [
        FoodData(foodImage: "Frame-Donut", foodTitle: "Donut", totalKcal: "50 kcal", roti: "1 Roti", totalGrm: "10g"),
        FoodData(foodImage: "Frame-pizza", foodTitle: "Pizza", totalKcal: "90 kcal", roti: "2 Roti", totalGrm: "100g")
    
    ]
}

 
