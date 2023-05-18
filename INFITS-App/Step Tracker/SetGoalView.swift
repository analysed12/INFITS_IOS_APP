//
//  SetGoalView.swift
//  Infits
//
//  Created by utkrisht chauhan on 27/01/23.
//

import SwiftUI

struct SetGoalView: View {
    @State private var name = ""
    var body: some View {
        VStack {
            Text("Set Daily Steps Goal")
                .font(.system(size: 20))
            .bold()
            
            TextField(
              "Hint Text",
              text: $name
            )
            .padding(.all)
            .frame(width: 150)
            .overlay(VStack{Divider().overlay(Color.black)
                .offset(x: 0, y: 15)})
            
        }
        
    }
}

struct SetGoalView_Previews: PreviewProvider {
    static var previews: some View {
        SetGoalView()
    }
}
