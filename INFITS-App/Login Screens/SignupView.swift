//
//  SignupView.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 12/02/23.
//

import SwiftUI

struct SignupView: View {
    
    @State private var fullName = ""
    @State private var userName = ""
    @State private var emailid = ""
    @State private var password = ""
    @State private var phoneno = ""
    
    @State private var showingPopover:Bool = false
    @State private var revisible:Bool = false
    @State private var color = Color.white.opacity(0.7)
    
    @State var checked = false
    @State var alert = false
    @State var error = ""
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
                    Text("SIGN UP")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(Font.custom("NATS 400", size: 48))
                        .padding(20)
                    
                    Group {
                        TextFieldCustom(placeHolder: "Enter Full Name", text: $fullName)
                            .padding(20)
                        
                        TextFieldCustom(placeHolder: "Enter User Name", text: $userName)
                            .padding(20)
                        
                        TextFieldCustom(placeHolder: "Enter Email Id", text: $emailid)
                            .padding(20)
                        
                        TextFieldCustom(placeHolder: "Enter Password", text: $password)
                            .padding(20)
                        
                        TextFieldCustom(placeHolder: "Enter Phone Number", text: $phoneno)
                            .padding(20)
                    }
                    
                    ZStack {
                        HStack {
                            Toggle("", isOn: $revisible)
                            
                                .toggleStyle(iOSCheckboxToggleStyle())
                            
                            Text("I agree to Infit's ")
                                .foregroundColor(Color.white)
                                .font(Font.custom("NATS 400", size: 12))
                            Button(action: {
                                path.append(NavigationType.termsnc)
                            }){
                                Text("Terms and conditions.").underline()
                                    .font(Font.custom("NATS 400", size: 12))
                                
                            }
                            .padding(.top, 20)
                            .buttonStyle(BorderlessButtonStyle())
                            .foregroundColor(Color(red: 37 / 255, green: 67 / 255, blue: 150 / 255) .opacity(1))
                            .padding(.bottom, 20)
                            
                        }
                    }
                    
                    HStack{
                        
                        Button(action: {
                            print("Round Action")
                            self.verify()
                        }) {
                            Text("Create an Account")
                                .frame(width: UIScreen.main.bounds.width - 50, height: 50)
                                .background(Color.white)
                                .foregroundColor(Color(red: 47 / 255, green: 61 / 255, blue: 150 / 255) .opacity(1))
                                .font(Font.custom("NATS 400", size: 20))
                                .fontWeight(.medium)
                        }
                        .cornerRadius(10)
                        .padding(.bottom, 20)
                    }
                    Button(action: {
                        path.append(NavigationType.login)
                    }) {
                        HStack {
                            Text("Already a member? Log In")
                                .foregroundColor(Color.white)
                            .font(Font.custom("NATS 400", size: 18))                        }
                        .padding(.vertical, 10)
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
            
            if self.alert {
                ErrorView(alert: self.$alert, error: self.$error)
            } else {
                
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
    
    func verify(){
        if self.fullName != "" && self.userName != "" && self.emailid != "" && self.password != "" && self.phoneno != "" {
            
        } else {
            self.error = "Please Enter All Detail"
            self.alert.toggle()
        }
    }
    
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView(path: .constant(NavigationPath()))
    }
}
