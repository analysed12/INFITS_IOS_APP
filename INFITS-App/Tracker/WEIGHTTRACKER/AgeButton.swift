//
//  AgeButton.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 05/05/23.
//

import SwiftUI

struct AgeButton: View {
    var ageNumber:String
    @Binding var selectedAge:String
    @State var isSelectAge:Bool
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                self.isSelectAge.toggle()
                selectedAge = ageNumber
            }
        } label: {
            
            if isSelectAge {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(red: 18 / 255, green: 154 / 255, blue: 143 / 255))
                        .frame(width: 50, height: 50)
                    VStack{
                        Image("header-line")
                        Text(ageNumber)
                            .foregroundColor(.white)
                            .font(Font.custom("NATS 400", size: 26))
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                    }
                }
//                .onTapGesture {
//                                    self.action(false)
//                                }
//                .onTapGesture {
//                    isSelectAge = false
//                }
                
            } else {
                VStack {
                    //Divider()
                    //.frame(width: 20, alignment: .center)
                    
                    Text(ageNumber)
                        .foregroundColor(Color(red: 0.45, green: 0.55, blue: 0.58))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                    
                    //Divider()
                    //.frame(width: 20, alignment: .center)
                }
            }
        }
    }
}

struct AgeButton_Previews: PreviewProvider {
    static var previews: some View {
        AgeButton(ageNumber: "0", selectedAge:.constant("18"), isSelectAge: false)
    }
}
