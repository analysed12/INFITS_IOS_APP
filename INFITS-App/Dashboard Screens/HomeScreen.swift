//
//  HomeScreen.swift
//  Dashboard
//
//  Created by utkrisht chauhan on 09/04/23.
//

import SwiftUI

struct HomeScreen: View {
    @State private var isShowing = false
    @State private var isPresented = false
    @State private var name = "John"
    @Binding var path : NavigationPath
    let currentDate = Date()
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
    var body: some View {
        ZStack{
            if isShowing {
                SideMenuView(path: $path)
            }
            VStack {
                VStack{
                    HStack{
                        Button {
                            isShowing.toggle()
                        } label: {
                            Image("sidemenubutton")
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
                            Text("Hi \(name)")
                                .font(.system(size: 30))
                            Text("\(dateFormatter.string(from: currentDate))")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image("sampledp")
                    }
                    .padding(.horizontal,20)
                }
                let width = (UIScreen.main.bounds.width/2.3)
                HStack{
                    Button {
                        
                    } label: {
                        Rectangle()
                            .fill(LinearGradient(colors: [Color(red: 1.0, green: 0.3607843137254902, blue: 0.0),Color(red: 1.0, green: 0.5019607843137255, blue: 0.4235294117647059)], startPoint: .bottom, endPoint: .top))
                            .frame(width: width, height: width*2/3)
                            .cornerRadius(8)
                            .overlay(ZStack {
                                VStack {
                                    Spacer()
                                    HStack {
//                                        Spacer()
                                        Image("Steps")
                                        Text("Steps")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
                                    }
                                    .padding(.top,30)
                                    .padding(.leading,10)
                                    HStack {
                                        Image("stepswatermark")
                                            .offset(y:-40)
                                        Spacer()
                                    }
                                }
//                                Spacer()
                                HStack {
                                    Text("500")
                                        .bold()
                                    .foregroundColor(.white)
                                    Text("Steps")
                                        .foregroundColor(.white)
                                }
                                .offset(x:-20,y:10)
                                .font(.system(size: 23))
                            })
                    }

                    Spacer()
                        .frame(width: 20)
                    Button {
                        
                    } label: {
                        Rectangle()
                            .fill(LinearGradient(colors: [Color(red: 0.3176470588235294, green: 0.15294117647058825, blue: 0.8666666666666667),Color(red: 1.0, green: 0.3764705882352941, blue: 0.5686274509803921)], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .frame(width: width, height: width*2/3)
                            .cornerRadius(8)
                            .overlay(ZStack {
                                VStack {
                                    Spacer()
                                    HStack {
//                                        Spacer()
                                        Image("HeartRate")
                                        Text("Heart Rate")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
                                HStack {
                                    Text("85")
                                        .bold()
                                    .foregroundColor(.white)
                                    Text("BPM")
                                        .foregroundColor(.white)
                                }
                                .offset(x:-20,y:10)
                                .font(.system(size: 23))
                            })
                    }
                }
                .padding(.vertical,5)
                
                HStack{
                    Button {
                        
                    } label: {
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(stops: [
                                .init(color: Color(hex: 0x6271FF), location: 0),
                                .init(color: Color(hex: 0x278EFF), location: 1)
                            ]),
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing))
                            .frame(width: width, height: width*2/3)
                            .cornerRadius(8)
                            .overlay(ZStack {
                                VStack {
                                    Spacer()
                                    HStack {
//                                        Spacer()
                                        Image("water")
                                        Text("Water")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
                                    }
                                    .padding(.top,30)
                                    .padding(.leading,10)
                                    HStack {
                                        Image("waterwatermark")
                                            .offset(y:-10)
                                        Spacer()
                                    }
                                }
//                                Spacer()
                                HStack {
                                    Text("4")
                                        .bold()
                                    .foregroundColor(.white)
                                    Text("Glasses")
                                        .foregroundColor(.white)
                                }
                                .offset(x:-20,y:10)
                                .font(.system(size: 23))
                            })
                    }

                    Spacer()
                        .frame(width: 20)
                    Button {
                        
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
//                                        Spacer()
                                        Image("sleep")
                                        Text("Sleep Track")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
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
                                .offset(x:-20,y:10)
                                .font(.system(size: 23))
                            })
                    }
                }
                .padding(.vertical,5)
                
                HStack{
                    Button {
                        
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
//                                        Spacer()
                                        Image("weight")
                                        Text("Weight Track")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
                                HStack {
                                    Text("80")
                                        .bold()
                                    .foregroundColor(.white)
                                    Text("kilograms")
                                        .foregroundColor(.white)
                                }
                                .offset(x:-10,y:10)
                                .font(.system(size: 23))
                            })
                    }

                    Spacer()
                        .frame(width: 20)
                    Button {
                        
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
//                                        Spacer()
                                        Image("calorie")
                                        Text("Calorie Track")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
                                HStack {
                                    Text("1000")
                                        .bold()
                                    .foregroundColor(.white)
                                    Text("Kcal")
                                        .foregroundColor(.white)
                                }
                                .offset(x:-20,y:10)
                                .font(.system(size: 23))
                            })
                    }
                }
                .padding(.vertical,5)
                
                HStack{
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
                            .overlay(ZStack {
                                VStack {
                                    Spacer()
                                    HStack {
//                                        Spacer()
                                        Image("consultation")
                                        Text("Consultation")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
                                
                                Capsule()
                                    .frame(width: 140,height:30)
                                    .overlay {
                                        ZStack {
                                            Capsule()
                                                .stroke(Color.white, lineWidth: 2)
                                            Text("Go Pro!")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    .offset(y:10)
                            })
                    }

                    Spacer()
                        .frame(width: 20)
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
//                                        Spacer()
                                        Image("dietchart")
                                        Text("Diet Chart")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
                                Capsule()
                                    .frame(width: 140,height:30)
                                    .overlay {
                                        ZStack {
                                            Capsule()
                                                .stroke(Color.white, lineWidth: 2)
                                            Text("Go Pro!")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    .offset(y:10)
                            })
                    }
                }
                .padding(.vertical,5)
                
                HStack{
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
//                                        Spacer()
                                        Image("meal")
                                        Text("Meal Tracker")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
                                Capsule()
                                    .frame(width: 140,height:30)
                                    .overlay {
                                        ZStack {
                                            Capsule()
                                                .stroke(Color.white, lineWidth: 2)
                                            Text("Go Pro!")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    .offset(y:10)
                            })
                    }

                    Spacer()
                        .frame(width: 20)
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
//                                        Spacer()
                                        Image("workout")
                                        Text("Workout")
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.system(size: 17.5))
                                        Spacer()
//                                        Spacer()
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
//                                Spacer()
                                VStack(alignment: .leading, spacing:10) {
                                    Text("Workout Tracker")
//                                        .bold()
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    Text("\(dateFormatter.string(from: currentDate))")
                                        .foregroundColor(.white)
                                        .font(.system(size: 12))
                                }
                                .offset(x:-10,y:10)
//                                .font(.system(size: 23))
                            })
                    }
                }
                .padding(.vertical,5)
                
                
            }
            .offset(x: isShowing ? 225 : 0, y: 0)
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
