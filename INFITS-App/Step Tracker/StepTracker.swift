//
//  StepTracker.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 13/04/23.
//

import SwiftUI

struct StepTracker: View {
    @Binding var path : NavigationPath

    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 255 / 255, green: 129 / 255, blue: 109 / 255),
                Color(red: 255 / 255, green: 100 / 255, blue: 22 / 255)
            ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            .ignoresSafeArea()
        }
    }
}

struct StepTracker_Previews: PreviewProvider {
    static var previews: some View {
        StepTracker(path: .constant(NavigationPath()))
    }
}
