//
//  picker.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct picker: View {
    let items = ["0.5", "1", "1.5", "2", "2.5"]
    let itemsSize = ["Regular", "Small"]
     let itemIndex:Int = 0
    @StateObject  var environmentVariables = EnvironmentVariables()
    @StateObject  var environmentVariables01 = EnvironmentVariables()
    
    var body: some View {
        //Picker
        //Code here
        HStack(spacing: 100) {
            // 1st Picker
            VStack {
                Button {
                    environmentVariables01.currentIndexforPosts += 1
                } label: {
                    Image(systemName: "chevron.up")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
                
                ScrollView {
                    
                    ScrollViewReader { value in
                        LazyVStack {
                            ForEach(itemIndex..<items.count) { itemIndex in
                                Text (" \(itemIndex)").id(itemIndex)
//                                                        .font(.title)
                                    .font(Font.custom("NATS 400", size: 25))
                            }
                        }
                        
                        .onChange(of: environmentVariables01.currentIndexforPosts) { _ in
                            
                            if environmentVariables01.currentIndexforPosts >= 0 {
                                withAnimation {
                                    value.scrollTo(environmentVariables01.currentIndexforPosts, anchor: .top)
                                }
                            }
                        }
                    }
                   
                }
                
                .font(Font.custom("NATS 400", size: 20))
                .padding(.vertical, 20)
                
                Button {
                    environmentVariables01.currentIndexforPosts -= 1                                     } label: {
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
            }
            .frame(height: 150)
            //.padding(.horizontal, 2)
            //2nd Picker
            VStack {
                Button {
                    environmentVariables.currentIndexforPosts += 1                                    } label: {
                        Image(systemName: "chevron.up")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }.environmentObject(environmentVariables)
                
                ScrollView {
                    
                    ScrollViewReader { value in
                        LazyVStack {
                            ForEach(itemIndex..<items.count) { itemIndex in
                                Text ("\(itemIndex)").id(itemIndex)
                                    .font(.title)
                            }
                        }
                        
                        .onChange(of: environmentVariables.currentIndexforPosts) { _ in
                            
                            if environmentVariables.currentIndexforPosts >= 0 {
                                withAnimation {
                                    value.scrollTo(environmentVariables.currentIndexforPosts, anchor: .top)
                                }
                            }
                        }
                    }
                   
                }
                .font(Font.custom("NATS 400", size: 20))
                .padding(.vertical, 20)
                
                Button {
                    environmentVariables.currentIndexforPosts -= 1                                    } label: {
                        Image(systemName: "chevron.down")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }.environmentObject(environmentVariables)
            }
            .frame(height: 130)
        }//Picker Finish
    }
}

struct picker_Previews: PreviewProvider {
    static var previews: some View {
        picker()
    }
}
