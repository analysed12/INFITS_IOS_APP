//
//  SocialMediaLoginView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 06/04/23.
//

import SwiftUI
import GoogleSignIn
import Firebase
import FacebookLogin


struct SocialMediaLoginView: View {
    
    @State var isLoading:Bool = false
    @State var error = ""
    @Binding var path : NavigationPath
    
    @AppStorage("log_Status") var log_Status = false
    
    //GogleSignIn
    @State var isLoggedIn: Bool = false
    @State var profileUrl: String = ""
    @State var userName: String = ""
 
    var body: some View {
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
                //                signInWithFb()
            }) {
                HStack {
                    Image("facebook")
                }
            }
            
            
        }
    }
    
    //Google SignIn Function
    func signInWithGoglePage() {
        //get app client id
        
        guard let clientId = FirebaseApp.app()?.options.clientID else {return}
        
        let configure = GIDConfiguration(clientID: clientId)
         
        isLoading =  true
        GIDSignIn.sharedInstance.configuration = configure
        
        //signin method goes here
        GIDSignIn.sharedInstance.signIn(withPresenting: Application_utility.rootViewControler){ [self] user, error in
            if let error = error{
                isLoading = false
                print(error.localizedDescription)
                return
            }
            else{
                if(GIDSignIn.sharedInstance.currentUser != nil){
                    let user = GIDSignIn.sharedInstance.currentUser
                     
                    guard let user = user else { return }
                    let userId = user.userID
                    let fullName = user.profile?.name
                    let givenName = user.profile?.givenName
                    let familyName = user.profile?.familyName
                    let password = user.profile?.email
                    let email = user.profile?.email
                    
                    print(userId ?? "userid")
                    print(fullName ?? "fullname")
                    print(givenName ?? "givenname")
                    print(familyName ?? "familyname")
                    print(password ?? "password")
                    print(email ?? "email")
                    
//                    GIDSignIn.sharedInstance.restorePreviousSignIn()
//                    
//                    GIDSignIn.sharedInstance.hasPreviousSignIn()
                    
                    var profilePicUrl = user.profile!.imageURL(withDimension: 100)!.absoluteString
                    userName = givenName ?? ""
                    profileUrl =  profilePicUrl
                    isLoading = true
                    
                }else{
                    isLoggedIn = false
                    userName = "Not Logged In"
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

struct SocialMediaLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaLoginView(path: .constant(NavigationPath()))
    }
}


 
