//
//  CaloriesBurntView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//
// CaloriesView is the maine screen where you can see the whole design.

import SwiftUI

struct CaloriesBurntView: View {
    
    var CaloriesDataArray:[CaloriesData] =  CaloriesDataList.activitieList
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
    
    var body: some View {
       
        VStack {
            //Header Section
            HStack {

                Text(" ")
                    .font(Font.custom("NATS 400", size: 10))
                    .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255) .opacity(1))
//                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.vertical, 40)
                
            }
            
            //Chart
            VStack(alignment: HorizontalAlignment.center) {
                
                Text("Total Burnt Calories")
                    .font(Font.custom("NATS 400", size: 22))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                    .foregroundColor(.black)
                
                HStack  {
                    VStack (alignment: HorizontalAlignment.center){
                        //KCAl
                        HStack{
                            Text("825")
                            .font(Font.custom("NATS 400", size: 45))
                            Text("kcal")
                            .font(Font.custom("NATS 400", size: 17.97))
                        }
                        //Date
                        Text("23 January, 2023")
                            .font(Font.custom("NATS 400", size: 17.97))
                            .foregroundColor(Color(red: 126 / 255, green: 126 / 255, blue: 126 / 255).opacity(1))
                    }
                    .padding(.horizontal, 15)
                    
                    
                    ZStack {
                        ForEach(0..<self.values.count){ i in
                            PieSliceView(pieSliceData: self.slices[i])
                        }
                    }
                    .background(self.backgroundColor)
                    .foregroundColor(Color.white)
                    
                    .padding(.horizontal, 15)
                }
                .padding(.horizontal, 10)
            }
            .padding(.bottom, 30)
            Spacer()
            //Banner Area
            ZStack{
                HStack(spacing:10){
                    VStack(alignment: .leading){
                        Text("Activity Tracker")
                            .font(Font.custom("NATS 400", size: 22))
                        Text("Track and record your daily physical activity with the in-app activity tracker!")
                            .font(Font.custom("NATS 400", size: 15))
                            .foregroundColor(Color(red: 190 / 255, green: 190 / 255, blue: 190 / 255).opacity(1))
                            .padding(.top, 7)
                            .padding(.bottom, 10)
                    }
                    .padding(10)
                    ZStack{
                        Image("banner-image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Button {
                             
                        } label: {
                            Circle()
                                .fill(.white)
                                .frame(width:50, height:50)
                           
                                .overlay(
                                    Image(systemName: "arrow.forward") 
                                        .frame(width:40, height:40)
                                        
                                )
                                .frame(maxWidth: .infinity, alignment:.trailing)
                                .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                .foregroundColor(.black)
                        }.offset(y:-40)
                             
                    }
                }
                .padding(.horizontal, 20)
            }
            .background(.white)
            .clipShape(Rectangle())
            .cornerRadius(15)
            .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
            .padding(.horizontal, 20)
            .padding(.bottom, 30)
            
            //USer Activity Detail list
            VStack {
                Text("Past Activities")
                    .font(Font.custom("NATS 400", size: 22))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.bottom, -20)
                    .foregroundColor(.black)
                
                ScrollView {
                    ForEach(CaloriesDataArray, id: \.id) { CaloriesData in
                        
                        ZStack {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 30, height: 80)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                                .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                            
                            HStack {
                                
                                Image(CaloriesData.activitieImage)
                                
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255))
                                    .clipShape(Circle())
                                    .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                
                                
                                    .padding(.horizontal, 12)
                                
                                
                                
                                VStack(alignment: .leading) {
                                    Text(CaloriesData.activitiesTitle)
                                        .font(Font.custom("NATS 400", size: 20))
                                        .frame(alignment: .leading)
                                    
                                    Text(CaloriesData.activitiesTiming)
                                        .font(Font.custom("NATS 400", size: 15))
                                        .frame(alignment: .center)
                                        .padding(.vertical, 1)
                                }
                                .padding(.horizontal, 20)
                                
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image(CaloriesData.KcalImage)
                                        Text(CaloriesData.Kcal)
                                            .font(Font.custom("NATS 400", size: 20))
                                    }
                                    
                                    HStack{
                                        
                                        Text(CaloriesData.time)
                                            .font(Font.custom("NATS 400", size: 15))
                                            .padding(.horizontal, 35)
                                    }
                                    
                                }
                                
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                            }
                            .padding(.vertical, 20)
                        }
                        .background(.white)
                        .padding(.horizontal, 30)
                    }
                }
                .padding(.vertical, 40)
            }
            .ignoresSafeArea()
            
        }
    }
}

struct CaloriesBurntView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesBurntView(values: [1000, 300, 300, 200], colors: [Color(red: 252 / 255, green: 255 / 255, blue: 114 / 255).opacity(1), Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1), Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1), Color(red: 255 / 255, green: 163 / 255, blue: 97 / 255).opacity(1)], backgroundColor: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255, opacity: 1.0), image: ["Cycling-white","Running-white", "Cycling-white", "Walking-white" ])
    }
}
