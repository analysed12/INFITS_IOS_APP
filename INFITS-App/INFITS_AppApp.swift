//
//  INFITS_AppApp.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 10/03/23.
//

import SwiftUI
import Firebase
import GoogleSignIn
import FacebookCore

@main
struct INFITS_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}

//Gogle SignIn

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
     return true
  }
    
    func application(_ application: UIApplication, open url:URL, options:[UIApplication.OpenURLOptionsKey:Any] = [:]) -> Bool {
 
        return GIDSignIn.sharedInstance.handle(url)
    }
    
    //fb Function
   
}
