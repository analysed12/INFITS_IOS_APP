//
//  ScaleDesignView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 05/05/23.
//

import SwiftUI

struct ScaleDesignView: View {
    @EnvironmentObject var model:OnboardingViewModel
    
    var title: String
    @Binding var value:Double
    
    var range:ClosedRange<Double> = 1...100
    var isHeightSection: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(title)
                    .padding(.leading, 15)
                    .font(Font.custom("NATS 400", size: 18))
                Spacer()
                Text("\(value, specifier: "%.0f")")
                    .padding(.trailing, 15)
                    .font(Font.custom("NATS 400", size: 24))
                
            }
            CustomScaleSliderView(value: $value, range: range)
            
        }
        .frame(height:100)
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal, 15)
        
    }
}

struct ScaleDesignView_Previews: PreviewProvider {
    static var previews: some View {
//        ScaleDesignView(model: "Title Goes here", title: .constant(100.0), value: .constant(100.0), range: 100...255)
        
        ScaleDesignView(title: "Title goes here", value: .constant(100.0), range: 100...250)
            .environmentObject(OnboardingViewModel())
    }
}
