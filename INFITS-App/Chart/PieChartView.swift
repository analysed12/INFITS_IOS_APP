//
//  PieChartView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct PieChartView: View {
    public let values: [Double]
    public var colors: [Color]
    public var image: [String]
    
    public var backgroundColor: Color
    
    var slices: [PieSliceData] {
        let sum = values.reduce(0, +)
        var endDeg: Double = 0
        var tempSlices: [PieSliceData] = []
        
        for (i, value) in values.enumerated() {
            let degrees: Double = value * 360 / sum
            tempSlices.append(PieSliceData(startAngle: Angle(degrees: endDeg), endAngle: Angle(degrees: endDeg + degrees), image: image[i], text: String(format: "%.0f%%", value * 100 / sum), color: self.colors[i]))
            endDeg += degrees
        }
        return tempSlices
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack{
                ForEach(0..<self.values.count){ i in
                    PieSliceView(pieSliceData: self.slices[i])
                }
                .frame(width: geometry.size.width, height: geometry.size.width)
            }
            .background(self.backgroundColor)
            .foregroundColor(Color.white)
        }
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView(values: [1000, 300, 300, 200], colors: [Color(red: 252 / 255, green: 255 / 255, blue: 114 / 255).opacity(1), Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1), Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1), Color(red: 255 / 255, green: 163 / 255, blue: 97 / 255).opacity(1)], image: ["Cycling-white","Running-white", "Cycling-white", "Walking-white" ], backgroundColor: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255, opacity: 1.0))

    }
}
