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
    
    
    @Binding var showPopUp: Bool
//    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            if showPopUp {
                
                // PopUp background color
//                Color.gray.opacity(showPopUp ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                // PopUp Window
                VStack(alignment: .center, spacing: 0) {
                    Button{
                        self.showPopUp.toggle()
                    } label: {
                         Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .foregroundColor(.white)
                        .clipShape(Circle())
                        .offset(x:150, y: 5)
                    
                    
                    Image(image)
                        .padding(.top, 10)
                    
                     
                    Text(message)
                        .multilineTextAlignment(.center)
                        .font(Font.custom("NATS 400", size: 25))
                        .padding()
                        .foregroundColor(Color.white)
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50)
                .background(Color(red: 255 / 255, green: 119 / 255, blue: 119 / 255).opacity(1))
                .cornerRadius(15)
            } else {

                Button {

                    withAnimation {
                        self.showPopUp.toggle()
                    }
                    print("Hello button tapped!")
                } label: {
                    Text("Done")
                        .font(Font.custom("NATS 400", size: 20))
                        .frame(width: 132, height: 45, alignment: .center)
                        .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255).opacity(1))
                        .background(.white)

                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.25), radius: 15, x: 0, y: 2)
                }
            }
        }
    }
}
struct PopUpWindow_Previews: PreviewProvider {
    static var previews: some View {
        PopUpWindow(image: "Approval", message: "Meal Tracker and Breakfast Calories updated!", showPopUp: .constant(false))
    }
}
