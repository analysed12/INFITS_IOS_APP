//
//  SideMenuView.swift
//  Infits
//
//  Created by Chitrala Dhruv on 23/01/23.
//

import SwiftUI
import GoogleSignIn
import Firebase

struct SideMenuView: View {
    @AppStorage("log_Status") var log_Status = false
    //Navigation
    @Binding var path : NavigationPath
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image("infits Logo")
                        .padding(.leading, 22)
                        .padding(.top,15)
                    Spacer()
                }
                
                VStack {
                    listButton(name: "Dashboard")
                    listButton(name: "Charts")
                    listButton(name: "Live")
                    listButton(name: "Consultations")
                    listButton(name: "Scan")
                    listButton(name: "Recipies")
                    listButton(name: "Mail")
                    listButton(name: "Settings")
                    
                    HStack{
                        Button {
                            GIDSignIn.sharedInstance.signOut()
                            try? Auth.auth().signOut()
                            log_Status = false
                            path.append(NavigationType.login)
                            
                        } label: {
                            Image(systemName: "square.and.arrow.up.fill")
                                .foregroundColor(Color(red: 0.322, green: 0.322, blue: 0.322))
                                .font(.system(size: 30))
                                .padding(.trailing)
                            Text("Log Out")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.bottom, 25)
                    
                 }
                
                Spacer()
                HStack {
                    Image("profilePicture")
                        .cornerRadius(100)
                        .padding(.trailing, 10)
                    
                    VStack {
                        Text("John Wayne")
                            .font(.system(size: 20))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 1)

                        Text("Plan Name")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                }
                .padding(.leading)
                .padding(.bottom,10)
                
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(path: .constant(NavigationPath()))
    }
}

struct listButton: View {
    var name: String
    var body: some View {
        HStack {
            Button {
                print("Edit button was tapped")
            } label: {
                Image(name)
                    .padding(.trailing)
                Text(name)
                    .foregroundColor(.black)
                    .font(.system(size: 20))
            }
            Spacer()
        }
        .padding(.leading)
        .padding(.bottom, 25)
    }
}



//hie , I have one more issue , user signing through google then we get userID and user redirect in dashboard screen when user logout and again try signin  through same account then he get duplicate data error so how you manage in android
