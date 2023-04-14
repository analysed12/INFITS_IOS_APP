//
//  TodayBreakFast.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct TodayBreakFast: View {
    var todayBreakFastFoodArray:[TodayFoodList] =  TodayFoodDataList.todayBreakFastList
    @State private var showPopUp: Bool = false
    
    
    var body: some View {
        //Header Section
        ZStack{
            VStack{
                HStack(spacing: 5) {
                    Button(action: {
                        
                    }) {
                        Image("Calorie-prev")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading, 15)
                            .frame(width: 25, height: 25, alignment: .leading)
                    }
                    
                    Text("Today’s Breakfast")
                        .font(Font.custom("NATS 400", size: 35))
                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255) .opacity(1))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                VStack {
                        ForEach(todayBreakFastFoodArray, id: \.id) { FoodData in
                            ZStack {
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width - 30, height: 135)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                                
                                HStack {
                                    Image(FoodData.foodImage)
                                        .resizable()
                                        .scaledToFill()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width:95, height:95, alignment: .leading)
                                        .padding(.horizontal, 10)
                                    
                                    VStack(alignment: .leading) {
                                        Text(FoodData.foodTitle)
                                            .font(Font.custom("NATS 400", size: 25))
                                            .frame(alignment: .leading)
                     
                                        HStack(spacing: 40){
                                            VStack(alignment: .leading){
                                                Text(FoodData.totalKcal)
                                                    .font(Font.custom("NATS 400", size: 15))
                                                    .padding(.vertical, 1)
                                                Text(FoodData.Protein)
                                                    .font(Font.custom("NATS 400", size: 15))
                                            }
                                            
                                            VStack(alignment: .leading){
                                                Text(FoodData.fat)
                                                    .font(Font.custom("NATS 400", size: 15))
                                                    .padding(.vertical, 1)
                                                Text(FoodData.Carbs)
                                                    .font(Font.custom("NATS 400", size: 15))
                                            }
                                        }
                                        
                                        HStack(spacing: 10){
                                            
                                            Text(FoodData.quantityNumber)
                                                .font(Font.custom("NATS 400", size: 15))
                                            Circle()
                                                .frame(width: 4, height: 4)
                                            Text(FoodData.quantity)
                                                .font(Font.custom("NATS 400", size: 15))
                                         }
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                }
                                .padding(.vertical, 20)
                            }
                            .background(.white)
                            .padding(.horizontal, 30)
                        }
                   
                    VStack {
                        Image("Vector")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20, height: 20)
                             .padding(.horizontal, 20)
                             .padding(.top, 20)
                             .padding(.bottom, 15)
                         
                        Button(action: {
                            print("Hello button tapped!")
                        }) {
                            Text("The food items selected here are added to the meal tracker and the calorie value of each food item is added to the total calorie consumed. ")
                                 
                                .font(Font.custom("NATS 400", size: 18))
                                .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255).opacity(1))
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255).opacity(1), lineWidth: 1)
                                )
                        }
                    }
                    Spacer()
                    VStack {
                        PopUpWindow(image: "Approval", message: "Meal Tracker and Breakfast Calories updated!", showPopUp: $showPopUp)
                     }
                     .animation(.spring())
                    }

            }
        }
    }
}

struct TodayBreakFast_Previews: PreviewProvider {
    static var previews: some View {
        TodayBreakFast()
    }
}
