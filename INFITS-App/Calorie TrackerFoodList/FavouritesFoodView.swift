//
//  FavouritesFoodView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//
//Calorie Tracker Favourites Food List

import SwiftUI

struct FavouritesFoodView: View {
    var favouriteFoodArray:[FoodData] = FoodDataList.favouriteslist
    
    
    var body: some View {
        VStack{
            ScrollView {
                ForEach(favouriteFoodArray, id: \.id) { FoodData in
                    
                    ZStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 30, height: 80)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        
                            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1), radius: 15, x: 0, y: 1)
                        
                        HStack {
                            Image(FoodData.foodImage)
                                .resizable()
                                .scaledToFill()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:50, height:50, alignment: .leading)
                                .padding(.horizontal, 10)
                            
                            VStack(alignment: .leading) {
                                Text(FoodData.foodTitle)
                                    .font(Font.custom("NATS 400", size: 20))
                                    .frame(alignment: .leading)
                                HStack(spacing: 10){
                                    Text(FoodData.totalKcal)
                                        .font(Font.custom("NATS 400", size: 15))
                                    Circle()
                                        .frame(width: 2, height: 2)
                                    Text(FoodData.roti)
                                        .font(Font.custom("NATS 400", size: 15))
                                    Circle()
                                        .frame(width: 2, height: 2)
                                    Text(FoodData.totalGrm)
                                        .font(Font.custom("NATS 400", size: 15))
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Button(action: {
                                
                            }) {
                                ZStack {
                                    Image(systemName: "plus")
                                        .padding(10)
                                        .background(       LinearGradient(gradient: Gradient(colors: [
                                            Color(red: 255 / 255, green: 165 / 255, blue: 77 / 255),
                                            Color(red: 236 / 255, green: 255 / 255, blue: 116 / 255)
                                        ]),
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing))
                                    
                                        .clipShape(Circle())
                                        .padding(.horizontal, 10)
                                        .foregroundColor(.white)
                                        .shadow(color:Color(#colorLiteral(red: 0.96, green: 0.71, blue: 0.4, alpha: 0.2)), radius: 4, x: 0, y: 2)
                                    
                                }
                            }
                        }
                        .padding(.vertical, 20)
                    }
                    .background(.white)
                    .padding(.horizontal, 30)
                }
            }
            .padding(.vertical, 80)
        }
    }
}

struct FavouritesFoodView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesFoodView()
    }
}
