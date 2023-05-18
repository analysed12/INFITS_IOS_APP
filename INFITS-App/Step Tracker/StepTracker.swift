//
//  StepsTrackerView.swift
//  Infits
//
//  Created by utkrisht chauhan on 26/01/23.
//

import SwiftUI

struct StepTracker: View {
    @State var steps: Int = 0
    @State var goal: Int = 160
    @State var calories: Int = 0
    @State var AvgSpeed: Int = 0
    @State var distance: Int = 0
//    @State var path : NavigationPath?
    @Binding var path : NavigationPath
    
//    private var healthStore: HealthStore?
    var healthStore: HealthStore?
    
//    init() {
//        healthStore = HealthStore()
//        self.path = NavigationPath()
//    }
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color(red: 1.00, green: 0.50, blue: 0.42),Color(red: 1.00, green: 0.36, blue: 0.00)], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                    .toolbar  {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                //isShowing.toggle()
                            }) {
                                Image("backArrow")
                                    .renderingMode(.original)
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            Text("STEPS").font(.system(size: 30))
                                .bold()
                                .foregroundColor(.white)
                        }
                    }
                
                VStack {
                    ZStack {
                        Circle()
                            .trim(from:0, to: 0.6)
                            .stroke(.white.opacity(0.3),lineWidth: 4)
                            .frame(width: 280)
                            .rotationEffect(.init(degrees: 145))
                        
                        let num = Double(steps)/Double(goal)*0.6
                        
                        Circle()
                            .trim(from:0, to: num > 0.6 ? 0.6 : num)
                            .stroke(.white.opacity(0.8),lineWidth: 4)
                            .frame(width: 280)
                            .rotationEffect(.init(degrees: 145))
                        
                        let angle = Double(steps)*216/Double(goal)
                        
                        Circle()
                            .fill(.white.opacity(0.8))
                            .frame(width: 15)
                            .offset(x: -115, y: 79)
                            .rotationEffect(.init(degrees: angle > 216 ? 216 : angle))
                        VStack {
                            Image("Trophy")
                            Text(goal.description)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                        }.offset(x: 140, y: 50)
                        
                        VStack {
                            Text(steps.description)
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .bold()
                                .onAppear {
                                    if let healthStore = healthStore {
                                        healthStore.requestAuthorisation { success in
                                            if success {
                                                healthStore.getTodaysSteps { sum in
                                                    steps = Int(sum)
                                                }
                                            }
                                        }
                                    }
                                }
                            
                            Rectangle()
                                .cornerRadius(20)
                                .frame(width: 100, height: 35)
                                .foregroundColor(.white)
                                .overlay(Button {
                                    print("Edit button was tapped")
                                } label: {
                                    Text("Set Goal")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14))
                                        .bold()
                                })
                            
                            
                        }
                    }
                    HStack {
                        //Spacer()
                        ExtractedView(parameter: "Calories", value: calories, units: "kCal")
                            .padding(.all,10)
                            .onAppear {
                                if let healthStore = healthStore {
                                    healthStore.requestAuthorisation { success in
                                        if success {
                                            healthStore.getEnergyConsumed { totalCaloriesConsumed in
                                                calories = Int(totalCaloriesConsumed!)
                                            }
                                        }
                                    }
                                }
                            }
                        
                        Image("Line")
                            .padding(.all,10)
                        
                        ExtractedView(parameter: "Avg. Speed", value: AvgSpeed, units: "Km/h")
                            .padding(.all,10)
                            .onAppear {
                                if let healthStore = healthStore {
                                    healthStore.requestAuthorisation { success in
                                        if success {
                                            healthStore.getAvgSpeed { avg in
                                                AvgSpeed = Int(avg!*3.6)
                                            }
                                        }
                                    }
                                }
                            }
                        Image("Line")
                            .padding(.all,10)
                        ExtractedView(parameter: "Distance", value: distance, units: "Km")
                            .padding(.all,10)
                            .onAppear {
                                if let healthStore = healthStore {
                                    healthStore.requestAuthorisation { success in
                                        if success {
                                            healthStore.getDistance { distanceWalked in
                                                distance = Int(distanceWalked!/1000)
                                            }
                                        }
                                    }
                                }
                            }

                    }
                    
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    
                    
                    PastActivityView(col: Color(red: 1.00, green: 0.60, blue: 0.45))
                        .cornerRadius(15)
                        .ignoresSafeArea()
                    
                        .sheet(isPresented: .constant(false)) {
                            PastActivityView(col: Color(red: 1.00, green: 0.60, blue: 0.45))
                                .presentationDetents([.large])
                            //.interactiveDismissDisabled()
                            
                        }
                    
                    
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
    
}

struct StepTracker_Previews: PreviewProvider {
    static var previews: some View {
        StepTracker(path: .constant(NavigationPath()))
    }
}


struct ExtractedView: View {
    var parameter: String
    var value: Int
    var units: String
    var body: some View {
        VStack {
            Text(parameter)
            Text(value.description)
                .font(.system(size: 30))
                .bold()
            Text(units.description)
        }.foregroundColor(.white)
    }
}
