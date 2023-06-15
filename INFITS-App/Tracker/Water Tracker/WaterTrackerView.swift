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
    @Binding var path : NavigationPath
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 0.15, green: 0.56, blue: 1.00).opacity(0.8),Color(red: 0.38, green: 0.44, blue: 1.00).opacity(0.8)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        path.removeLast()
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
        .navigationBarBackButtonHidden(true)
    }
}

struct WaterTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        WaterTrackerView(path: .constant(NavigationPath()))
    }
}

struct SetWaterGoalView: View {
    @Binding var setGoal:Bool
    @Binding var isSeleced:Bool
    @Binding var goal: Int
    @Binding var glassQuantity: Int
    @State var slider:CGFloat = 0
    
    var body: some View {
            VStack{
                VStack (alignment: .trailing){
                    Button {
                        self.setGoal.toggle()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    }
                    .frame(maxWidth: .infinity, alignment:.trailing)
                }
                
                VStack (spacing: 15) {
                    Text("Set goal for water intake")
                        .font(Font.custom("NATS 400", size: 23))
                        .foregroundColor(Color(red: 0 / 255, green: 81 / 255, blue: 171 / 255))
                        .frame(maxWidth: .infinity, alignment: .center)
                    Text("(in liters)")
                        .font(Font.custom("NATS 400", size: 15))
                        .foregroundColor(Color(red: 0 / 255, green: 81 / 255, blue: 171 / 255))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Divider()
                        .frame(width: UIScreen.main.bounds.width - 150, alignment: .center)
                        .background(Color(red: 239 / 255, green: 246 / 255, blue: 255 / 255))
                }
                
                HStack (spacing: 5) {
                    Text("Set quantity!")
                        .font(Font.custom("NATS 400", size: 20))
                        .foregroundColor(Color(red: 0 / 255, green: 81 / 255, blue: 171 / 255))
                        .frame(maxWidth: .infinity, alignment: .center)
                    Text("1 Glass (in ml) = ")
                        .font(Font.custom("NATS 400", size: 18))
                        .foregroundColor(Color(red: 0 / 255, green: 81 / 255, blue: 171 / 255))
                        .frame(maxWidth: .infinity, alignment: .center)
                    VStack(spacing: 10){
                        Button {
                            glassQuantity = 250
                        } label: {
                            Image(systemName: "chevron.up")
                        }
                        Text("\(glassQuantity)ml")
                            .font(Font.custom("NATS 400", size: 18))
                            .foregroundColor(Color(red: 0 / 255, green: 81 / 255, blue: 171 / 255))
                        Button {
                            glassQuantity = 200
                        } label: {
                            Image(systemName: "chevron.down")
                        }

                    }
                    
                }
                
                ZStack{
                    Capsule()
                        .stroke(lineWidth:1)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color(red: 0.936, green: 0.966, blue: 1.0))
                    HStack{
                        ZStack {
                            Capsule()
                                .frame(width: 110, height: 50)
                            .foregroundColor(Color(red: 0.936, green: 0.966, blue: 1.0))
                            Text(String(format:"%.1f",Double(goal)/1000.0)+" L")
                                .foregroundColor(Color(red: 0 / 255, green: 81 / 255, blue: 171 / 255))
                            
                        }
                        Spacer()
                        Text("\(goal/glassQuantity) Glass")
                            .padding(.trailing,15)
                            .foregroundColor(Color(red: 0 / 255, green: 81 / 255, blue: 171 / 255))
                    }
                    
                }
                .frame(width: 200, height: 50)
                ZStack(alignment: .leading){
                    Capsule()
                        .frame(width: UIScreen.main.bounds.width-110, height: 5)
                        .foregroundColor(Color(red: 0.863, green: 0.923, blue: 1.0))
                    Capsule()
                        .frame(width: slider, height: 5)
                        .foregroundColor(Color(red: -0.005, green: 0.319, blue: 0.67))
                    HStack(spacing: UIScreen.main.bounds.width / 30) {
                        ForEach(0..<19,id: \.self){index in
                            Circle ()
                                .frame (width: 3, height: 3)
                                .foregroundColor(Color(red: 0.698, green: 0.84, blue: 1.003))
                        }
                    }
                    
                    Image("waterDrop")
                        .resizable()
                        .frame(width: 22, height: 30)
                        .offset(x:slider,y: -4)
                        .gesture (DragGesture() .onChanged ({ (value) in
                            if value.location.x > 10 && value.location.x <= UIScreen.main.bounds.width - 110{
                                slider = value.location.x - 10
                                goal = 400 + (Int(slider) / 17) * 200
                            }
                        }))
                }
                .padding(.top, 20)
                HStack(spacing: 25){
                        Text("0.4 L")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    Text("1 L")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("1.6 L")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("2.2 L")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("2.8 L")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("3.4 L")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("4 L")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                .frame(width: UIScreen.main.bounds.width-100)
                .padding(.vertical,15)
                
                Button {
                    self.setGoal.toggle()
                } label: {
                    Text("Set Goal")
                        .font(Font.custom("NATS 400", size: 24))
                        .frame(width: 120, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 82 / 255, green: 164 / 255, blue: 255 / 255) .opacity(1))
                    
                        .clipShape(Rectangle())
                        .cornerRadius(50)
                        .shadow(color:Color(#colorLiteral(red: 0.58, green: 0.68, blue: 1.0, alpha: 0.3)), radius: 6, x: 0, y: 10)
                }
                
                
            }.padding(20)
                .background(.white)
                .cornerRadius(10)
                .shadow(color:Color(red: 176 / 255, green: 190 / 255, blue: 197 / 255).opacity(0.32), radius: 15, x: 0, y: 3)
                .frame(width: UIScreen.main.bounds.width - 50)
        }
}

