//
//  LiveSession.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 18/04/23.
//

import SwiftUI

struct LiveSession: View {
    @State private var isSeleced:Bool = false
    @Binding var path : NavigationPath
    
    var body: some View {
        VStack(alignment: .leading) {
            //Header
            HStack {
                
                Button(action: {
                    //same i didn't knw which screen will open so set according to your requirement
                    path.removeLast()
                    path.append(NavigationType.homeScreen)
                }) {
                    Image("live-menu")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, 15)
                        .foregroundColor(.black)
                        .frame(width: 40, height: 40, alignment: .leading)
                }
                
                Text("Live")
                    .font(Font.custom("NATS 400", size: 24))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Spacer()
            
            VStack {
                LiveCardView()
             }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
            
            Text("Upcoming Live")
                .font(Font.custom("NATS 400", size: 28))
                .foregroundColor(.black)
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
            
            ScrollView{
                VStack(alignment: .leading, spacing: 15) {
                   
                    ForEach(0..<2, id: \.self) { item in
                        UpcomingEventCardView()
                    }
     
                }
                .padding(.trailing, 20)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct LiveSession_Previews: PreviewProvider {
    static var previews: some View {
        LiveSession(path: .constant(NavigationPath()))
    }
}
//Live Sec Deisgn

struct LiveCardView: View {
    var i = 4
    
    var body: some View {
        VStack {
            Text("Now Streaming Live")
            .font(Font.custom("NATS 400", size: 28))
            .foregroundColor(.white)
            .padding(.leading, 20)
            .padding(.top, 20)
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            //Live Strema Section
            VStack {
                HStack{
                    Image("profilePicture")
                        .clipShape(Circle())
                   
                        Text("John Wayne")
                            .foregroundColor(.white)
                            .font(Font.custom("NATS 400", size: 20))
                    
                    Button {
                        print("Hello button tapped!")
                    } label: {
                        Text("Join Live")
                    .font(Font.custom("NATS 400", size: 18))
                    .padding()
                    .frame(height: 35, alignment:.center)
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [
                            Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255),
                            Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255)
                            ]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                    
                            .clipShape(Rectangle())
                            .cornerRadius(46)
                            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.25), radius: 15, x: 0, y: 2)
                    }
                    .frame(maxWidth: .infinity, alignment:.trailing)
                    .padding(.trailing, 10)
                   
                }.padding(.leading, 20)
                
                HStack(alignment: .top){
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis.")
                        .font(Font.custom("NATS 400", size: 14))
                        .foregroundColor(Color(red: 166 / 255, green: 166 / 255, blue: 166 / 255).opacity(1))
                }.frame(width: UIScreen.main.bounds.width - 150, alignment: .center)
                    .padding(.top, -12)
                    .padding(.leading, 20)
                
                //Viewers List
                HStack(spacing: -17) {
                    ForEach(0..<i, id: \.self) { item in
                        Image("profile-02")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                     }
                    VStack(spacing: 2){
                        Text(" +256 ")
                        .font(Font.custom("NATS 400", size: 14))
                         .foregroundColor(.white)
                        .padding(.leading, 15)
                        
                        Text("Viewers")
                        .font(Font.custom("NATS 400", size: 14))
                         .foregroundColor(.white)
                        .padding(.leading, 15)
                    }
                 }
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .trailing)
                
            }
        }
        .background(.black)
        .cornerRadius(20)
//        .frame(height: 200)
    }
}

 
//Upcoming Event
struct UpcomingEventCardView: View {
    var i = 4
    
    var body: some View {
        VStack (spacing: 10) {
            HStack{
                Image("profilePicture")
                    .clipShape(Circle())
               
                    Text("John Wayne")
                        .foregroundColor(.black)
                        .font(Font.custom("NATS 400", size: 20))
                
                Button {
                    print("Hello button tapped!")
                } label: {
                    Text("Set Reminder")
                    .font(Font.custom("NATS 400", size: 16))
                    .foregroundLinearGradient(colors: [
                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255),
                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255)
                        ], startPoint: .topLeading, endPoint: .bottomTrailing)
                    
                        .clipShape(Rectangle())
                       
                        .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.25), radius: 15, x: 0, y: 2)
                        .padding()
                        .overlay(
                            Capsule()
                                .stroke(
                                    LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                                   startPoint: .topLeading,
                                                   endPoint: .bottomTrailing),
                                    lineWidth:1
                                ))
                        .frame(height: 35, alignment:.center)
                }
                .frame(maxWidth: .infinity, alignment:.trailing)
                .padding(.trailing, 10)
               
            }.padding(.leading, 20)
            
            HStack(alignment: .top){
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis.")
                    .font(Font.custom("NATS 400", size: 14))
                    .foregroundColor(Color(red: 106 / 255, green: 106 / 255, blue: 106 / 255).opacity(1))
            }.frame(width: UIScreen.main.bounds.width - 150, alignment: .center)
                .padding(.top, -12)
                .padding(.leading, 10)
 
            //Time or date
            HStack(spacing: 5) {
                Image("calender")
                    
                    
                Text("09/05/2022")
                    .padding(.trailing, 15)
                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                Image("time")

                Text("2:00 pm")
                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
            }.frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 35)
            
            //Viewers List
            HStack(spacing: -17) {
                ForEach(0..<i, id: \.self) { item in
                    Image("profile-02")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                 }
                VStack(spacing: 2){
                    Text(" +256 ")
                    .font(Font.custom("NATS 400", size: 14))
                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    .padding(.leading, 15)
                    
                    Text("Viewers")
                    .font(Font.custom("NATS 400", size: 14))
                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    .padding(.leading, 15)
                }.padding(.leading, 8)
             }
//            .padding(20)
            .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
        
//             VStack {
//                HStack {
//                    Image("profilePicture")
//                    .clipShape(Circle())
//                    .padding(.leading, 20)
//
//                    VStack(alignment: .leading, spacing: 5) {
//                        Text("John Wayne")
//                        .font(Font.custom("NATS 400", size: 20))
//                        .foregroundColor(.black)
//
//
//                         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis.")
//                        .font(Font.custom("NATS 400", size: 14))
//                        .foregroundColor(Color(red: 166 / 255, green: 166 / 255, blue: 166 / 255) .opacity(1))
//                        .frame(height: 50)
//                     }
//
//
//                    Spacer()
//
//                    Button {
//                        print("Hello button tapped!")
//                    } label: {
//                        Text("Set Reminder")
//                            .font(Font.custom("NATS 400", size: 16))
//
//                            .foregroundLinearGradient(colors: [
//                                Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255),
//                                Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255)
//                            ], startPoint: .topLeading, endPoint: .bottomTrailing)
//
//                            .clipShape(Rectangle())
//                            .cornerRadius(46)
//                            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.25), radius: 15, x: 0, y: 2)
//
//
//
//
//                    }.padding(.trailing, 10)
//                }
//                 HStack {
//                     Image("calender")
//                         .frame(maxWidth: .infinity, alignment: .trailing)
//
//                     Text("09/05/2022")
//
//                     Image("time")
//
//                     Text("2:00 pm")
//                 }
//                HStack(spacing: -13) {
//                    ForEach(0..<i, id: \.self) { item in
//                        Image("profile-02")
//                        .resizable()
//                        .frame(width: 60, height: 60)
//                        .clipShape(Circle())
//                     }
//                    Text(" +256 Viewers")
//                    .font(Font.custom("NATS 400", size: 14))
//                    .frame(height: 50)
//                    .foregroundColor(.black)
//                    .padding(.leading, 15)
//                 }.frame(maxWidth: .infinity, alignment: .trailing)
//                .padding(20)
//            }
        Divider()
            .padding(.leading, 15)
//            .padding(.trailing, 10)
        .background(.white)
        .cornerRadius(20)
     }
    
    func makeGradient() -> some View {
            LinearGradient(
                gradient: .init(colors: [.red, .orange]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    
}

//Text Gradient Extension
extension Text {
    public func foregroundLinearGradient(
        colors: [Color],
        startPoint: UnitPoint,
        endPoint: UnitPoint) -> some View
    {
        self.overlay {

            LinearGradient(
                colors: colors,
                startPoint: startPoint,
                endPoint: endPoint
            )
            .mask(
                self

            )
        }
    }
}

