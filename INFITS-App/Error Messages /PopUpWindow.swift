//
//  PopUpWindow.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct PopUpWindow: View {
    var image:String
    var message: String
//    var buttonText: String
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            if show {
                // PopUp background color
                Color.gray.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                // PopUp Window
                VStack(alignment: .center, spacing: 0) {
                    Image(image)
                        .padding(.top, 10)
                     
                    Text(message)
                        .multilineTextAlignment(.center)
                        .font(Font.custom("NATS 400", size: 20))
                        .padding()
                        .foregroundColor(Color.white)
                }
                .frame(maxWidth: 300)
                .background(Color(red: 255 / 255, green: 119 / 255, blue: 119 / 255).opacity(1))
                .cornerRadius(15)
            }
        }
    }
}
struct PopUpWindow_Previews: PreviewProvider {
    static var previews: some View {
        PopUpWindow(image: "Approval", message: "Meal Tracker and Breakfast Calories updated!", show: .constant(false))
    }
}
