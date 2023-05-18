//
//  LoginView.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 10/02/23.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift
import Firebase


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
    //Navigation
    @Binding var path : NavigationPath
    
    //Google Sign
    @AppStorage("log_Status") var log_Status = false
    @State var googleUserName: String = ""
    @State var profileUrl: String = ""
    @State var isLoggedIn: Bool = false
    @State var isLoading:Bool = false

    
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
                //TextFeild Group
                Group {
                    TextFieldCustom(placeHolder: "UserName", text: $userName)
                    
                    HStack(spacing: 15) {
                        ZStack {
                            if self.visible{
                                
                                TextFieldCustom(placeHolder: "Enter Password", text: self.$password)
 
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
                                    SecureField("Enter Password", text: self.$password, prompt: Text("Enter Password").foregroundColor(.white))
                                        .padding(.horizontal, 10)
                                        .foregroundColor(.white)
                                }
                                .frame(maxWidth: .infinity,
                                       maxHeight: 55,
                                       alignment: .topLeading)
                            }
 
                        }// textfeildZstack
                    } //end
                    
                    HStack {
                        
                        Spacer()
                        Button(action: {
                            print("Forget Password")
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
                .padding(.horizontal, 15)
                .padding(.vertical, 15)
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
                    //Socile Media Button
//                    HStack {
//                        //Gogle SignIn
//                        HStack{
//                            if log_Status {
//                                //home screen
////                                path.append(NavigationType.testView)
//
//                            } else {
//                                SocialMediaLoginView( path: .constant(NavigationPath()))
//                            }
//                        }
//
//                        //Facebook SignIn
//                        HStack{
//
//                        }
//                    }
                    
                    HStack(spacing: 5) {
                        
                        Button(action: {
                            signInWithGoglePage()
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
                        
                        // fb SIgnin
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
                }//Register Btn end
            }
            
            if self.alert {
                ErrorView(alert: self.$alert, error: self.$error)
            } else {
                
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    //Validation
    func verify() {
        
        if self.userName != "" && self.password != "" {
                postdata()
        } else {
            self.error = "Please Enter User Name or Password"
            self.alert.toggle()
        }
    }
    
    // Json parsing code
    func postdata() {
        
        let loginModel = LoginModel(userID: self.userName, password: self.password)
        APIManager.shareInstance.callingLoginApi(login: loginModel) { result in
            switch result {
            case .success(let json):
                print(json as AnyObject)
                log_Status =  true
                path.append(NavigationType.homeScreen)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }

    }
    
    //GoogleSign In
    func signInWithGoglePage() {
        //get app client id
        
        guard let clientId = FirebaseApp.app()?.options.clientID else {return}
        
        //GoogleSIgnin Configuration Object
        let configure = GIDConfiguration(clientID: clientId)
         
//        isLoading =  true
        GIDSignIn.sharedInstance.configuration = configure
        
        //signin method goes here
        GIDSignIn.sharedInstance.signIn(withPresenting: Application_utility.rootViewControler){ [self] user, error in
            if let error = error{
                isLoading = false
                print(error.localizedDescription)
                return
            }
            else{
                GIDSignIn.sharedInstance.restorePreviousSignIn(){ user,error in
                    print("New User")
                    print(user)
                }
                
                GIDSignIn.sharedInstance.hasPreviousSignIn()
                
               
                if(GIDSignIn.sharedInstance.currentUser != nil) {
                    let user = GIDSignIn.sharedInstance.currentUser

                    guard let user = user else { return }
                    let userId = user.userID
                    let fullName = user.profile?.name
                    let givenName = user.profile?.givenName
                    let familyName = user.profile?.familyName
                    let email = user.profile?.email


                    let registerModel = RegisterModel(email: email ?? "", password: "", userID: userId ?? "", name: fullName ?? "", phone: "", gender: "", age: "", height: "", weight: "", verification: "", dietitianuserID: "", location: "")

                    APIManager.shareInstance.getSignupData(register: registerModel) { (isSuccess) in
                        print(registerModel)

                        if isSuccess{
                            self.error = "Data is successfullySaved"
                            path.append(NavigationType.homeScreen)
                        } else {
                            self.error = "Data Not Saved"
                        }
                    }
                     
                    
                    var profilePicUrl = user.profile!.imageURL(withDimension: 100)!.absoluteString
                    googleUserName = givenName ?? ""
                    profileUrl =  profilePicUrl
                    isLoading = true
                    
                }else{
                    isLoggedIn = false
                    googleUserName = "Not Logged In"
                    profileUrl =  ""
                }
            }
             

            
            guard let user = user?.user, let idToken  = user.idToken else {
                isLoading = false
                return
            }
            
            let accessToken  = user.accessToken
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)
            
            Auth.auth().signIn(with: credential){ res, error in
                self.isLoading = false
                
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                
                guard let user  = res?.user else{return}
                
                print(user.displayName ?? "Success!")
                
                // updating user as Logged In
                withAnimation {
                    log_Status = true
                }
                
            }
        }
        
    }
    
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(path: .constant(NavigationPath()))
    }
}



