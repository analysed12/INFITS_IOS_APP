//
//  SignupView.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 12/02/23.
//

import SwiftUI

struct SignupView: View {
    
    @State private var showingPopover:Bool = false
    @State private var revisible:Bool = false
    @State private var color = Color.white.opacity(0.7)
    
    @State var checked = false
    @State var alert = false
    @State private var visible:Bool = false
    @State var error = ""
    @Binding var path : NavigationPath
    
//    @ObservedObject var jsonProvider: CheckURL = CheckURL()
    
    //signup Model
    @State var name           = ""
   @State var userName        = "" // this is also a client userID
   @State var emailid         = ""
   @State var password        = ""
   @State var phoneno         = ""
   @State var age             = ""
   @State var gender          = ""
   @State var height          = ""
   @State var weight          = ""
   @State var verification    = ""
   @State var location        = ""
   @State var dietitianuserID = ""
    
    //     @State var signupViewModel = SignUpViewModel()
    
    
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
                        
                        TextFieldCustom(placeHolder: "Enter Full Name", text:$name)
                        
                        TextFieldCustom(placeHolder: "Enter User Name", text: $userName)
                        TextFieldCustom(placeHolder: "Enter Email Id", text: $emailid)
                        HStack(spacing: 15) {
                            ZStack {
                                if self.visible{
                                    
                                    TextFieldCustom(placeHolder: "Enter Password", text: $password)
                                    
                                } else {
                                    
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 5)
                                            .trim(from: 0, to: 0.550)
                                            .stroke(.white, lineWidth: 2)
                                        RoundedRectangle(cornerRadius: 5)
                                            .trim(from: 0.68,  to: 1)
                                            .stroke(.white, lineWidth: 2)
                                        Text("Enter Password")
                                            .font(Font.custom("NATS 400", size: 14))
                                            .position(x:69)
                                            .foregroundColor(.white)
                                        SecureField("Enter Password", text: self.$password, prompt: Text("Enter Password").foregroundColor(.white))
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 10)
                                    }
                                }
                                
                            }// textfeildZstack
                            .frame(height: 55)
                            
                        } //passord end
                        
                        TextFieldCustom(placeHolder: "Enter Phone Number", text: $phoneno)
                        
                            .keyboardType(.numberPad)
                        
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    
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
                    
                    HStack {
                        
                        Button(action: {
                            print("Signup button Pressed")
//                            print(phoneno)
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
                        path.removeLast()
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
    
    
    func verify() {
        
        if !name.isEmpty && !userName.isEmpty && !emailid.isEmpty && !phoneno.isEmpty && !password.isEmpty && emailid.isValidEmail && phoneno.isValidPhone {            
            postdata()
        }else {
            if name.isEmpty || userName.isEmpty || emailid.isEmpty || phoneno.isEmpty
                || password.isEmpty {
                
                self.error = "Cannot be empty"
            } else if  !emailid.isValidEmail {
                
                self.error = "Enter valid  email id"
            } else if  !phoneno.isValidPhone {
                self.error = "Enter valid phone number"
            }
            
            self.alert.toggle()
        }
    }
     
    // Json parsing code
    func postdata() {
        
        let resgiterModel = RegisterModel(email: emailid, password: password, userID: userName, name: name, phone: phoneno, gender: gender, age: age, height: height, weight: weight, verification: verification, dietitianuserID: dietitianuserID , location: location)
        APIManager.shareInstance.getSignupData(register: resgiterModel) { (isSuccess) in
            print(resgiterModel)

            if isSuccess{
                self.error = "Data is successfullySaved"
                path.append(NavigationType.login)
            } else {
                self.error = "Data Not Saved"
            }
        }
    }
    
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView(path: .constant(NavigationPath()))
    }
}
