//
//  ProgressBar.swift
//  Meal Tracker
//
//  Created by Rajni Banduni on 25/03/23.
//

import SwiftUI
 

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(red: 247 / 255, green: 208 / 255, blue: 248 / 255).opacity(1))
                
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
//                    .foregroundColor(Color(UIColor.systemBlue))
                    .foregroundStyle( LinearGradient(
                        colors: [
                            Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                            Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                    }
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
}



struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(value: .constant(0.4))
    }
}

