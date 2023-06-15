//
//  MealsView.swift
//  Infits
//
//  Created by utkrisht chauhan on 02/02/23.
//

import SwiftUI

struct MealsView: View {
    var body: some View {
        VStack{
            
            Button {
                
            } label: {
                Image(systemName: "control")
                    .foregroundColor(Color(red: 1.003, green: 0.617, blue: 0.24))
                    .padding(.top)
            }
            HStack{
                VStack{
                    Divider()
                        .frame(height: 2)
                        .overlay(Color(red: 0.96, green: 0.794, blue: 0.275))
                        .padding(.leading)
                }
                Text("ADD MEALS")
                    .foregroundColor(.black)
                VStack{
                    Divider()
                        .frame(height: 2)
                        .overlay(Color(red: 0.96, green: 0.794, blue: 0.275))
                        .padding(.trailing)
                }
            }
            .padding(.top)
            
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width-50,height: 120)
                Circle()
                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.993))
                    .frame(width: 90)
                    .position(x:30,y:20)
                Arc(rad: 220, sangle: 10, eangle: 120, clckwise: false)
                    .stroke(lineWidth: 2)
                    .position(x:UIScreen.main.bounds.width/2 - 105,y:-120)
                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.993))
                Image("breakfast")
                    .resizable()
                    .frame(width: 120,height: 100)
                    .position(x:UIScreen.main.bounds.width-110,y:50)
                HStack {
                    VStack(alignment: .leading){
                        Spacer()
                        Text("Breakfast")
                            .font(.custom("NATS 400", size: 20))
                            .padding(.bottom,0.5)
                        Text("Select your breakfast meal")
                            .font(.custom("NATS 400", size: 12))
                        Spacer()
                        Button {
                            
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 75,height: 30)
                                    .cornerRadius(5)
                                HStack{
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 12,height: 12)
                                    Text("Add")
                                        .font(.custom("NATS 400", size: 17))
                                        
                                }
                                .foregroundColor(.white)
                            }
                        }
                        Spacer()

                    }
                    .foregroundColor(Color(red: 0.999, green: 0.524, blue: 0.069))
                    Spacer()
                }
                .padding(.leading,20)
            }
            .cornerRadius(10)
            .padding(.top,40)
            .frame(width: UIScreen.main.bounds.width-50,height: 120)
            .shadow(color:.gray,radius: 4,y: 3)
            
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width-50,height: 120)
                Circle()
                    .foregroundColor(Color(red: 1.002, green: 0.923, blue: 0.92))
                    .frame(width: 90)
                    .position(x:UIScreen.main.bounds.width-85,y:100)
                Arc(rad: 220, sangle: 0, eangle: 120, clckwise: true)
                    .stroke(lineWidth: 2)
                    .position(x:240,y:230)
                    .foregroundColor(Color(red: 1.002, green: 0.923, blue: 0.92))
                Image("lunch")
                    .resizable()
                    .frame(width: 120,height: 100)
                    .position(x:60,y:70)
                HStack {
                    Spacer()
                    VStack(alignment: .leading){
                        Spacer()
                        Text("Lunch")
                            .font(.custom("NATS 400", size: 20))
                            .padding(.bottom,0.5)
                        Text("Select your lunch meal")
                            .font(.custom("NATS 400", size: 12))
                        Spacer()
                        Button {
                            
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 75,height: 30)
                                    .cornerRadius(5)
                                HStack{
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 12,height: 12)
                                    Text("Add")
                                        .font(.custom("NATS 400", size: 17))
                                        
                                }
                                .foregroundColor(.white)
                            }
                        }
                        Spacer()

                    }
                    .foregroundColor(Color(red: 0.999, green: 0.524, blue: 0.069))
                    Spacer()
                }
                .padding(.leading,20)
            }
            .cornerRadius(10)
            .padding(.top,40)
            .frame(width: UIScreen.main.bounds.width-50,height: 120)
            .shadow(color:.gray,radius: 4,y: 3)
            
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width-50,height: 120)
                Circle()
                    .foregroundColor(Color(red: 0.995, green: 0.911, blue: 0.773))
                    .frame(width: 90)
                    .position(x:30,y:20)
                Arc(rad: 220, sangle: 10, eangle: 120, clckwise: false)
                    .stroke(lineWidth: 2)
                    .position(x:UIScreen.main.bounds.width/2 - 105,y:-120)
                    .foregroundColor(Color(red: 0.995, green: 0.911, blue: 0.773))
                Image("snacks")
                    .resizable()
                    .frame(width: 120,height: 100)
                    .position(x:UIScreen.main.bounds.width-110,y:50)
                HStack {
                    VStack(alignment: .leading){
                        Spacer()
                        Text("Snacks")
                            .font(.custom("NATS 400", size: 20))
                            .padding(.bottom,0.5)
                        Text("Select your snacks meal")
                            .font(.custom("NATS 400", size: 12))
                        Spacer()
                        Button {
                            
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 75,height: 30)
                                    .cornerRadius(5)
                                HStack{
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 12,height: 12)
                                    Text("Add")
                                        .font(.custom("NATS 400", size: 17))
                                        
                                }
                                .foregroundColor(.white)
                            }
                        }
                        Spacer()

                    }
                    .foregroundColor(Color(red: 0.999, green: 0.524, blue: 0.069))
                    Spacer()
                }
                .padding(.leading,20)
            }
            .cornerRadius(10)
            .padding(.top,40)
            .frame(width: UIScreen.main.bounds.width-50,height: 120)
            .shadow(color:.gray,radius: 4,y: 3)
            
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width-50,height: 120)
                Circle()
                    .foregroundColor(Color(red: 0.997, green: 0.947, blue: 0.84))
                    .frame(width: 90)
                    .position(x:UIScreen.main.bounds.width-85,y:100)
                Arc(rad: 220, sangle: 0, eangle: 120, clckwise: true)
                    .stroke(lineWidth: 2)
                    .position(x:240,y:230)
                    .foregroundColor(Color(red: 0.997, green: 0.947, blue: 0.84))
                Image("dinner")
                    .resizable()
                    .frame(width: 120,height: 100)
                    .position(x:60,y:70)
                HStack {
                    Spacer()
                    VStack(alignment: .leading){
                        Spacer()
                        Text("Dinner")
                            .font(.custom("NATS 400", size: 20))
                            .padding(.bottom,0.5)
                        Text("Select your dinner meal")
                            .font(.custom("NATS 400", size: 12))
                        Spacer()
                        Button {
                            
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 75,height: 30)
                                    .cornerRadius(5)
                                HStack{
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 12,height: 12)
                                    Text("Add")
                                        .font(.custom("NATS 400", size: 17))
                                        
                                }
                                .foregroundColor(.white)
                            }
                        }
                        Spacer()

                    }
                    .foregroundColor(Color(red: 0.999, green: 0.524, blue: 0.069))
                    Spacer()
                }
                .padding(.leading,20)
            }
            .cornerRadius(10)
            .padding(.top,40)
            .frame(width: UIScreen.main.bounds.width-50,height: 120)
            .shadow(color:.gray,radius: 4,y: 3)
            

            
        }
    }
}

struct MealsView_Previews: PreviewProvider {
    static var previews: some View {
        MealsView()
    }
}
