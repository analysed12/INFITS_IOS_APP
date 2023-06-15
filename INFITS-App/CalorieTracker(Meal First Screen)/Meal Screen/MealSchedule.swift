//
//  MealSchedule.swift
//  DietChart
//
//  Created by Rajni Banduni on 23/03/23.
//

//Note :-Becasue of calender view "Previwe not shown data" So please see the result run on device or simulator ..There is no probelm in app


import SwiftUI

struct MealSchedule: View {
    var DietChartFoodBreakfastArray:[DietChartFoodList] = DietChartFoodDataList.DietChartBreakfastList
    
    var DietChartFoodLunchArray:[DietChartFoodList] = DietChartFoodDataList.DietChartLunchList
    
    var DietChartFoodSnacksArray:[DietChartFoodList] = DietChartFoodDataList.DietChartSnacksList
    
    var DietChartFoodDinnerArray:[DietChartFoodList] = DietChartFoodDataList.DietChartDinnerList
    
  
    @State var progressValue: Float = 0.3
    
    var body: some View {
        VStack {
            //Topbar
            HStack {
                Image(systemName: "chevron.left")
                    .padding(10)
                    .background(Color(red: 247 / 255, green: 248 / 255, blue: 248 / 255).opacity(1))
                    .clipShape(Rectangle())
                    .cornerRadius(8)
                
                Spacer()
                
                Text("Meal Schedule")
                    .font(Font.custom("NATS 400", size: 30))
                    .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .padding(10)
                    .background(Color(red: 247 / 255, green: 248 / 255, blue: 248 / 255).opacity(1))
                    .clipShape(Rectangle())
                    .cornerRadius(8)
                
            }
            
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
            //Calender Bar code here
            
//            CalenderView()
//            VStack{
//                DateScrollerView()
//                   .environmentObject(dateHolder)
//            }
            
            CalenderView()
 
//            Spacer()
              
            ScrollView {
                
                //Breakfast
                HStack {
                    Text("Breakfast")
                        .font(Font.custom("NATS 400", size: 21))
                        .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10, height: 10)
                    Spacer()
                    
                    Text("2 meals | 230 calories")
                        .font(Font.custom("NATS 400", size: 16))
                        .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                }
                
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                //For lopp for breakfast
                ForEach(DietChartFoodBreakfastArray, id: \.id) { breakfastFoodData in
                    ZStack {
                        HStack {
                            Image(breakfastFoodData.foodImage)
                                .frame(width: 80, height: 80)
                                .background(
                                    LinearGradient(
                                        colors: [
                                            Color(red: 146 / 255, green: 163 / 255, blue: 253 / 255).opacity(0.2),
                                            Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(0.2)],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                                .clipShape(Rectangle())
                                .cornerRadius(12)
                                .padding(.trailing, 5)
                            
                            //Title
                            VStack {
                                Text(breakfastFoodData.foodTitle)
                                    .font(Font.custom("NATS 400", size: 18))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                    .padding(.bottom, 1)
                                Text(breakfastFoodData.foodTiming)
                                    .font(Font.custom("NATS 400", size: 17))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                
                            }
                            //Next Button
                            Button {
                                print("Button was tapped")
                            } label: {
                                Image(systemName: "chevron.right")
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .background(
                                        LinearGradient(
                                            colors: [
                                                Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        ))
                                    .clipShape(Circle())
                                    .frame(width: 10, height: 10)
                                
                                    .fontWeight(.semibold)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                }//for lopp
                
                
                //Lunch
                HStack {
                    Text("Lunch")
                        .font(Font.custom("NATS 400", size: 21))
                        .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10, height: 10)
                    Spacer()
                    
                    Text("2 meals | 500 calories")
                        .font(Font.custom("NATS 400", size: 16))
                        .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                }
                
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                //For lopp for Lunch
                ForEach(DietChartFoodLunchArray, id: \.id) { lunchFoodData in
                    ZStack {
                        HStack {
                            Image(lunchFoodData.foodImage)
                                .frame(width: 80, height: 80)
                                .background(
                                    LinearGradient(
                                        colors: [
                                            Color(red: 146 / 255, green: 163 / 255, blue: 253 / 255).opacity(0.2),
                                            Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(0.2)],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                                .clipShape(Rectangle())
                                .cornerRadius(12)
                                .padding(.trailing, 5)
                            
                            //Title
                            VStack {
                                Text(lunchFoodData.foodTitle)
                                    .font(Font.custom("NATS 400", size: 18))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                    .padding(.bottom, 1)
                                Text(lunchFoodData.foodTiming)
                                    .font(Font.custom("NATS 400", size: 17))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                
                            }
                            //Next Button
                            Button {
                                print("Button was tapped")
                            } label: {
                                Image(systemName: "chevron.right")
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .background(
                                        LinearGradient(
                                            colors: [
                                                Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        ))
                                    .clipShape(Circle())
                                    .frame(width: 10, height: 10)
                                
                                    .fontWeight(.semibold)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                }//for lopp
                
                
                
                //Snacks
                HStack {
                    Text("Snacks")
                        .font(Font.custom("NATS 400", size: 21))
                        .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10, height: 10)
                    Spacer()
                    
                    Text("2 meals | 140 calories")
                        .font(Font.custom("NATS 400", size: 16))
                        .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                }
                
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                //For lopp for Lunch
                ForEach(DietChartFoodSnacksArray, id: \.id) { snacksFoodData in
                    ZStack {
                        HStack {
                            Image(snacksFoodData.foodImage)
                                .frame(width: 80, height: 80)
                                .background(
                                    LinearGradient(
                                        colors: [
                                            Color(red: 146 / 255, green: 163 / 255, blue: 253 / 255).opacity(0.2),
                                            Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(0.2)],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                                .clipShape(Rectangle())
                                .cornerRadius(12)
                                .padding(.trailing, 5)
                            
                            //Title
                            VStack {
                                Text(snacksFoodData.foodTitle)
                                    .font(Font.custom("NATS 400", size: 18))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                    .padding(.bottom, 1)
                                Text(snacksFoodData.foodTiming)
                                    .font(Font.custom("NATS 400", size: 17))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                
                            }
                            //Next Button
                            Button {
                                print("Button was tapped")
                            } label: {
                                Image(systemName: "chevron.right")
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .background(
                                        LinearGradient(
                                            colors: [
                                                Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        ))
                                    .clipShape(Circle())
                                    .frame(width: 10, height: 10)
                                
                                    .fontWeight(.semibold)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                }//for lopp
                
                
                //Dinner
                ZStack {
                    HStack {
                        Text("Dinner")
                            .font(Font.custom("NATS 400", size: 21))
                            .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        Spacer()
                        
                        Text("2 meals | 120 calories")
                            .font(Font.custom("NATS 400", size: 16))
                            .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                    }
                }
                
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                //For lopp for Dinner
                ForEach(DietChartFoodDinnerArray, id: \.id) { dinnerFoodData in
                    ZStack {
                        HStack {
                            Image(dinnerFoodData.foodImage)
                                .frame(width: 80, height: 80)
                                .background(
                                    LinearGradient(
                                        colors: [
                                            Color(red: 146 / 255, green: 163 / 255, blue: 253 / 255).opacity(0.2),
                                            Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(0.2)],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                                .clipShape(Rectangle())
                                .cornerRadius(12)
                                .padding(.trailing, 5)
                            
                            //Title
                            VStack {
                                Text(dinnerFoodData.foodTitle)
                                    .font(Font.custom("NATS 400", size: 18))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                    .padding(.bottom, 1)
                                Text(dinnerFoodData.foodTiming)
                                    .font(Font.custom("NATS 400", size: 17))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                
                            }
                            //Next Button
                            Button {
                                print("Button was tapped")
                            } label: {
                                Image(systemName: "chevron.right")
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .background(
                                        LinearGradient(
                                            colors: [
                                                Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        ))
                                    .clipShape(Circle())
                                    .frame(width: 10, height: 10)
                                    .fontWeight(.semibold)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                }//for lopp
                
                //Progressbar section
                VStack(alignment: .leading) {
                    Text("Today’s Meal Nutrition")
                        .font(Font.custom("NATS 400", size: 21))
                        .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                }
                
                
                //Calories Progressbar
                 
                ProgressBarView()
                
                
                
            }//ScrollView
            
            
            
        }//main Vstack end
        
        Spacer()
        
    }//body end here
    
    
    //progess value calulate here
    func startProgressBar() {
        for _ in 0...80 {
            self.progressValue += 0.015
        }
    }
    
    func resetProgressBar() {
        self.progressValue = 0.0
    }
    
    
}



struct MealSchedule_Previews: PreviewProvider {
    static var previews: some View {
        MealSchedule()
    }
}
