//
//  HomeScreen.swift
//  Infits
//
//  Created by Chitrala Dhruv on 21/01/23.
//

import SwiftUI

struct HomeScreen: View {
    @State private var isShowing = false
    @State private var isPresented = false
    @State private var name = "John"
    @State var progress: Double = 0
    var colors: [Color] = [Color.white, Color.red]
    
    @Binding var path : NavigationPath
    
    //Sidebar toggle
    @State var showMenu:Bool = false
    @State var offset:CGFloat = 0
    
    let currentDate = Date()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
  
    
    @State private var isPro:Bool = false
    
    var body: some View {
        ZStack{
            if isShowing {
                SideMenuView(path: $path)
            }
            
                 VStack {
                    //Header
                    VStack{
                        HStack{
                            Button {
                                isShowing.toggle()
                            } label: {
                                Image("menu")
                                
                            }
                            Spacer()
                            Button {
                                
                            } label: {
                                Image("notificationbell")
                            }
                        }
                        .padding(.horizontal,20)
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Hi \(name)")
                                        .font(.custom("NATS 400", size: 38))
                                    if isPro{
                                        RoundedRectangle(cornerRadius: 13)
                                        
                                            .stroke(Color(red: 233 / 255, green: 137 / 255, blue: 144 / 255).opacity(1), lineWidth: 3)
                                            .frame(width: 60,height:30)
                                            .overlay(
                                                Text("Pro")
                                                    .foregroundColor(Color(red: 255 / 255, green: 102 / 255, blue: 30 / 255).opacity(1))
                                                    .font(.custom("NATS 400", size: 14))
                                            )
                                            .clipShape(RoundedRectangle(cornerRadius: 13))
                                    } else {
                                        
                                    }
                                }
                                Text("\(dateFormatter.string(from: currentDate))")
                                    .font(.custom("NATS 400", size: 16))
                                    .foregroundColor(Color(red: 155 / 255, green: 155 / 255, blue: 155 / 255).opacity(1))
                            }
                            Spacer()
                            Image("profilePicture")
                                .cornerRadius(10)
                        }
                        .padding(.horizontal,20)
                    }
                    
                    //Tracker Grid Start Here
                    let width = (UIScreen.main.bounds.width/2.3)
                    HStack{
                        //Step Track
                        Button {
                            path.append(NavigationType.stepTracker)
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(colors: [Color(red: 1.0, green: 0.3607843137254902, blue: 0.0),Color(red: 1.0, green: 0.5019607843137255, blue: 0.4235294117647059)], startPoint: .bottom, endPoint: .top))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            Image("step-foot")
                                            Text("Steps")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 22))
                                            Spacer()
                                        }
                                        .padding(.leading,10)
                                        HStack {
                                            Image("rect-foots")
                                            Spacer()
                                        }
                                    }
                                    VStack(alignment: .leading){
                                        HStack {
                                            Text("500 Steps")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 20))
                                                .frame(maxWidth: .infinity, alignment:.leading)
                                            
                                            Spacer()
                                            
                                            ZStack{
                                                Circle()
                                                    .stroke((LinearGradient(gradient: Gradient(colors: [
                                                        Color(red: 255 / 255, green: 128 / 255, blue: 108 / 255).opacity(0.9),
                                                        Color(red: 255 / 255, green: 92 / 255, blue: 0 / 255).opacity(0.9)
                                                    ]),
                                                                            startPoint: .topLeading,
                                                                            endPoint: .bottomTrailing)), lineWidth:2)
                                                
                                                Circle()
                                                    .trim(from: 0, to: 0.6)
                                                    .stroke(Color.white ,
                                                            style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                                                    .rotationEffect(.init(degrees: 10))
                                                    .overlay(
                                                        Text("70%")
                                                            .font(.custom("NATS 400", size: 12))
                                                            .foregroundColor(.white)
                                                        
                                                    )
                                            }
                                            .frame(width: 60)
                                            .padding(.trailing, 10)
                                        }
                                        .frame(maxHeight: .infinity, alignment:.bottom)
                                        .padding(.bottom, 10)
                                        .padding(.leading, 10)
                                        .font(.system(size: 23))
                                    }
                                    
                                })
                        }
                        
                        Spacer()
                            .frame(width: 20)
                        
                        //Heart Tracker
                        Button {
                            path.append(NavigationType.HeartRateView)
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(colors: [Color(red: 0.3176470588235294, green: 0.15294117647058825, blue: 0.8666666666666667),Color(red: 1.0, green: 0.3764705882352941, blue: 0.5686274509803921)], startPoint: .bottomLeading, endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            Image("HeartRate")
                                            Text("Heart Rate")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.custom("NATS 400", size: 22))
                                            Spacer()
                                        }
                                        .padding(.top,30)
                                        .padding(.leading,10)
                                        HStack {
                                            Image("HeartRatewatermark")
                                                .resizable()
                                                .frame(width: 90,height: 90)
                                                .offset(y:-10)
                                            Spacer()
                                        }
                                    }
                                    
                                    VStack{
                                        HStack {
                                            Text("85 BPM")
                                                .bold()
                                                .font(.custom("NATS 400", size: 20))
                                                .foregroundColor(.white)
                                                .offset(y:40)
                                            
                                            
                                            VStack(spacing:5){
                                                HStack{
                                                    Image("up-green-arrow")
                                                        .foregroundColor( Color(#colorLiteral(red: 163 / 255, green: 255 / 255, blue: 131 / 255, alpha: 1)))
                                                    //  .padding(.leading, 7)
                                                    Text("120bpm")
                                                        .font(.custom("NATS 400", size: 16))
                                                }.padding(.trailing, 10)
                                                
                                                HStack{
                                                    Image("down-red-arrow")
                                                        .foregroundColor( Color(#colorLiteral(red: 175 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)))
                                                    Text("72bpm  ")
                                                        .font(.custom("NATS 400", size: 16))
                                                }.padding(.trailing, 10)
                                                
                                                
                                            }.font(.system(size: 14))
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity, alignment:.trailing)
                                                .offset(y:25)
                                            
                                        }
                                    }
                                    //                                       .offset(y:10)
                                    .frame(maxWidth: .infinity, alignment:.leading)
                                    .font(.system(size: 23))
                                    .padding(.leading, 10)
                                })
                        }
                    }
                    .padding(.vertical,5)
                    
                    HStack{
                        
                        //Water Tracker
                        Button {
                            path.append(NavigationType.waterTracker)
                        } label: {
                            Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(stops: [
                                        .init(color: Color(hex: 0x6271FF), location: 0),
                                        .init(color: Color(hex: 0x278EFF), location: 1)
                                    ]),
                                                   startPoint: .bottomLeading,
                                                   endPoint: .topTrailing)
                                )
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(
                                    ZStack {
                                        VStack {
                                            Spacer()
                                            HStack {
                                                
                                                Image("water")
                                                Text("Water")
                                                    .foregroundColor(.white)
                                                    .bold()
                                                    .font(.custom("NATS 400", size: 22))
                                                Spacer()
                                                
                                            }
                                            
                                            .padding(.leading,10)
                                            HStack {
                                                Image("waterwatermark")
                                                Spacer()
                                            }
                                        }
                                        HStack {
                                            Text("4 Glasses")
                                                .bold()
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 20))
                                        }
                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                        .padding(.bottom, 45)
                                        .offset(x:-38)
                                        .font(.system(size: 23))
                                        
                                        VStack {
                                            HStack(alignment: .bottom){
                                                Text("Goal")
                                                    .bold()
                                                    .foregroundColor(.white)
                                                Spacer()
                                                Text("8 Glasses")
                                                    .foregroundColor(.white)
                                            }
                                            .frame(maxHeight: .infinity, alignment: .bottom)
                                            .padding(.bottom, 10)
                                            .padding(.horizontal, 10)
                                            
                                        }
                                        
                                        
                                    })
                        }
                        
                        Spacer()
                            .frame(width: 20)
                        
                        //Sleep Tracker
                        
                        Button {
                            path.append(NavigationType.sleepTracker)
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color(hex: 0x7B29FF), location: 0),
                                    .init(color: Color(hex: 0x4518DB), location: 1.2)
                                ]),
                                                     startPoint: .bottomLeading,
                                                     endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            Image("sleep")
                                            Text("Sleep Track")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.custom("NATS 400", size: 22))
                                            Spacer()
                                        }
                                        .padding(.top,30)
                                        .padding(.leading,10)
                                        HStack {
                                            Image("sleepwatermark")
                                                .resizable()
                                                .frame(width: 90,height: 90)
                                                .offset(y:-10)
                                            Spacer()
                                        }
                                    }
                                    HStack {
                                        Text("7")
                                            .bold()
                                            .foregroundColor(.white)
                                        Text("hr")
                                            .foregroundColor(.white)
                                        
                                        Text("35")
                                            .bold()
                                            .foregroundColor(.white)
                                        Text("min")
                                            .foregroundColor(.white)
                                    }
                                    .offset(x:-30,y:10)
                                    .font(.custom("NATS 400", size: 20))
                                    
                                    VStack {
                                        HStack{
                                            Text("Goal")
                                                .bold()
                                                .foregroundColor(.white)
                                            Spacer()
                                            Text("8 Hours")
                                                .foregroundColor(.white)
                                        }
                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                        .padding(.bottom, 30)
                                        .padding(.horizontal, 10)
                                        
                                    }
                                    
                                })
                        }
                    }
                    .padding(.vertical,5)
                    
                    HStack{
                        //Weight Track
                        Button {
                            path.append(NavigationType.WeightTracker)
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color(hex: 0x556270), location: 0),
                                    .init(color: Color(hex: 0x4ECDC4), location: 1.2)
                                ]),
                                                     startPoint: .bottomLeading,
                                                     endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            Image("weight")
                                            Text("Weight Track")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.custom("NATS 400", size: 22))
                                            Spacer()
                                        }
                                        .padding(.top,30)
                                        .padding(.leading,10)
                                        HStack {
                                            Image("weightwatermark")
                                                .resizable()
                                                .frame(width: 90, height: 90)
                                                .offset(y:-10)
                                            Spacer()
                                        }
                                    }
                                    HStack {
                                        Text("80 KGs")
                                            .bold()
                                            .foregroundColor(.white)
                                        
                                    }
                                    .offset(x:-48,y:10)
                                    .font(.custom("NATS 400", size: 20))
                                    
                                    
                                    VStack {
                                        HStack{
                                            Text("Goal")
                                                .bold()
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 16))
                                            Spacer()
                                            Text("60 KG")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 20))
                                                .bold()
                                        }
                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                        .padding(.bottom, 30)
                                        .padding(.horizontal, 10)
                                        
                                    }
                                    
                                })
                        }
                        
                        Spacer()
                            .frame(width: 20)
                        
                        //Calorie Track
                        Button {
                            path.append(NavigationType.CalorieTracker)
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color(hex: 0xFF9023), location: 0),
                                    .init(color: Color(hex: 0xE9FF61), location: 1.2)
                                ]),
                                                     startPoint: .bottomLeading,
                                                     endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            
                                            Image("calorie")
                                            Text("Calorie Track")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.custom("NATS 400", size: 22))
                                            Spacer()
                                        }
                                        .padding(.top,30)
                                        .padding(.leading,10)
                                        HStack {
                                            Image("caloriewatermark")
                                                .resizable()
                                                .frame(width: 90,height: 90)
                                                .offset(y:-10)
                                            Spacer()
                                        }
                                    }
                                    HStack {
                                        Text("1000")
                                            .bold()
                                            .foregroundColor(.white)
                                        Text("Kcal")
                                            .foregroundColor(.white)
                                    }
                                    .offset(x:-35,y:10)
                                    .font(.custom("NATS 400", size: 20))
                                    
                                    VStack {
                                        HStack{
                                            Text("Goal")
                                                .bold()
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 16))
                                            Spacer()
                                            Text("2000 kcal")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 20))
                                                .bold()
                                        }
                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                        .padding(.bottom, 30)
                                        .padding(.horizontal, 10)
                                        
                                    }
                                    
                                })
                        }
                    }
                    .padding(.vertical,5)
                    
                    HStack{
                        //Consultaion
                        Button {
                            
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color(hex: 0x0082C8), location: 0),
                                    .init(color: Color(hex: 0x667DB6), location: 1.2)
                                ]),
                                                     startPoint: .bottomLeading,
                                                     endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(
                                    ZStack {
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Image("consultation")
                                                Text("Consultation")
                                                    .foregroundColor(.white)
                                                    .bold()
                                                    .font(.custom("NATS 400", size: 22))
                                                Spacer()
                                            }
                                            .padding(.top,30)
                                            .padding(.leading,10)
                                            HStack {
                                                Image("consultationwatermark")
                                                    .resizable()
                                                    .frame(width: 90, height: 90)
                                                    .offset(y:-20)
                                                Spacer()
                                            }
                                        }
                                        
                                        if isPro {
                                            VStack(alignment:.leading, spacing:15) {
                                                Text("Dietitian & Plan")
                                                    .foregroundColor(.white)
                                                    .font(.custom("NATS 400", size: 16))
                                                Text("\(dateFormatter.string(from: currentDate))")
                                                    .foregroundColor(.white)
                                                    .font(.custom("NATS 400", size: 16))
                                            }
                                            .frame(maxHeight: .infinity, alignment:.bottom)
                                            .offset(x:-25 ,y:-30)
                                            
                                        } else {
                                            VStack{
                                                RoundedRectangle(cornerRadius: 10)
                                                
                                                    .stroke(Color.white, lineWidth: 2)
                                                    .frame(width: 140,height:30)
                                                    .background(.blue)
                                                    .overlay(
                                                        Text("Go Pro!")
                                                            .foregroundColor(.white)
                                                            .font(.custom("NATS 400", size: 14))
                                                    )
                                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                            }
                                            .frame(maxHeight: .infinity, alignment:.bottom)
                                            .padding(.bottom, 40)
                                        }
                                        
                                        
                                        
                                    })
                        }
                        
                        Spacer()
                            .frame(width: 20)
                        
                        //Diet Chart
                        
                        Button {
                            
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color(hex: 0x800080), location: 0),
                                    .init(color: Color(hex: 0xFFC5D6), location: 1.2)
                                ]),
                                                     startPoint: .bottomLeading,
                                                     endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            Image("dietchart")
                                            Text("Diet Chart")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.system(size: 17.5))
                                            Spacer()
                                        }
                                        .padding(.top,30)
                                        .padding(.leading,10)
                                        HStack {
                                            Image("dietwatermark")
                                                .resizable()
                                                .frame(width: 90,height: 90)
                                                .offset(y:-10)
                                            Spacer()
                                        }
                                    }
                                    
                                    if isPro {
                                        VStack(alignment:.leading, spacing:15) {
                                            Text("All Meal Courses")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 16))
                                            Text("\(dateFormatter.string(from: currentDate))")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 16))
                                        }
                                        .frame(maxHeight: .infinity, alignment:.bottom)
                                        .offset(x:-25 ,y:-30)
                                        
                                    } else {
                                        VStack{
                                            RoundedRectangle(cornerRadius: 10)
                                            
                                                .stroke(Color.white, lineWidth: 2)
                                                .frame(width: 140,height:30)
                                                .background(.blue)
                                                .overlay(
                                                    Text("Go Pro!")
                                                        .foregroundColor(.white)
                                                        .font(.custom("NATS 400", size: 14))
                                                )
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                        }
                                        .frame(maxHeight: .infinity, alignment:.bottom)
                                        .padding(.bottom, 40)
                                    }
                                    
                                    
                                    
                                })
                        }
                    }
                    .padding(.vertical,5)
                    
                    HStack{
                        
                        //Meal Tracker
                        Button {
                            
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color(hex: 0xFF6C98), location: 0),
                                    .init(color: Color(hex: 0xFFC5D6), location: 1.2)
                                ]),
                                                     startPoint: .bottomLeading,
                                                     endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            
                                            Image("meal")
                                            Text("Meal Tracker")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.custom("NATS 400", size: 22))
                                            Spacer()
                                        }
                                        .padding(.top,30)
                                        .padding(.leading,10)
                                        HStack {
                                            Image("mealwatermark")
                                                .resizable()
                                                .frame(width: 90, height: 90)
                                                .offset(y:-10)
                                            Spacer()
                                        }
                                    }
                                    
                                    if isPro {
                                        VStack(alignment:.leading, spacing:15) {
                                            Text("Share with Dietitian")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 16))
                                            Text("\(dateFormatter.string(from: currentDate))")
                                                .foregroundColor(.white)
                                                .font(.custom("NATS 400", size: 16))
                                        }
                                        .frame(maxHeight: .infinity, alignment:.bottom)
                                        .offset(x:-15 ,y:-30)
                                        
                                    } else{
                                        VStack{
                                            RoundedRectangle(cornerRadius: 10)
                                            
                                                .stroke(Color.white, lineWidth: 2)
                                                .frame(width: 140,height:30)
                                                .background(.blue)
                                                .overlay(
                                                    Text("Go Pro!")
                                                        .foregroundColor(.white)
                                                        .font(.custom("NATS 400", size: 14))
                                                )
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                        }
                                        .frame(maxHeight: .infinity, alignment:.bottom)
                                        .padding(.bottom, 40)
                                    }
                                    
                                    
                                })
                        }
                        
                        Spacer()
                            .frame(width: 20)
                        //Workout Tracker
                        Button {
                            
                        } label: {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color(hex: 0xFF7E00), location: 0),
                                    .init(color: Color(hex: 0xFFB27B), location: 1.2)
                                ]),
                                                     startPoint: .bottomLeading,
                                                     endPoint: .topTrailing))
                                .frame(width: width, height: width*2/3)
                                .cornerRadius(8)
                                .overlay(ZStack {
                                    VStack {
                                        Spacer()
                                        HStack {
                                            Image("workout")
                                            Text("Workout")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.custom("NATS 400", size: 22))
                                            Spacer()
                                        }
                                        .padding(.top,30)
                                        .padding(.leading,10)
                                        HStack {
                                            Image("workoutwatermark")
                                                .resizable()
                                                .frame(width: 90,height: 90)
                                                .offset(y:-10)
                                            Spacer()
                                        }
                                    }
                                    
                                    VStack(alignment:.leading, spacing:10) {
                                        Text("Workout Tracker")
                                            .foregroundColor(.white)
                                            .font(.custom("NATS 400", size: 16))
                                        Text("\(dateFormatter.string(from: currentDate))")
                                            .foregroundColor(.white)
                                            .font(.custom("NATS 400", size: 16))
                                    }
                                    .frame(maxHeight: .infinity, alignment:.bottom)
                                    .offset(x:-20 ,y:-30)
                                })
                        }
                    }
                    .padding(.vertical,5)
                }
                .offset(x: isShowing ? 290 : 0, y: 0)
                .animation(.easeIn(duration: 3), value: offset == 0)
            
        }
        .navigationBarBackButtonHidden()
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(path: .constant(NavigationPath()))
    }
}

extension Color {
    init(hex: UInt32, alpha: Double = 1.0) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}



