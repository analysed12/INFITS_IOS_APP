//
//  CaloriesView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct CaloriesView: View {
    //tabSec
    @State var isSelectedCircleTab:CircleTabs = .day
 
    //chart
    public let values: [Double]
    public var colors: [Color]
    
    public var backgroundColor: Color
    public var image:[String]
     
    var slices: [PieSliceData] {
        let sum = values.reduce(0, +)
        var endDeg: Double = 0
        var tempSlices: [PieSliceData] = []
        
        for (i, value) in values.enumerated() {
            let degrees: Double = value * 360 / sum
        
            tempSlices.append(PieSliceData(startAngle: Angle(degrees: endDeg), endAngle: Angle(degrees: endDeg + degrees), image: self.image[i], text: String(format: "%.0f%%", value * 100 / sum), color: self.colors[i]))
            
            endDeg += degrees
        }
        return tempSlices
    }
    
    
    //Other
    @State var isSelected:Bool = false
  
    var body: some View {
        VStack {
            //Header Section
            HStack {
                Button(action: {
                    
                }) {
                    Image("Calorie-prev")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, 15)
                        .frame(width: 30, height: 30, alignment: .leading)
                }
                
                Text("Calories Burnt")
                    .font(Font.custom("NATS 400", size: 38))
                    .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255) .opacity(1))
                    .frame(maxWidth: .infinity, alignment: .center)
                 
            }
            
            //Tab Section with Calories List
            ZStack(alignment: .top) {
        CircleCustomTabbar(isSelectedCircleTab: $isSelectedCircleTab)
                
                if isSelectedCircleTab == CircleTabs.day{
                    
                    CaloriesBurntView(values: [500, 300, 300, 200], colors: [Color(red: 252 / 255, green: 255 / 255, blue: 114 / 255).opacity(1), Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1), Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1), Color(red: 255 / 255, green: 163 / 255, blue: 97 / 255).opacity(1)], backgroundColor: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255, opacity: 1.0), image: ["Cycling-white","Running-white", "Cycling-white", "Walking-white" ])
                } else if isSelectedCircleTab == CircleTabs.week{
                    CaloriesConsumedView(values: [500, 300, 300, 200], colors: [Color(red: 252 / 255, green: 255 / 255, blue: 114 / 255).opacity(1), Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1), Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1), Color(red: 255 / 255, green: 163 / 255, blue: 97 / 255).opacity(1)], backgroundColor: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255, opacity: 1.0), image: ["Cycling-white","Running-white", "Cycling-white", "Walking-white" ])
                } else if isSelectedCircleTab == CircleTabs.month {
                    CaloriesConsumedView(values: [500, 300, 300, 200], colors: [Color(red: 252 / 255, green: 255 / 255, blue: 114 / 255).opacity(1), Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1), Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1), Color(red: 255 / 255, green: 163 / 255, blue: 97 / 255).opacity(1)], backgroundColor: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255, opacity: 1.0), image: ["Cycling-white","Running-white", "Cycling-white", "Walking-white" ])
                }

            }
            .ignoresSafeArea()
            
        }
    }
}

struct CaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView(values: [1000, 300, 300, 200], colors: [Color(red: 252 / 255, green: 255 / 255, blue: 114 / 255).opacity(1), Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1), Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1), Color(red: 255 / 255, green: 163 / 255, blue: 97 / 255).opacity(1)], backgroundColor: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255, opacity: 1.0), image: ["Running-white", "Cycling-white", "Walking-white","Running-white" ])
    }
}
