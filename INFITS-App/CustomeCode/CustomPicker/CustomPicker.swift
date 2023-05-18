//
//  CustomPicker.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 27/02/23.
//

import SwiftUI

struct CustomPicker: View {
    let items = ["0.5", "1", "1.5", "2", "2.5"]
    @State private var scrollViewContentOffset = CGFloat(0)
    
    var body: some View {
                 
        HStack(spacing: 100) {
            // 1st Picker
            VStack {
                Button {
                    //Increase Action
                } label: {
                    Image(systemName: "chevron.up")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
                
                ScrollView{
                    Text("0.5")
                    Text("1")
                    Text("1.5")
                        .font(Font.custom("NATS 400", size: 30))
                    Text("2")
                    Text("2.5")
                    Text("3")
                }
                .font(Font.custom("NATS 400", size: 20))
                .padding(.vertical, 10)
                
                Button {
                    //Increase Action
                } label: {
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
            }
            .frame(height: 150)
            //                    .padding(.horizontal, 2)
            //2nd Picker
            VStack {
                Button {
                    //Increase Action
                } label: {
                    Image(systemName: "chevron.up")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
                
                ScrollView {
                    Text("Small")
                        .font(Font.custom("NATS 400", size: 30))
                    Text("Regular")
                    
                }
                .font(Font.custom("NATS 400", size: 20))
                .padding(.vertical, 10)
                
                Button {
                    //Increase Action
                } label: {
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
            }
            .frame(height: 130)
        }
    }
}

struct CustomPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomPicker()
    }
}
