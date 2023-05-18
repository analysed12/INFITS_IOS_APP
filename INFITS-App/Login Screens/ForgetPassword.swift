//
//  ForgetPassword.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 12/02/23.
//

import SwiftUI

struct ForgetPassword: View {
    @State private var emailId = ""
    
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
            
            VStack {
                Image("forget-password")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width - 200)
                
                    
                
                Text("Forgot Password?")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(Font.custom("NATS 400", size: 40))
                    .font(.system(size: 40))
                    .padding(20)
                
                Text("Enter your registered email below to receive password reset instruction")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(Font.custom("NATS 400", size: 16))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .lineLimit(nil)
                    .lineSpacing(5)
                    .multilineTextAlignment(.center)
                    .padding(20)
                                
                Group {
                    TextFieldCustom(placeHolder: "Email ID", text: $emailId)
                        .padding(20)
                        .padding(.bottom, 25)
                }
                
                HStack {
                    
                    Button(action: {
                        path.append(NavigationType.checkEmail)
                    }) {
                        Text("Send")
                            .frame(width: UIScreen.main.bounds.width - 50, height: 50)
                            .background(Color.white)
                            .foregroundColor(Color(red: 47 / 255, green: 61 / 255, blue: 150 / 255) .opacity(1))

                            .font(Font.custom("NATS 400", size: 20))
                            .fontWeight(.medium)
                    }
                    .cornerRadius(10)
//                    .padding(.bottom, 20)
                }
                //Back to login page
                HStack {
                        Button(action: {
//                            path = NavigationPath()
//                            path.append(NavigationType.login)
                            path.removeLast()
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
            .padding(.top, 30)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ForgetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPassword(path: .constant(NavigationPath()))
    }
}
