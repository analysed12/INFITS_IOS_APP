//
//  ActivityTrackerView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 09/06/23.
//

import SwiftUI

struct ActivityTrackerView: View {
    
    var PastActivityList:[PastActivityTrackerList] = PastActivityTrackerDataList.ActivityTrackerList
        
    
    var title = """
     ACTIVITY
     TRACKER
     """
    
    var body: some View {
      VStack{
            //Header
            HStack {
                Image(systemName: "chevron.left")
                    .padding(10)
                    .background(Color(red: 247 / 255, green: 248 / 255, blue: 248 / 255).opacity(1))
                    .clipShape(Rectangle())
                    .cornerRadius(8)
                                
                Text(title)
                    .lineLimit(2)
                    .font(Font.custom("NATS 400", size: 38))
                    .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .offset(x:-30)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
            .padding(.bottom, 20)
            //Activity Dates
            CalenderView()
              .padding(.bottom, 40)
           
          ScrollView(showsIndicators: false){
              //Activities
              VStack{
                  //Activities Header
                  HStack{
                      Text("Activities")
                          .font(Font.custom("NATS 400", size: 28))
                          .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                      
                      Spacer()
                      
                      Button {
                           
                      } label: {
                          Text("View All")
                              .font(Font.custom("NATS 400", size: 15))
                              .foregroundColor(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255).opacity(1))
                      }

                  }.padding(.horizontal, 20)
                  //Activity List
                  HStack {
                      
                      //Cycling
                      ZStack{
                          Rectangle()
                              .fill(Color(red: 255 / 255, green: 230 / 255, blue: 229 / 255).opacity(1))
                              .cornerRadius(25)
                              .frame(width:180, height: 160)
                          VStack(alignment: .leading) {
                              Image("person-biking")
                              HStack{
                                  Text("Cycling")
                                      .font(Font.custom("NATS 400", size: 15))
                                      .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                      .padding(.trailing, 50)
                                   Button {
                                      
                                  } label: {
                                      Image("next-arrow")
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          .frame(width: 15, height: 10)
                                          .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                  }
                              }
                              .padding(.bottom, 20)
                          }
                      }
                      Spacer()
                      //Running
                      ZStack{
                          Rectangle()
                              .fill(Color(red: 255 / 255, green: 230 / 255, blue: 229 / 255).opacity(1))
                              .cornerRadius(25)
                              .frame(width:180, height: 160)
                          VStack(alignment: .leading){
                              
                              Image("man-running")
                                  .padding(.top, 20)
                              Text("Running")
                                  .font(Font.custom("NATS 400", size: 15))
                                  .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                  .padding(.trailing, 10)
                              
                              HStack{
                                  Text("5.2 km")
                                      .font(Font.custom("NATS 400", size: 15))
                                      .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                      .padding(.trailing, 50)
                                  
                                   Button {
                                      
                                  } label: {
                                      Image("next-arrow")
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          .frame(width: 15, height: 10)
                                          .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                          .padding(.trailing, 5)
                                          
                                  }
                              }
                              .padding(.bottom, 40)
                          }
                      }
                       
                  }
                  .padding(.horizontal, 20)
                  .padding(.bottom, -30)
                 
                  HStack{
                      //Walking
                      ZStack{
                          Rectangle()
                              .fill(Color(red: 255 / 255, green: 238 / 255, blue: 198 / 255).opacity(1))
                              .cornerRadius(25)
                              .frame(width:180, height: 160)
                          VStack(alignment: .leading){
                              
                              Image("man-walking")
                                  .padding(.top, 20)
                              Text("Walking")
                                  .font(Font.custom("NATS 400", size: 15))
                                  .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                              
                              HStack{
                                  Text("5660 Steps")
                                      .font(Font.custom("NATS 400", size: 15))
                                      .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                      .padding(.trailing, 40)
                                  
                                   Button {
                                      
                                  } label: {
                                      Image("next-arrow")
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          .frame(width: 15, height: 10)
                                          .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                          .padding(.trailing, 5)
                                          
                                  }
                              }
                              .padding(.bottom, 40)
                          }
                      }
                      
                      Spacer()
                  }
                  .padding(.horizontal, 20)
              }
              
              //Past Activity
              VStack{
                  HStack{
                      Text("Past Activities")
                          .font(Font.custom("NATS 400", size: 28))
                          .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                      
                      Spacer()
                      Button {
                           
                      } label: {
                          Text("View All")
                              .font(Font.custom("NATS 400", size: 15))
                              .foregroundColor(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255).opacity(1))
                      }
                  }.padding(.horizontal, 20)
                  
                  VStack{
                      ForEach(PastActivityList, id: \.id) { PastActivityListData in
                          
                          HStack{
                              Rectangle()
                                  .fill(Color(red: 255 / 255, green: 238 / 255, blue: 237 / 255).opacity(1))
                                  .frame(width: 80, height: 80)
                                  .cornerRadius(15)
                                  .overlay(
                                    Image(PastActivityListData.activityImage)
                                        
                                  )
                                  .padding(15)
                              
                              VStack{
                                  Text(PastActivityListData.activityName)
                                      .lineLimit(2)
                                      .font(Font.custom("NATS 400", size: 22))
                                      .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                      .padding(.bottom, 2)
                                  Text(PastActivityListData.activityCalulationTime)
                                      .lineLimit(2)
                                      .font(Font.custom("NATS 400", size: 15))
                                      .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                  
                              }
                                 
                              Spacer()
                              
                              VStack{
                                  HStack{
                                      Image("activity-fire")
                                      Text(PastActivityListData.activityKcal)
                                          .lineLimit(2)
                                          .font(Font.custom("NATS 400", size: 22))
                                          .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                  }
                                  .padding(.bottom, 2)
                                  Text(PastActivityListData.activityTime)
                                      .lineLimit(2)
                                      .font(Font.custom("NATS 400", size: 15))
                                      .foregroundColor(Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(1))
                                       
                                      .padding(.leading, 15)
                              }.padding(.horizontal, 20)
                              
                          }
                      }
                  }
              }
          }
        }
    }
}

struct ActivityTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityTrackerView()
    }
}
