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
    @Binding var path : NavigationPath
    
    var body: some View {
        ZStack {
            if isShowing {
                SideMenuView(path: $path)
            }
            NavigationView {
                List()
                    .toolbar  {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                isShowing.toggle()
                            }) {
                                Image("menu")
                                    .renderingMode(.original)
                            }
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                isPresented.toggle()
                            }) {
                                Image("notif")
                                    .renderingMode(.original)
                            }
//                            .fullScreenCover(isPresented: $isPresented, content: StepsTrackerView.init)
                        }
                    }
            }
            .offset(x: isShowing ? 225 : 0, y: 0)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(path: .constant(NavigationPath()))
    }
}

struct hView: View {
    
    var colorGradientOne: Color
    var colorGradientTwo: Color
    
    var colorGradientThree: Color
    var colorGradientFour: Color
    
    var watermarkOne: String
    var titleOne: String
    
    var watermarkTwo: String
    var titleTwo: String
    
    var body: some View {
        
        let width = (UIScreen.main.bounds.width/2.3)
        
        HStack {
            
            let GradientOne = LinearGradient(colors: [colorGradientOne, colorGradientTwo], startPoint: .bottom, endPoint: .top)
            let GradientTwo = LinearGradient(colors: [colorGradientFour, colorGradientThree], startPoint: .bottomLeading, endPoint: .topTrailing)
            
            Rectangle()
                .fill(GradientOne)
                .frame(width: width, height: width*2/3)
                .cornerRadius(8)
                .overlay(HStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Image(titleOne)
                            Text(titleOne)
                                .foregroundColor(.white)
                                .bold()
                                .font(.system(size: 17.5))
                            Spacer()
                            Spacer()
                        }
                        HStack {
                            Image(watermarkOne)
                            Spacer()
                        }
                    }
                    Spacer()
                })
            Spacer()
            Rectangle()
                .fill(GradientTwo)
                .frame(width: width, height: width*2/3)
                .cornerRadius(8)
                .overlay(HStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Image(titleTwo)
                            Text(titleTwo)
                                .foregroundColor(.white)
                                .bold()
                                .font(.system(size: 17.5))
                            Spacer()
                            Spacer()
                        }
                        HStack {
                            Image(watermarkTwo)
                            Spacer()
                        }
                    }
                    Spacer()
                })
        }
        
    }
}

struct List: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack {
                        HStack {
                            VStack (alignment: .leading){
                                Text("Hi John")
                                    .font(.system(size: 50))
                                Text("Feb 10, 2022")
                                    .font(.system(size: 15))
                            }
                            Spacer()
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 65, height: 65)
                        }
                    }
                }
                
                Button {
                    print("test")
                } label: {
                    hView(colorGradientOne: Color(red: 1.00, green: 0.50, blue: 0.42),
                          colorGradientTwo: Color(red: 1.00, green: 0.36, blue: 0.00),
                          colorGradientThree: Color(red: 1.00, green: 0.38, blue: 0.57),
                          colorGradientFour: Color(red: 0.32, green: 0.15, blue: 0.87),
                          watermarkOne: "Vector2", titleOne: "Steps", watermarkTwo: "Vector2", titleTwo: "Heart Rate")

                }

                               
                hView(colorGradientOne: Color(red: 0.15, green: 0.56, blue: 1.00),
                      colorGradientTwo: Color(red: 0.38, green: 0.44, blue: 1.00),
                      colorGradientThree: Color(red: 0.27, green: 0.09, blue: 0.86),
                      colorGradientFour: Color(red: 0.48, green: 0.16, blue: 1.00),
                      watermarkOne: "Vector3", titleOne: "Water", watermarkTwo: "Vector4", titleTwo: "Sleep")
                
                hView(colorGradientOne: Color(red: 0.31, green: 0.80, blue: 0.77),
                      colorGradientTwo: Color(red: 0.33, green: 0.38, blue: 0.44),
                      colorGradientThree: Color(red: 0.87, green: 0.37, blue: 0.54),
                      colorGradientFour: Color(red: 0.97, green: 0.73, blue: 0.59),
                      watermarkOne: "Vector5", titleOne: "Weight Track", watermarkTwo: "Vector6", titleTwo: "Calorie Track")
                
                hView(colorGradientOne: Color(red: 0.31, green: 0.80, blue: 0.77),
                      colorGradientTwo: Color(red: 0.33, green: 0.38, blue: 0.44),
                      colorGradientThree: Color(red: 0.87, green: 0.37, blue: 0.54),
                      colorGradientFour: Color(red: 0.97, green: 0.73, blue: 0.59),
                      watermarkOne: "Vector7", titleOne: "Consultation", watermarkTwo: "Vector8", titleTwo: "Diet Chart")
                
                Image("Rectangle 5920")
                    .overlay(Text("\"NEVER GIVE UP GREAT THINGS   TAKE TIME\"")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30)))
            }
            .padding(.all)
        }
    }
}
