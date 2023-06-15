//
//  WeightPastActivityView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 03/05/23.
//

import SwiftUI

struct WeightPastActivityView: View {
    var col: Color

     var body: some View {
        Color.white
            .ignoresSafeArea()
            .overlay(
        ScrollView {
            VStack {
                Button{
                    
                }label: {
                    Image(systemName: "control")
                        .foregroundColor(Color(red: 73 / 255, green: 183 / 255, blue: 74 / 255) .opacity(1))
                        .background(col)
                        
                }.padding(.bottom)
                HStack {
                    Image("HLine")
                         .frame(maxWidth: .infinity, alignment:.leading)
                     Text("PAST ACTIVITY")
                        .font(Font.custom("NATS 400", size: 15))
                        .bold()
                        .foregroundColor(.black)
                    Image("HLine")
                         .frame(maxWidth: .infinity, alignment:.trailing)
                 }
                .padding(.bottom, 20)
                .frame(maxWidth: .infinity, alignment:.center)
                ForEach(0..<10) {num in
                    WeightActivityList(num: num, col: col)
                }
                Spacer()
            }
            .padding(.horizontal)
             .padding(.vertical, 20)
         })
    }
    
}

struct WeightPastActivityView_Previews: PreviewProvider {
    static var previews: some View {
        WeightPastActivityView(col: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255) .opacity(0.1))
    }
}

struct WeightActivityList: View {
    var num: Int
    var col: Color
    var body: some View {
        Rectangle()
            .cornerRadius(10)
            .frame(height: 50)
            .foregroundColor(Color(red: 0.12, green: 0.71, blue: 0.53))
            .overlay(HStack {
                Text("\(num) Glasses")
                    .font(Font.custom("NATS 400", size: 20))
                Spacer()
                VStack {
                    Text("15/02/22")
                        .font(Font.custom("NATS 400", size: 14))
                    Text("09 : 00 AM")
                        .font(Font.custom("NATS 400", size: 14))
                }.padding(.trailing)
                Button{
                    print("Button Pressed")
                } label: {
                    Image("dot-menu")
                }
            }
            .foregroundColor(.white)
            .padding(.leading)
            .padding(.trailing))
    }
}
