//
//  CheckMailView.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 13/02/23.
//

import SwiftUI

struct CheckMailView: View {
    
    @Binding var path : NavigationPath
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 88 / 255, green: 132 / 255, blue: 254 / 255),
                Color(red: 218 / 255, green: 117 / 255, blue: 236 / 255)
            ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                VStack{
                    Image("check-email")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .padding(.vertical, 40)
                    
                    Text("Check your email")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(Font.custom("NATS 400", size: 40))
                        .frame(alignment: .center)
                        .padding(.vertical, 20)
                    
                    Text("We have sent password recovery instruction to your email")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(Font.custom("NATS 400", size: 16))
                        .lineLimit(nil)
                        .lineSpacing(5)
                        .multilineTextAlignment(.center)
                        .frame(width: UIScreen.main.bounds.width - 70)
                    
                    //Back to login page
                    HStack{
                            Button(action: {
                                path.append(NavigationType.login)
                            }) {
                                Image(systemName: "arrow.backward.circle.fill")
                                    .foregroundColor(Color.white)
                                    .frame(width: 40, height: 40, alignment: .center)
                                    .fontWeight(.bold)
                                    .font(.system(size: 40))
                                    .padding(.trailing, 15)
                                Text("Back to Login")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(Font.custom("NATS 400", size: 26))
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                        }
                    
                }
                
               
                
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            }
        }
    }
}

struct CheckMailView_Previews: PreviewProvider {
    static var previews: some View {
        CheckMailView(path: .constant(NavigationPath()))
    }
}
