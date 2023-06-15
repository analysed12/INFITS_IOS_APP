//
//  EndedLiveStream.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 19/04/23.
//

import SwiftUI

struct EndedLiveStream: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255),
                Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255)
            ]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            .ignoresSafeArea()
            ZStack{
                VStack{
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(.white)
                        .padding(.trailing, 15)
                    Spacer()
                } 
                
                VStack(spacing: 20) {
                    Spacer()
                    Group{
                        Image("profilePicture")
                             .clipShape(Circle())
 
                        Text("John Wayne")
                            .font(Font.custom("NATS 400", size: 40))
                            .foregroundColor(.white)
                            
                        Text("This live video has ended")
                            .font(Font.custom("NATS 400", size: 32))
                            .foregroundColor(.white)
                    }
                    Spacer()
                     
                     Group {
                          
                        Button {
                            print("Go Home")
                        } label: {
                            Text("Go Home")
                        .font(Font.custom("NATS 400", size: 20))
                        .padding(40)
                        .frame(height: 45, alignment:.center)
                        .foregroundColor(.white)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255),
                                Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255)
                                ]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                        
                                .clipShape(Rectangle())
                                .cornerRadius(15)
                                .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.25), radius: 15, x: 0, y: 2)
                        }
                    }
//                     .frame(maxHeight: .infinity, alignment: .bottom)
                     
                }
            }
            
           
             
           
            
            
        }
    }
}

struct EndedLiveStream_Previews: PreviewProvider {
    static var previews: some View {
        EndedLiveStream()
    }
}
