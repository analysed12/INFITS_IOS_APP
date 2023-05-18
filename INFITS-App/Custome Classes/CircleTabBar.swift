//
//  CircleTabBar.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct CircleTabBar: View {
    var tabTitle:String
    var isActive:Bool
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack (alignment: .center, spacing: 10) {
                
                if isActive {
                    Text(tabTitle)
                        .font(Font.custom("NATS 400", size: 17))
                        .frame(width: 80, height: 35 )
                        .background( LinearGradient(gradient: Gradient(colors: [
                            Color(red: 255 / 255, green: 153 / 255, blue: 55 / 255),
                            Color(red: 236 / 255, green: 255 / 255, blue: 120 / 255)
                        ]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing))
                    
                   
                        .foregroundColor(.white)
                        .clipShape(Rectangle())
                        .cornerRadius(50)
                }else {
                    Text(tabTitle)
                        .font(Font.custom("NATS 400", size: 17))
                        .frame(width: 80, height: 35 )
                        .foregroundColor(.black)
                        .clipShape(Rectangle())
                        .cornerRadius(50)
                }
            }
            
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct CircleTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CircleTabBar(tabTitle: "Day", isActive: true)
    }
}
