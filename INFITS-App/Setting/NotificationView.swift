//
//  NotificationView.swift
//  SettingsPages
//
//  Created by Rajni Banduni on 20/02/23.
//

import SwiftUI

struct NotificationView: View {
    @State private var stepTracker:Bool = false
    @State private var waterTracker:Bool = false
    @State private var sleepTracker:Bool = false
    @State private var heartRateTracker:Bool = false
    @State private var weightTracker:Bool = false
    @State private var calorieTracker:Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment:.leading) {
                Text("NOTIFICATIONS")
                    .font(Font.custom("NATS 400", size: 38))
                    .fontWeight(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    .padding(30)
                
                VStack {
                    
                    
                    //Step Tracker
                    ZStack {
                        HStack {
                            Image("StepTracker")
                                .padding(10)
                                .background(Color(red: 255 / 255, green: 241 / 255, blue: 214 / 255).opacity(0.5))
                                .clipShape(Circle())
                                .padding(.horizontal, 6)
                            
                            Text("Step Tracker")
                                .font(Font.custom("NATS 400", size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            
                            if stepTracker {
                                ToggleView(isOn: $stepTracker) {
                                    Color(red: 72 / 255, green: 190 / 255, blue: 2 / 255) .opacity(1)
                                }button: {
                                    Color(red: 235 / 255, green: 236 / 255, blue: 240 / 255) .opacity(1)
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                            else {
                                ToggleView(isOn: $stepTracker) {
                                    Color(red: 205 / 255, green: 205 / 255, blue: 205 / 255) .opacity(1)
                                }button: {
                                    Color.white
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                        }
                        
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                    }
                    
                    //Water Tracker
                    ZStack {
                        HStack {
                            Image("WaterTracker")
                                .padding(10)
                                .background(Color(red: 82 / 255, green: 164 / 255, blue: 255 / 255).opacity(0.15))
                                .clipShape(Circle())
                                .padding(.horizontal, 10)
                            
                            Text("Water Tracker")
                                .font(Font.custom("NATS 400", size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            if waterTracker {
                                ToggleView(isOn: $waterTracker) {
                                    Color(red: 72 / 255, green: 190 / 255, blue: 2 / 255) .opacity(1)
                                }button: {
                                    Color(red: 235 / 255, green: 236 / 255, blue: 240 / 255) .opacity(1)
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                            else {
                                ToggleView(isOn: $waterTracker) {
                                    Color(red: 205 / 255, green: 205 / 255, blue: 205 / 255) .opacity(1)
                                }button: {
                                    Color.white
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                        }
                    }
                    
                    .padding(.horizontal, 20)
                    
                    //Sleep Tracker
                    ZStack {
                        HStack {
                            Image("SleepTracker")
                                .padding(10)
                                .background(Color(red: 125 / 255, green: 93 / 255, blue: 230 / 255) .opacity(0.15))
                                .clipShape(Circle())
                                .padding(.horizontal, 6)
                                .padding(.trailing, 5)
                            Text("Sleep Tracker")
                                .font(Font.custom("NATS 400", size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            
                            if sleepTracker {
                                ToggleView(isOn: $sleepTracker) {
                                    Color(red: 72 / 255, green: 190 / 255, blue: 2 / 255) .opacity(1)
                                }button: {
                                    Color(red: 235 / 255, green: 236 / 255, blue: 240 / 255) .opacity(1)
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                            else {
                                ToggleView(isOn: $sleepTracker) {
                                    Color(red: 205 / 255, green: 205 / 255, blue: 205 / 255) .opacity(1)
                                }button: {
                                    Color.white
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                        }
                    }
                    
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    
                    //Heart Rate Tracker
                    ZStack {
                        HStack {
                            Image("HeartRateTracker")
                                .padding(10)
                                .background(Color(red: 250 / 255, green: 132 / 255, blue: 23 / 255) .opacity(0.15))
                                .clipShape(Circle())
                                .padding(.horizontal, 6)
                                .padding(.trailing, 5)
                            
                            Text("Heart Rate Tracker")
                                .font(Font.custom("NATS 400", size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            
                            if heartRateTracker {
                                ToggleView(isOn: $heartRateTracker) {
                                    Color(red: 72 / 255, green: 190 / 255, blue: 2 / 255) .opacity(1)
                                }button: {
                                    Color(red: 235 / 255, green: 236 / 255, blue: 240 / 255) .opacity(1)
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                            else {
                                ToggleView(isOn: $heartRateTracker) {
                                    Color(red: 205 / 255, green: 205 / 255, blue: 205 / 255) .opacity(1)
                                }button: {
                                    Color.white
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                        }
                    }
                    
                    .padding(.horizontal, 20)
                    
                    //Weight Tracker
                    ZStack {
                        HStack {
                            Image("WeightTracker")
                                .padding(10)
                                .background(Color(red: 250 / 255, green: 132 / 255, blue: 23 / 255).opacity(0.15))
                                .clipShape(Circle())
                                .padding(.horizontal, 8)
                            
                            Text("Weight Tracker")
                                .font(Font.custom("NATS 400", size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            
                            if weightTracker {
                                ToggleView(isOn: $weightTracker) {
                                    Color(red: 72 / 255, green: 190 / 255, blue: 2 / 255) .opacity(1)
                                }button: {
                                    Color(red: 235 / 255, green: 236 / 255, blue: 240 / 255) .opacity(1)
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                            else {
                                ToggleView(isOn: $weightTracker) {
                                    Color(red: 205 / 255, green: 205 / 255, blue: 205 / 255) .opacity(1)
                                }button: {
                                    Color.white
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                        }
                    }
                    
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    
                    //Calorie Tracker
                    
                    ZStack {
                        HStack {
                            Image("CalorieTracker")
                                .padding(10)
                                .background(Color(red: 250 / 255, green: 132 / 255, blue: 23 / 255).opacity(0.15))
                                .clipShape(Circle())
                                .padding(.horizontal, 9)
                                .padding(.vertical, 0)
                            
                            Text("Calorie Tracker")
                                .font(Font.custom("NATS 400", size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            
                            if calorieTracker {
                                ToggleView(isOn: $calorieTracker) {
                                    Color(red: 72 / 255, green: 190 / 255, blue: 2 / 255) .opacity(1)
                                }button: {
                                    Color(red: 235 / 255, green: 236 / 255, blue: 240 / 255) .opacity(1)
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                            else {
                                ToggleView(isOn: $calorieTracker) {
                                    Color(red: 205 / 255, green: 205 / 255, blue: 205 / 255) .opacity(1)
                                }button: {
                                    Color.white
                                }
                                .frame(width: 60, height: 30)
                                .padding(.trailing, 20)
                            }
                        }
                    }
                    
                    .padding(.horizontal, 20)
                }
                
                
                Spacer()
                
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
