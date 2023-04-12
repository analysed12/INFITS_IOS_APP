//
//  ChangePassword.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 13/02/23.
//

import SwiftUI

struct ChangePassword: View {
    @State private var currentPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    @State private var visible:Bool = false

    @Binding var path : NavigationPath

    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 88 / 255, green: 132 / 255, blue: 254 / 255),
                Color(red: 218 / 255, green: 117 / 255, blue: 236 / 255)
            ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            .ignoresSafeArea()
            
            ZStack {
                
                VStack{
                    Image("forget-password")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width - 200)
                        .padding(20)
                    Text("Create new password")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(Font.custom("NATS 400", size: 40))
                        .padding(2)
                    
                    Text("Your new password must be different from previously used passwords.")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(Font.custom("NATS 400", size: 16))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .lineLimit(nil)
                        .lineSpacing(5)
                        .multilineTextAlignment(.center)
                        .padding(20)
                    
                    Group {
                        TextFieldCustom(placeHolder: "Enter Current Password", text: $currentPassword)
                            .padding(20)
                        
                        TextFieldCustom(placeHolder: "Enter New Password", text: $newPassword)
                            .padding(20)
                        
                        TextFieldCustom(placeHolder: "Confirm Your Password", text: $confirmPassword)
                            .padding(20)
                    }
                    
                    HStack {
                        Toggle("", isOn: $visible)
                            
                            .toggleStyle(iOSCheckboxToggleStyle())
                        
                        Text("Keep me logged in. ")
                            .foregroundColor(Color.white)
                            .font(Font.custom("NATS 400", size: 12))
                            .buttonStyle(BorderlessButtonStyle())
                            .foregroundColor(Color(red: 37 / 255, green: 67 / 255, blue: 150 / 255) .opacity(1))
                            .padding(.bottom, 20)
                            .padding(.top, 20)
                    }
                    
                    HStack{
                        
                        Button(action: {
                            print("Round Action")
                        }) {
                            Text("Create")
                                .frame(width: UIScreen.main.bounds.width - 50, height: 50)
                                .background(Color.white)
                                .foregroundColor(Color(red: 47 / 255, green: 61 / 255, blue: 150 / 255) .opacity(1))
                                .font(Font.custom("NATS 400", size: 20))
                                .fontWeight(.bold)
                        }
                        .cornerRadius(10)
                        .padding(.bottom, 20)
                    }
                    .padding(.horizontal, 20)
                }
            }
                    
            }
        }
    }
    
    struct iOSCheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            Button(action: {
                configuration.isOn.toggle()
            }, label: {
                HStack {
                    Image(systemName: configuration.isOn ? "checkmark.square" : "circle")
                        .foregroundColor((Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255) .opacity(1)))
                        .frame(width: 10, height: 10)
                    configuration.label
                }
            })
        }
}


struct ChangePassword_Previews: PreviewProvider {
    static var previews: some View {
        ChangePassword(path: .constant(NavigationPath()))
    }
}
