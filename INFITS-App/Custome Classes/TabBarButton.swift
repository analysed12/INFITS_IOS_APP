//
//  TabBarButton.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct TabBarButton: View {
    var tabTitle:String
    var isActive:Bool
    
    var body: some View {
        GeometryReader { geo in
            
            
            VStack (alignment: .center, spacing: 10) {
                Text(tabTitle)
                    .font(Font.custom("NATS 400", size: 25))
                if isActive {
                    Rectangle()
                        .foregroundColor(Color(red: 240 / 255, green: 163 / 255, blue: 68 / 255) .opacity(1))
                        .shadow(color:Color(#colorLiteral(red: 0.96, green: 0.71, blue: 0.4, alpha: 0.2)), radius: 4, x: 0, y: 2)
                        .frame(width: geo.size.width/2 , height: 2)
                        .padding(.horizontal, geo.size.width/4)
                }else {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: geo.size.width/2 , height: 2)
//                        .padding(.leading, geo.size.width/4)
                }
            }
            
            
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(tabTitle: "Frequent", isActive: true)
    }
}
