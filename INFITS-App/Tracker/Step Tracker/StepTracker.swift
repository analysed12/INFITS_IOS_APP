//
//  StepTracker.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 13/04/23.
//

import SwiftUI

struct StepTracker: View {

    @State var steps: Int = 0
    @State var goal: Int = 160
    @State var calories: Int = 0
    @State var AvgSpeed: Int = 0
    @State var distance: Int = 0
    
    @State var setGoal:Bool = false
    @State var goalSetValue = ""
    
    @Binding var path : NavigationPath
    @State var isSeleced:Bool = false
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 255 / 255, green: 129 / 255, blue: 109 / 255).opacity(1),
                Color(red: 255 / 255, green: 100 / 255, blue: 22 / 255).opacity(1)
            ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            .ignoresSafeArea(.all)
            
            VStack {
                //Header
                ZStack(alignment: .top) {
                    Button(action: {
                        path.removeLast()
//                        path.append(NavigationType.homeScreen)
                    }) {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading,16)
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30, alignment: .leading)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("STEPS")
                        .font(Font.custom("NATS 400", size: 38))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    VStack {
                        //Today DropDown Button
                        Button(action: {
                            
                        }) {
                            HStack {
                                Text("Today")
                                    .font(Font.custom("NATS 400", size: 14))
                                    .foregroundColor(.white)
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12))
                            }
                        }
                        
                        .frame(width: 80, height: 35)
                        .background(Color(red: 255 / 255, green: 154 / 255, blue: 138 / 255).opacity(1))
                        .cornerRadius(.infinity)
                        .shadow(color:Color(red: 255 / 255, green: 154 / 255, blue: 138 / 255).opacity(0.1), radius: 15, x: 0, y: 2)
                    }
                    
                    .padding(.vertical, 60)
                    
                }
                
                //Graph
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
                            .position(x:100, y:220)
                            .rotationEffect(.init(degrees: angle > 216 ? 216 : angle))
                        VStack {
                            Image("Trophy")
                            Text(goal.description)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                        }.position(x:UIScreen.main.bounds.width - 75, y:190)
                        VStack {
                            Image("foot")
                            
                            Text(steps.description)
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .bold()
                                .onAppear {
                                    
                                }
                            //Set Goal Button
                            Button {
                                self.setGoal.toggle()
                                
                            } label: {
                                Text("Set Goal")
                                    .font(Font.custom("NATS 400", size: 18))
                                    .frame(width: 120, height: 50)
                                    .foregroundColor(Color(red: 255 / 255, green: 129 / 255, blue: 109 / 255).opacity(1))
                                
                                    .background(.white)
                                    .clipShape(Rectangle())
                                    .cornerRadius(50)
                                    .shadow(color:Color(#colorLiteral(red: 0.69, green: 0.75, blue: 0.77, alpha: 0.32)), radius: 6, x: 0, y: 8)
                            }
                        }.animation(.spring())
                    }
                    
                    HStack {
                        //Spacer()
                        ExtractedView(parameter: "Calories", value: calories, units: "kCal")
                            .padding(.all,10)
                            .onAppear {
                            }
                        
                        Image("Line")
                            .padding(.all,10)
                        
                        ExtractedView(parameter: "Avg. Speed", value: AvgSpeed, units: "Km/h")
                            .padding(.all,10)
                            .onAppear {
                            }
                        Image("Line")
                            .padding(.all,10)
                        ExtractedView(parameter: "Distance", value: distance, units: "Km")
                            .padding(.all,10)
                            .onAppear {
                            }
                    }
                    
                    PastActivityView(col: Color(red: 1.00, green: 0.60, blue: 0.45))
                        .cornerRadius(15)
                        .ignoresSafeArea()
                    
                        .sheet(isPresented: $isSeleced) {
                            PastActivityView(col: Color(red: 1.00, green: 0.60, blue: 0.45))
                                .presentationDetents([.large])
                        }
                        .onTapGesture {
                            isSeleced = true
                        }
                    Spacer()
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.bottom)
            if setGoal {
                setGoalViewAlert(setGoal: $setGoal)
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
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
        VStack(spacing: 0) {
            Text(parameter)
                .font(Font.custom("NATS 400", size: 18))
                .foregroundColor(Color(red: 255 / 255, green: 209 / 255, blue: 197 / 255).opacity(1))
                .padding(.bottom, 5)
            Text(value.description)
                .font(Font.custom("NATS 400", size: 30))
                .foregroundColor(.white)
                .padding(.bottom, 5)
            Text(units.description)
                .font(Font.custom("NATS 400", size: 18))
                .foregroundColor(Color(red: 255 / 255, green: 209 / 255, blue: 197 / 255).opacity(1))
            
        }.foregroundColor(.white)
    }
}
 
struct setGoalViewAlert:View {
    @State var goalSetValue = ""
    @Binding var setGoal:Bool
 
    var body: some View {
        ZStack {
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
                 HStack{
                    Text("Set Daily Steps Goal")
                        .font(Font.custom("NATS 400", size: 22  ))
                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                        .padding(.top, 15)
                }
                
                TextField(
                  "120",
                  text:$goalSetValue
                )
                 
                .keyboardType(.numberPad)
                .padding(.all)
                .frame(width: 150, alignment: .center)
                .multilineTextAlignment(.center)
                Divider()
                    .frame(width: 150, alignment: .center)
                    .padding(.top, -10)
                    .padding(.bottom, 20)
                Button {
                    self.setGoal.toggle()
                } label: {
                    Text("Save")
                        .font(Font.custom("NATS 400", size: 24))
                        .frame(width: 155, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 255 / 255, green: 130 / 255, blue: 110 / 255) .opacity(1))
                    
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
}

