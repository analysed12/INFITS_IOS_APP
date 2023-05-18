//
//  SetWaterGoalView.swift
//  WaterTracker
//
//  Created by utkrisht chauhan on 03/05/23.
//

import SwiftUI

struct SetWaterGoalView: View {
    @Binding var setGoal:Bool
    @Binding var isSeleced:Bool
    @Binding var goal: Int
    @Binding var glassQuantity: Int
    @State var slider:CGFloat = 0
    
    var body: some View {
//        ZStack {
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
//                                .padding(.leading,18)
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
//                                print(slider)
                                goal = 400 + (Int(slider) / 17) * 200
//                                print(goal,"   ", String(Int(slider) / 17) )
                            }
                        }))
                }
                .padding(.top, 20)
                HStack(spacing: 25){
//                    ForEach(0..<7,id: \.self){index in
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
//                    }
                }
                .frame(width: UIScreen.main.bounds.width-100)
                .padding(.vertical,15)
                
                Button {
                    self.setGoal.toggle()
//                    print(UIScreen.main.bounds.width)
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
//    }
}

struct SetWaterGoalView_Previews: PreviewProvider {
    static var previews: some View {
        SetWaterGoalView(setGoal: .constant(true), isSeleced: .constant(true),goal:.constant(400),glassQuantity: .constant(250))
    }
}
