//
//  ContentView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 10/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SplashScreen(path: .constant(NavigationPath()))
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
