//
//  CaloriesConsumedView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//



import SwiftUI

struct CaloriesConsumedView: View {
    var CaloriesDataArray:[CaloriesData] =  CaloriesDataList.activitieList
    @State var breakfastBool = false
    @State var lunchBool = false
    @State var dinnerBool = false
    @State var snacksBool = false
    
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
        
        ZStack {
            VStack {
                //Header Section
                HStack {
                    Text("")
                        .font(Font.custom("NATS 400", size: 10))
                        .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255) .opacity(1))
                        .padding(.vertical, 40)
                }
                
                //Chart
                VStack(alignment: HorizontalAlignment.center) {
                    
                    Text("Total Consumed Calories")
                        .font(Font.custom("NATS 400", size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
//                        .padding(.top, 10)
                    
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
                        .foregroundColor(Color.red)
                        .padding(.horizontal, 15)
                    }
                    .padding(.horizontal, 10)
                }
                Spacer()
                //User Main Activity Detail list
                VStack {
                    Text("Main Activities")
                        .font(Font.custom("NATS 400", size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .padding(.bottom, -30)
                        .foregroundColor(.black)
                    
                    ScrollView {
                        //BreakFast
                        ZStack {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 30, height: 80)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                                .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                            
                            HStack {
                                
                                Text("B")
                                    .font(Font.custom("NATS 400", size: 25))
                                    .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255))
                                    .clipShape(Circle())
                                    .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                
                                VStack(alignment: .leading) {
                                    Text("BREAKFAST")
                                        .font(Font.custom("NATS 400", size: 20))
                                        .frame(alignment: .leading)
                                    
                                    Text("00:18:52")
                                        .font(Font.custom("NATS 400", size: 15))
                                        .frame(alignment: .center)
                                        .padding(.vertical, 1)
                                }
                                .padding(.horizontal, 10)
                                
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image("Calories")
                                        Text("452 kcal")
                                            .font(Font.custom("NATS 400", size: 20))
                                    }
                                    
                                    HStack{
                                        
                                        Text("11:10 a.m.")
                                            .font(Font.custom("NATS 400", size: 15))
                                            .padding(.horizontal, 35)
                                    }
                                    
                                }
                                
                            }
                            .padding(.vertical, 20)
                        }
                        .background(.white)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            breakfastBool.toggle()
                        }
                        
                        //BreakFast DropDown View
                        if breakfastBool {
                            HStack {
                                VStack(alignment: .center, spacing: 10){
                                    
                                    Rectangle()
                                        .frame(width:3, height: 50, alignment: .leading)
                                        .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                    
                                    //circle
                                    ZStack{
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                    }
                                    
                                    
                                    
                                }
                                ZStack {
                                    
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width-60, height: 80)
                                        .cornerRadius(10)
                                        .foregroundColor(.white)
                                    
                                        .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                                    
                                    HStack {
                                        
                                        Image("Pancake")
                                            .padding(10)
                                            .background(.white)
                                            .clipShape(Circle())
                                            .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                        
                                        VStack(alignment: .leading) {
                                            Text("BREAKFAST")
                                                .font(Font.custom("NATS 400", size: 15))
                                                .frame(alignment: .leading)
                                            
                                            HStack(spacing: 10){
                                                Text("1")
                                                    .font(Font.custom("NATS 400", size: 15))
                                                Circle()
                                                    .frame(width: 5, height: 5)
                                                Text("Small")
                                                    .font(Font.custom("NATS 400", size: 15))
                                            }
                                            
                                        }
                                        .padding(.horizontal, 10)
                                        
                                        VStack(alignment: .leading) {
                                            HStack{
                                                Image("Calories")
                                                Text("452 kcal")
                                                    .font(Font.custom("NATS 400", size: 15))
                                            }
                                            
                                            HStack {
                                                Text("11:10 a.m.")
                                                    .font(Font.custom("NATS 400", size: 12))
                                                    .padding(.horizontal, 35)
                                            }
                                            
                                        }
                                        
                                    }
                                    .padding(.vertical, 30)
                                }
                                .background(.white)
                            }
                        }
                        
                        //Lunch View
                        ZStack {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 30, height: 80)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                                .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                            
                            HStack() {
                                
                                Text("L")
                                    .font(Font.custom("NATS 400", size: 25))
                                    .foregroundColor(Color(red: 255 / 255, green: 171 / 255, blue: 110 / 255).opacity(1))
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255))
                                    .clipShape(Circle())
                                    .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                
                                VStack() {
                                    Text("LUNCH")
                                        .font(Font.custom("NATS 400", size: 20))
                                        .frame(alignment: .leading)
                                    
                                    Text("00:18:52")
                                        .font(Font.custom("NATS 400", size: 15))
                                        .frame(alignment: .center)
                                        .padding(.vertical, 1)
                                }
                                .padding(.horizontal, 10)
                                
                                VStack(alignment: .trailing) {
                                    HStack{
                                        Image("Calories")
                                        VStack{
                                            Text("412 kcal")
                                                .font(Font.custom("NATS 400", size: 20))
                                        }
                                    }.frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 25)
                                    
                                    HStack{
                                        Text("11:10 a.m.")
                                            .font(Font.custom("NATS 400", size: 15))
                                            .padding(.trailing, 25)
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            .padding(.vertical, 20)
                            .padding(.horizontal, 20)
                        }
                        .background(.white)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            lunchBool.toggle()
                        }
                        //Lunch DropDown View
                        if lunchBool {
                            HStack {
                                VStack(alignment: .center, spacing: 10){
                                    
                                    Rectangle()
                                        .frame(width:3, height: 40, alignment: .leading)
                                        .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                    
                                    //circle
                                    ZStack {
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                    }
                                    
                                    //@nd Line
                                    Rectangle()
                                        .frame(width:3, height: 60, alignment: .leading)
                                        .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                    
                                    //circle
                                    ZStack {
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1))
                                    }
                                }
                                
                                VStack {
                                    ZStack {
                                        
                                        Rectangle()
                                            .frame(width: UIScreen.main.bounds.width-60, height: 80)
                                            .cornerRadius(10)
                                            .foregroundColor(.white)
                                        
                                            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                                        
                                        HStack {
                                            
                                            Image("rice")
                                                .padding(10)
                                                .background(.white)
                                                .clipShape(Circle())
                                                .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                            
                                            VStack(alignment: .leading) {
                                                Text("Rice")
                                                    .font(Font.custom("NATS 400", size: 15))
                                                    .frame(alignment: .leading)
                                                
                                                HStack(spacing: 10){
                                                    Text("1")
                                                        .font(Font.custom("NATS 400", size: 15))
                                                    Circle()
                                                        .frame(width: 5, height: 5)
                                                    Text("Medium")
                                                        .font(Font.custom("NATS 400", size: 15))
                                                }
                                                
                                            }
                                            .padding(.horizontal, 10)
                                            
                                            VStack(alignment: .leading) {
                                                HStack{
                                                    Image("Calories")
                                                    Text("452 kcal")
                                                        .font(Font.custom("NATS 400", size: 15))
                                                }
                                                
                                                HStack {
                                                    Text("11:10 a.m.")
                                                        .font(Font.custom("NATS 400", size: 12))
                                                        .padding(.horizontal, 35)
                                                }
                                                
                                            }
                                            
                                        }
                                        .padding(.vertical, 20)
                                    }
                                    
                                    ZStack {
                                        
                                        Rectangle()
                                            .frame(width: UIScreen.main.bounds.width-60, height: 80)
                                            .cornerRadius(10)
                                            .foregroundColor(.white)
                                        
                                            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                                        
                                        HStack {
                                            
                                            Image("rice")
                                                .padding(10)
                                                .background(.white)
                                                .clipShape(Circle())
                                                .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                            
                                            VStack(alignment: .leading) {
                                                Text("Rice")
                                                    .font(Font.custom("NATS 400", size: 15))
                                                    .frame(alignment: .leading)
                                                
                                                HStack(spacing: 10){
                                                    Text("1")
                                                        .font(Font.custom("NATS 400", size: 15))
                                                    Circle()
                                                        .frame(width: 5, height: 5)
                                                    Text("Medium")
                                                        .font(Font.custom("NATS 400", size: 15))
                                                }
                                                
                                            }
                                            .padding(.horizontal, 10)
                                            
                                            VStack(alignment: .leading) {
                                                HStack{
                                                    Image("Calories")
                                                    Text("452 kcal")
                                                        .font(Font.custom("NATS 400", size: 15))
                                                }
                                                
                                                HStack {
                                                    Text("11:10 a.m.")
                                                        .font(Font.custom("NATS 400", size: 12))
                                                        .padding(.horizontal, 35)
                                                }
                                                
                                            }
                                            
                                        }
                                        //                                        .padding(.vertical, 30)
                                    }
                                    
                                    .background(.white)
                                }
                            }
                        }
                        
                        //SNACKS View
                        ZStack {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 30, height: 80)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                                .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                            
                            HStack {
                                
                                Text("S")
                                    .font(Font.custom("NATS 400", size: 25))
                                    .foregroundColor(Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1))
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255))
                                    .clipShape(Circle())
                                    .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                
                                VStack(alignment: .leading) {
                                    Text("SNACKS")
                                        .font(Font.custom("NATS 400", size: 20))
                                        .frame(alignment: .leading)
                                    
                                    Text("00:18:52")
                                        .font(Font.custom("NATS 400", size: 15))
                                        .frame(alignment: .center)
                                        .padding(.vertical, 1)
                                }
                                .padding(.horizontal, 10)
                                
                                VStack(alignment: .trailing) {
                                    HStack{
                                        Image("Calories")
                                        Text("452 kcal")
                                            .font(Font.custom("NATS 400", size: 20))
                                    }.frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 25)
                                    
                                    HStack{
                                        
                                        Text("11:10 a.m.")
                                            .font(Font.custom("NATS 400", size: 15))
                                            .padding(.trailing, 25)
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            .padding(.vertical, 20)
                            .padding(.horizontal, 20)
                        }
                        .background(.white)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            snacksBool.toggle()
                        }
                        
                        //DINNER View
                        ZStack {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 30, height: 80)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                                .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                            
                            HStack {
                                
                                Text("D")
                                    .font(Font.custom("NATS 400", size: 25))
                                    .foregroundColor(Color(red: 249 / 255, green: 252 / 255, blue: 136 / 255).opacity(1))
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255))
                                    .clipShape(Circle())
                                    .shadow(color:Color(red: 52 / 255, green: 60 / 255, blue: 68 / 255).opacity(0.1), radius: 2.6, x: 0, y: 1)
                                
                                VStack(alignment: .leading) {
                                    Text("DINNER")
                                        .font(Font.custom("NATS 400", size: 20))
                                        .frame(alignment: .leading)
                                    
                                    Text("00:18:52")
                                        .font(Font.custom("NATS 400", size: 15))
                                        .frame(alignment: .center)
                                        .padding(.vertical, 1)
                                }
                                .padding(.horizontal, 10)
                                
                                VStack(alignment: .trailing) {
                                    HStack{
                                        Image("Calories")
                                        Text("153 kcal")
                                            .font(Font.custom("NATS 400", size: 20))
                                    }.frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 25)
                                    
                                    HStack{
                                        
                                        Text("11:10 a.m.")
                                            .font(Font.custom("NATS 400", size: 15))
                                            .padding(.trailing, 25)
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            .padding(.vertical, 20)
                            .padding(.horizontal, 20)
                        }
                        .background(.white)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            dinnerBool.toggle()
                        }
                    }
                    .padding(.vertical, 40)
                }
                .ignoresSafeArea()
                .statusBar(hidden: true)
            }
            
        }
    }
}

struct CaloriesConsumedView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesConsumedView(values: [1000, 300, 300, 200], colors: [Color(red: 252 / 255, green: 255 / 255, blue: 114 / 255).opacity(1), Color(red: 172 / 255, green: 175 / 255, blue: 253 / 255).opacity(1), Color(red: 255 / 255, green: 98 / 255, blue: 98 / 255).opacity(1), Color(red: 255 / 255, green: 163 / 255, blue: 97 / 255).opacity(1)], backgroundColor: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255, opacity: 1.0), image: ["Cycling-white","Running-white", "Cycling-white", "Walking-white" ])
    }
}
