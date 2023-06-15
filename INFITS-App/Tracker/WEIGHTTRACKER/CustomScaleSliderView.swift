//
//  CustomScaleSliderView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 06/05/23.
//

import SwiftUI

struct CustomScaleSliderView: View {
    @Binding var value :Double
    var range:ClosedRange<Double> = 1...100
    
    var body: some View {
        VStack(spacing: 0){
            ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)){
                HStack(spacing: (UIScreen.main.bounds.width - 160) / 55) {
                    ForEach(0..<51, id: \.self){ index in
                        Rectangle()
                            .fill(index % 5 == 0 ? Color.black.opacity(0.55) : Color.black.opacity(0.3))
                            .frame(width: 2, height:  index % 5 == 0 ? 28:12)
                    }
                }
                SliderView(value: $value, sliderRange:  range, thumbColor: .purple, minTrackColor: .clear, maxTrackColor: .clear)
                    .padding(.horizontal, 20)
                    .frame(height: 35)
                
            }
        }
    }
}

struct CustomScaleSliderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomScaleSliderView(value: .constant(100.0), range: 100...300)
    }
}
