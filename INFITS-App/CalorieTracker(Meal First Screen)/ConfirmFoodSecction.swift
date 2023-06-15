//
//  ConfirmFoodSecction.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 11/05/23.
//

import SwiftUI

struct ConfirmFoodSecction: View {
    var todayBreakFastFoodArray:[TodayFoodList] =  TodayFoodDataList.todayBreakFastList
    @State private var showPopUp: Bool = false
    //Navigation
    @Binding var path : NavigationPath
    
    var body: some View {
        //Header Section
        ZStack {
            VStack{
                HStack(spacing: 5) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading,16)
                        .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255) .opacity(1))
                        .frame(width: 25, height: 25, alignment: .leading)
                }
//                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Breakfast")
                        .font(Font.custom("NATS 400", size: 35))
                        .foregroundColor(Color(red: 240 / 255, green: 163 / 255, blue: 68 / 255) .opacity(1))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                VStack {
                    Text("Confirm your food selection")
                        .font(Font.custom("NATS 400", size: 22))
                        .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00) .opacity(1))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    
                    
                    ScrollView(.vertical, showsIndicators: false){
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
                                        HStack {
                                            Text(FoodData.foodTitle)
                                                .font(Font.custom("NATS 400", size: 25))
                                                .frame(alignment: .leading)
                                            
                                            Image("delete")
                                                .resizable()
                                                .scaledToFill()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width:20, height:20, alignment: .trailing)
                                                .frame(maxWidth: .infinity, alignment:.trailing)
                                                .padding(.horizontal, 10)
                                        }
                                        HStack(spacing: 40) {
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
                                        HStack(spacing: 10) {
                                            
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
                                .swipeActions {
                                    Button {
                                        print("Buuton action")
                                    } label: {
                                        Text("Add to Meal Tracker")
                                            .font(Font.custom("NATS 400", size: 15))
                                            .frame(width: 155, height: 45)
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 255 / 255, green: 153 / 255, blue: 55 / 255),
                                                                                                   Color(red: 236 / 255, green: 255 / 255, blue: 120 / 255)]),
                                                                       startPoint: .topLeading,
                                                                       endPoint: .bottomTrailing))
                                            .clipShape(Rectangle())
                                            .cornerRadius(10)
                                            .shadow(color:Color(#colorLiteral(red: 0.58, green: 0.68, blue: 1.0, alpha: 0.3)), radius: 6, x: 0, y: 10)
                                        
                                    }//
                                    
                                }
                            }
                            .background(.white)
                            .padding(.horizontal, 30)
                            HStack {
                                Spacer()
                                Button {
                                    //Add to Meal Tracker action
                                } label: {
                                    Text("Add to Meal Tracker")
                                        .font(Font.custom("NATS 400", size: 15))
                                        .frame(width: 155, height: 45)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [
                                            Color(red: 255 / 255, green: 153 / 255, blue: 55 / 255),
                                            Color(red: 236 / 255, green: 255 / 255, blue: 120 / 255)
                                        ]),
                                                                   startPoint: .topLeading,
                                                                   endPoint: .bottomTrailing))
                                    
                                        .clipShape(Rectangle())
                                        .cornerRadius(10)
                                        .shadow(color:Color(#colorLiteral(red: 0.58, green: 0.68, blue: 1.0, alpha: 0.3)), radius: 6, x: 0, y: 10)
                                }
                                .padding(.horizontal)
                                .padding(.trailing, 20)
                            }
                        }
                    }
                    
                    //Message
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
                            print("Hello Helloooooo tapped!")
                        }) {
                            Text("The food items selected here with their calorie value will be added to the total calorie consumed. ")
                            
                                .font(Font.custom("NATS 400", size: 18))
                                .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255).opacity(1))
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255).opacity(1), lineWidth: 1)
                                )
                        }.padding(.bottom, 20)
                    }
                    Spacer()
                    VStack {
                        PopUpWindow(image: "Approval", message: "Breakfast Calories updated!", showPopUp: $showPopUp)
                    }
                    .animation(.spring())
                }
                
            }
        }
    }
}

struct ConfirmFoodSecction_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmFoodSecction(path: .constant(NavigationPath()))
    }
}
