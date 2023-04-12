//
//  LoginView.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 10/02/23.
//

import SwiftUI
import  Firebase

struct LoginView: View {
    @State private var userName = ""
    @State private var password = ""
    
    @State private var showingPopover:Bool = false
    @State private var visible:Bool = false
    @State private var color = Color.white.opacity(0.7)
    
//    @Binding var show : Bool
    @State var alert = false
    @State var error = ""
    
    @State private var width = CGFloat.zero
    @State private var labelWidth = CGFloat.zero
    
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
            
            VStack {
                Image("Infit transparent 2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Group {
                    TextFieldCustom(placeHolder: "UserName", text: $userName)
                    
                        .padding(.leading, 15)
                    
                        .padding(20)
                        .padding(.bottom, 25)
                    
                    HStack(spacing: 15) {
                        ZStack {
                            if self.visible{
                                
                                TextFieldCustom(placeHolder: "Enter Password", text: self.$password)
                                
                                    .padding(.trailing, 20)
                                    .padding(.leading, 30)
                                    .padding(.bottom, 5)
                            } else {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 5)
                                        .trim(from: 0, to: 0.549)
                                        .stroke(.white, lineWidth: 2)
                                    RoundedRectangle(cornerRadius: 5)
                                        .trim(from: 0.67,  to: 1)
                                        .stroke(.white, lineWidth: 2)
                                    Text("Password")
                                        .position(x:63)
                                        .foregroundColor(.white)
                                    SecureField("Password", text: self.$password)
                                        .padding(.leading)
                                }
//                                .padding(.trailing, 20)
                                .padding(.leading, 10)
                                .padding(.bottom, 5)
                                
                                .frame(maxWidth: .infinity,
                                       maxHeight: 55,
                                       alignment: .topLeading)
                                
                                
                                
                                
                                //                                SecureField("Enter Password", text: self.$password)
                                //                                    .padding()
                                //                                    .background {
                                //                                        ZStack {
                                //                                            RoundedRectangle(cornerRadius: 5)
                                //                                                .trim(from: 0, to: 0.55)
                                //                                                .stroke(.white, lineWidth: 2)
                                //                                            RoundedRectangle(cornerRadius: 5)
                                //                                                .trim(from: 0.565 + (0.43 * (labelWidth / width)), to: 1)
                                //                                                .stroke(.white, lineWidth: 2)
                                //                                        }
                                //                                    }
                                //                                    .overlay( GeometryReader { geo in Color.clear.onAppear { width = geo.size.width }})
                                //                                    .onChange(of: width) { _ in
                                //                                        print("Width: ", width)
                                //                                    }
                                //                                    .onChange(of: labelWidth) { _ in
                                //                                        print("labelWidth: ", labelWidth)
                                //                                    }
                                .padding(.trailing, 20)
                                .padding(.leading, 20)
                                .padding(.bottom, 5)
                                
                            }
                            //Eye Button
//                            Button(action: {
//                                self.visible.toggle()
//                            }) {
//                                Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
//                                    .foregroundColor(self.color)
//                                    .padding(.trailing, 10)
//                                    .frame(maxWidth: .infinity,
//                                           alignment: .trailing)
//                                    .padding(.trailing, 30)
//                            }
//                            .frame(alignment: .trailing)
                        }// textfeildZstack
                    } //end
                    
                    
                    
                    HStack {
                        
                        Spacer()
                        Button(action: {
                            path.append(NavigationType.forgetpassword)
                        }) {
                            Text("Forget Password?")
                                .foregroundColor(Color.white)
                                .fontWeight(.medium)
                                .font(Font.custom("NATS 400", size: 16))
                            
                        }
                    }
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                    .padding(.bottom, 30)
                }
                
                HStack {
                    
                    Button(action: {
                        print("Round Action")
                        self.verify()
                    }) {
                        Text("Login")
                            .frame(width: UIScreen.main.bounds.width - 50, height: 50)
                            .background(Color.white)
                            .foregroundColor(Color(red: 47 / 255, green: 61 / 255, blue: 150 / 255) .opacity(1))
                        
                            .font(Font.custom("NATS 400", size: 20))
                            .fontWeight(.medium)
                    }
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                }
                
                
                ZStack {
                    HStack{
                        Image("Left-line")
                        
                        Text("Or contiune with ")
                            .foregroundColor(Color.white)
                            .font(Font.custom("NATS 400", size: 16))
                        
                        Image("right-line")
                    }
                }
                
                ZStack {
                    
                    HStack {
                        Button(action: {
                            print("Google Button Action")
                        }) {
                            HStack {
                                Image("google")
                            }
                        }
                        Button(action: {
                            print("Twitter Button action")
                        }) {
                            HStack {
                                Image("twitter")
                                
                            }
                        }
                        
                        Button(action: {
                            print("Facebook Button action")
                            
                        }) {
                            HStack {
                                Image("facebook")
                            }
                        }
                    }
                }
                
                Button(action: {
                    path.append(NavigationType.signup)
                }) {
                    HStack {
                        Text("Register for new account")
                            .foregroundColor(Color.white)
                            .font(Font.custom("NATS 400", size: 18))
                            .background(
                                Color.white
                                    .frame(height: 1) // underline's height
                                    .offset(y: 15) // underline's y pos
                            )
                    }
                    .padding(.vertical, 10)
                }
            }
            
            if self.alert {
                ErrorView(alert: self.$alert, error: self.$error)
            } else {
                
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    func verify(){
        if self.userName != "" && self.password != "" {
            
        } else {
            self.error = "Please Enter User Name or Password"
            self.alert.toggle()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(path: .constant(NavigationPath()))
    }
}



