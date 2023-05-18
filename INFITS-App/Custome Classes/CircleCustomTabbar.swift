//
//  CircleCustomTabbar.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

enum CircleTabs:Int{
    case day = 0
    case week = 1
    case month = 2
     
}

struct CircleCustomTabbar: View {
    @Binding var isSelectedCircleTab:CircleTabs
     
    
    var body: some View {
        HStack(alignment: .center){
            
            Button {
                isSelectedCircleTab = .day
            } label: {
                CircleTabBar(tabTitle: "Day", isActive: isSelectedCircleTab == .day)
            }.tint(Color.white)
            
            //2nd button
            Button {
                isSelectedCircleTab = .week
            } label: {
                CircleTabBar(tabTitle: "Week", isActive: isSelectedCircleTab == .week)
            }.tint(Color.black)
            
            //Third Button
            Button {
                isSelectedCircleTab = .month
            } label: {
                CircleTabBar(tabTitle: "Month", isActive: isSelectedCircleTab == .month)
            }.tint(Color.black)
        }
        .padding(.horizontal, 10)
        .frame(height: 80)
    }
}

struct CircleCustomTabbar_Previews: PreviewProvider {
    static var previews: some View {
        CircleCustomTabbar(isSelectedCircleTab: .constant(.day))
    }
}

