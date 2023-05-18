//
//  WaterTrackerView.swift
//  WaterTracker
//
//  Created by utkrisht chauhan on 02/05/23.
//

import SwiftUI

struct WaterTrackerView: View {
    @State var waterLevel = 0
    @State var goal = 400
    @State var goalAchieved = 0
    @State var setGoal:Bool = false
    @State var isSeleced:Bool = false
    @State var glassQuantity: Int = 250
    @State var glassDrank: Int = 0
    @State var goalReachPercentage: Int = 0
    
    
    var body: some View {
        //        NavigationView {
        ZStack {
            LinearGradient(colors: [Color(red: 0.15, green: 0.56, blue: 1.00).opacity(0.8),Color(red: 0.38, green: 0.44, blue: 1.00).opacity(0.8)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        //                        isShowing.toggle()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    }
                    
                    Text("WATER TRACKER")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .offset(x:UIScreen.main.bounds.width/8)
                    Spacer()
                }
                .padding(.horizontal,20)
                HStack {
                    //                        Spacer(minLength: 20)
                    ZStack {
                        Image("Bottle 1")
                            .resizable()
                            .frame(width: 110, height: 275)
                        Image("Rectangle 5951")
                            .offset(x: 0, y: 20)
                            .overlay(VStack {
                                if (waterLevel == 0){
                                    Image("")
                                }
                                else if(waterLevel == 1){
                                    ZStack {
                                        Image("Water 1")
                                            .resizable()
                                            .frame(width: 83, height: 90)
                                        .offset(x: 0, y: 85)
                                        Text("\(goalAchieved) ml")
                                            .foregroundColor(Color(red: -0.005, green: 0.319, blue: 0.67))
                                            .offset(x: 0, y: 60)
                                    }
                                }
                                else if(waterLevel==2){
                                    ZStack {
                                        Image("Water 2")
                                            .resizable()
                                            .frame(width: 83, height: 120)
                                        .offset(x: 0, y: 70)
                                        Text("\(goalAchieved) ml")
                                            .foregroundColor(Color(red: -0.005, green: 0.319, blue: 0.67))
                                            .offset(x: 0, y: 35)
                                    }
                                }
                                else if(waterLevel==3){
                                    ZStack {
                                        Image("Water 3")
                                            .resizable()
                                            .frame(width: 83, height: 150)
                                        .offset(x: 0, y: 55)
                                        Text("\(goalAchieved) ml")
                                            .foregroundColor(Color(red: -0.005, green: 0.319, blue: 0.67))
                                            .offset(x: 0, y: 10)
                                    }
                                }
                                else if(waterLevel==4){
                                    ZStack {
                                        Image("Water 4")
                                            .resizable()
                                            .frame(width: 83, height: 200)
                                        .offset(x: 0, y: 30)
                                        Text("\(goalAchieved) ml")
                                            .foregroundColor(Color(red: -0.005, green: 0.319, blue: 0.67))
                                            .offset(x: 0, y: -30)
                                    }
                                }
                            })
                        
                    }
                    .offset(x:24)
                    Spacer()
                        .frame(width: 20)
                    VStack{
                        Button {
                            goalAchieved += glassQuantity
                            //                            if (waterLevel != 4){
                            if(goal / 4  >= goalAchieved){
                                waterLevel = 1
                            }
                            else if(goal / 2  >= goalAchieved){
                                waterLevel = 2
                            }
                            else if(goal > goalAchieved){
                                waterLevel = 3
                            }
                            else {
                                waterLevel = 4
                            }
                            //                            }
                            goalReachPercentage = (goalAchieved * 100) / goal
                            
                        } label: {
                            Image("plus")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        Spacer()
                            .padding(.bottom,140)
                        Button {
                            if (goalAchieved != 0){
                                goalAchieved -= glassQuantity
                            }
                            //                            if (waterLevel != 0){
                            if(goalAchieved == 0){
                                waterLevel = 0
                            }
                            else if(goal / 4  >= goalAchieved){
                                waterLevel = 1
                            }
                            else if(goal / 2  >= goalAchieved){
                                waterLevel = 2
                            }
                            else if(goal > goalAchieved){
                                waterLevel = 3
                            }
                            else {
                                waterLevel = 4
                            }
                            //                            }
                            goalReachPercentage = (goalAchieved * 100) / goal
                        } label: {
                            Image("minus")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                    }
                    .frame(height: 180)
                    .offset(y:20)
                }
                //                    Spacer()
                Button {
                    self.setGoal.toggle()
                } label: {
                    ZStack {
                        Capsule()
                            .frame(width: 100, height: 40)
                            .foregroundColor(.white)
                            .shadow(color: .blue, radius: 1,x:2,y:2)
                        Text("Set Goal")
                    }
                }
                
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 2.5)
                    .frame(width: 265, height: 135)
                    .foregroundColor(.white.opacity(0))
                    .overlay(
                        VStack {
                            Text("\(goalReachPercentage)%")
                                .foregroundColor(.white)
                                .font(.system(size: 37))
                                .bold()
                            Text("Goal Reached")
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                            Spacer()
                                .frame(height: 20)
                            Text(String(goalAchieved)+"ml consumed out of "+String(goal)+"ml")
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                            
                        })
                    .padding(.vertical, 20)
                
                PastActivityView(col: Color(red: 0.46, green: 0.65, blue: 1.00))
                    .cornerRadius(15)
                    .ignoresSafeArea()
                
                    .sheet(isPresented: .constant(false)) {
                        PastActivityView(col: Color(red: 0.46, green: 0.65, blue: 1.00))
                            .presentationDetents([.large])
                        
                    }
            }
            
            if setGoal {
                SetWaterGoalView(setGoal: $setGoal, isSeleced: $isSeleced,goal:$goal,glassQuantity: $glassQuantity)
                
            }
        }
        //        }
    }
}

struct WaterTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        WaterTrackerView()
    }
}
