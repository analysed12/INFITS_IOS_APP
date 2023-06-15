//
//  BreakFastView.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 22/02/23.
//
//Calorie Tracker Food List Full Screen Design like header , Search and food list

import SwiftUI

struct BreakFastView: View {
    @State var searchbar = ""
    @State var isSelected:Bool = false
    @State var isSelectedTab:Tabs = .Frequent
 
    
    @State var currentTab: Int = 0

    var frequenFoodArray:[FoodData] = FoodDataList.frequentList
    var recentFoodArray:[FoodData] = FoodDataList.recentlist
    var favouriteFoodArray:[FoodData] = FoodDataList.favouriteslist
    
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
                Text("Breakfast")
                    .font(Font.custom("NATS 400", size: 38))
                    .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255) .opacity(1))
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Today")
                    .font(Font.custom("NATS 400", size: 20))
                    .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255) .opacity(1))
                
                Button(action: {
                    
                }) {
                    Image("Calorie-dropdown")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 15)
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                
            }
            
            //SearchBar
            HStack(spacing: 15) {
                Image("Search")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                //                    .padding(.leading, 15)
                    .frame(width: 25, height: 25, alignment: .leading)
                TextField("Search a food a item", text: $searchbar)
                    .padding(10)
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.white)
            
            .cornerRadius(10)
            .padding(.horizontal)
            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.05), radius: 15, x: 0, y: 1)
            
            
            ZStack(alignment: .top) {
                CustomTabBar(isSelectedTab: $isSelectedTab)
                if isSelectedTab == Tabs.Frequent{
                    FrequentFoodView()
                } else if isSelectedTab == Tabs.Recent{
                    RecentFoodView()
                } else if isSelectedTab == Tabs.Favourites{
                    FavouritesFoodView()
                }                    
            }
            
            .ignoresSafeArea()
            
           
        }
    }
}

struct BreakFastView_Previews: PreviewProvider {
    static var previews: some View {
        BreakFastView()
    }
}

 
