//
//  CustomTabBar.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

enum Tabs:Int{
    case Frequent = 0
    case Recent = 1
    case Favourites = 2
    case day = 3
    
}

struct CustomTabBar: View {
    @Binding var isSelectedTab:Tabs
     
    
    var body: some View {
        HStack(alignment: .center){
        
            Button {
                isSelectedTab = .Frequent
            } label: {
                TabBarButton(tabTitle: "Frequent", isActive: isSelectedTab == .Frequent)
                
            }.tint(Color.black)
            
            //2nd button
            Button {
                isSelectedTab = .Recent
            } label: {
                TabBarButton(tabTitle: "Recent", isActive: isSelectedTab == .Recent)
            }.tint(Color.black)
            
            //Third Button
            Button {
                isSelectedTab = .Favourites
            } label: {
                TabBarButton(tabTitle: "Favourites", isActive: isSelectedTab == .Favourites)
            }.tint(Color.black)
            
            
        }
        .padding(.horizontal, 10)
        .frame(height: 80)
    }
    
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(isSelectedTab: .constant(.Frequent))
    }
}
