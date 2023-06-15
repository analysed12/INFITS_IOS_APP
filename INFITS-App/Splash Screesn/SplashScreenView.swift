//
//  SplashScreen.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 09/02/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var path = NavigationPath()
    @AppStorage("log_Status") var log_Status = false
    
    var body: some View {
        NavigationStack(path: $path){
            if isActive  {
                SplashScreen(path: $path)
                    .navigationDestination(for: NavigationType.self) { value in
                        switch value{
                        case .splash :
                            SplashScreen(path: $path)
                        case .signup:
                            SignupView(path: $path)
                        case .login:
                            LoginView(path: $path)
                        case .termsnc:
                            TermsView(path: $path)
                        case .forgetpassword:
                            ForgetPassword(path: $path)
                        case .checkEmail :
                            CheckMailView(path: $path)
                        case .homeScreen :
                            HomeScreen(path: $path)
                        case .ConfirmFoodSecction:
                            ConfirmFoodSecction(path: $path)
                        case .stepTracker :
                            StepTracker(path: $path)
                        case .HeartRateView:
                            HeartRateView(path: $path)
                        case .WeightTracker:
                            WeightTracker(path:$path)
                        case .ProfileSettings:
                            ProfileSettings(path:$path)
                        case .LiveSession :
                            LiveSession(path: $path)
                        case .sleepTracker :
                            SleepTrackerView(path: $path)
                        case .CalorieTracker :
                            CalorieTrackerView(path: $path)
                        case .waterTracker :
                            WaterTrackerView(path: $path)
                        }
                    }
            } else {
                VStack {
                    VStack {
                        Image("Infit transparent")
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 1.5
                            self.opacity = 1.0
                        }
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            if log_Status {
                                path.append(NavigationType.homeScreen)
                            }
                            else{
                                isActive = true
                            }
                        }
                    }
                }
                .navigationDestination(for: NavigationType.self) { value in
                    switch value{
                    case .splash :
                        SplashScreen(path: $path)
                    case .signup:
                        SignupView(path: $path)
                    case .login:
                        LoginView(path: $path)
                    case .termsnc:
                        TermsView(path: $path)
                    case .forgetpassword:
                        ForgetPassword(path: $path)
                    case .checkEmail :
                        CheckMailView(path: $path)
                    case .homeScreen :
                        HomeScreen(path: $path)
                    case .stepTracker :
                        StepTracker(path: $path)
                    case .ConfirmFoodSecction :
                        ConfirmFoodSecction(path: $path)
                    case .HeartRateView :
                        HeartRateView(path: $path)
                    case .WeightTracker :
                        WeightTracker(path:$path)
                    case .ProfileSettings :
                        ProfileSettings(path: $path)
                    case .LiveSession :
                        LiveSession(path: $path)
                    case .sleepTracker :
                        SleepTrackerView(path: $path)
                    case .CalorieTracker :
                        CalorieTrackerView(path: $path)
                    case .waterTracker :
                        WaterTrackerView(path: $path)
                    }
                }
            }
        }
             
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
