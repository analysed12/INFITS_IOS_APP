//
//  ProgressBarView.swift
//  Meal Tracker
//
//  Created by Rajni Banduni on 27/03/23.
//

import SwiftUI

struct ProgressBarView: View {
    @State var progressValue: Float = 0.3
    
    var body: some View {
        //Proteins Progressbar
        //Calories Progressbar
        VStack {
            
            ZStack {
                VStack {
                    HStack {
                        Text("Calories")
                            .font(Font.custom("NATS 400", size: 18))
                            .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                        Image("Calories")
                        Spacer()
                        Text("320 kCal")
                            .font(Font.custom("NATS 400", size: 16))
                            .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                    }
                    .padding(.horizontal, 20)
                    ProgressBar(value: $progressValue).frame(height: 20)
                        .padding(.horizontal, 15)
                }
                .frame(height:90)
                .background(Rectangle().fill(Color.white)
                    .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1))
                
            }
 
            //2nd
            ZStack {
                VStack {
                    HStack {
                        Text("Proteins")
                            .font(Font.custom("NATS 400", size: 18))
                            .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                        Image("Protein")
                        Spacer()
                        Text("300g")
                            .font(Font.custom("NATS 400", size: 16))
                            .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                    }
                    .padding(.horizontal, 20)
                    ProgressBar(value: $progressValue).frame(height: 20)
                        .padding(.horizontal, 15)
                }
                .frame(height:90)
                .background(Rectangle().fill(Color.white))
            }
            
            //3rd
            ZStack {
                VStack {
                    HStack {
                        Text("Fats")
                            .font(Font.custom("NATS 400", size: 18))
                            .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                        Image("Fat")
                        Spacer()
                        Text("140g")
                            .font(Font.custom("NATS 400", size: 16))
                            .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                    }
                    .padding(.horizontal, 20)
                    ProgressBar(value: $progressValue).frame(height: 20)
                        .padding(.horizontal, 15)
                }
                .frame(height:90)
                .background(Rectangle().fill(Color.white))
            }
            
            //4th
            ZStack {
                VStack {
                    HStack {
                        Text("Carbs")
                            .font(Font.custom("NATS 400", size: 18))
                            .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                        Image("Carbohydrates")
                        Spacer()
                        Text("140g")
                            .font(Font.custom("NATS 400", size: 16))
                            .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                    }
                    .padding(.horizontal, 20)
                    ProgressBar(value: $progressValue).frame(height: 20)
                        .padding(.horizontal, 15)
                }
                .frame(height:90)
                .background(Rectangle().fill(Color.white))
            }
        }.padding(.horizontal, 20)
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
