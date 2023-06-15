//
//  CalenderView.swift
//  DietChart
//
//  Created by Rajni Banduni on 31/03/23.
//

import SwiftUI

struct CalenderView: View {
   
    @StateObject var taskModel:TaskViewModel = TaskViewModel()
    @Namespace var animation
    @EnvironmentObject var dateHolder: DateHolder

    var body: some View {
        HStack  {

            Button(action: previousMonth) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
            }
            .padding(.trailing, 10)

            Text("March 2023")
                .font(Font.custom("NATS 400", size: 22))
                .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                .padding(.trailing, 10)

            Button(action: nextMonth){
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
            }

        }.padding(.bottom, 20)
        //Week Calender
        ScrollView (.horizontal, showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(taskModel.currentWeek, id: \.self) { day in
                    VStack(spacing: 10) {
                        Text(taskModel.extractDate(date: day, format: "EEE"))
                            .font(Font.custom("NATS 400", size: 20))
                            .foregroundColor(taskModel.isToday(date: day) ? .white : Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                            
                        Text(taskModel.extractDate(date: day, format: "dd"))
                            .font(Font.custom("NATS 400", size: 20))
                            .foregroundColor(taskModel.isToday(date: day) ? .white  : Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                    }
                    
                    //Shape
                    
                    .foregroundColor(taskModel.isToday(date: day) ? .red : Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255).opacity(1))
                    .frame(width: 70, height: 80)
                    //In Calender Selected or present  Date Background color
                    .background (
                        ZStack {
                            if taskModel.isToday(date: day){
                                Rectangle()
                                    .fill(LinearGradient(
                                        colors: [
                                            Color(red: 0.58, green: 0.11, blue: 0.55),
                                            Color(red: 0.95, green: 0.67, blue: 0.76)],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                                     .cornerRadius(13)
                                    .frame(width: 60, height: 80)
                                    .matchedGeometryEffect(id: "CURRENTDAY", in: animation)
                            } else {
                                Rectangle()
                                    .fill(Color(red: 247 / 255, green: 248 / 255, blue: 248 / 255) .opacity(1))
                                     .cornerRadius(13)
                                    .frame(width: 60, height: 80)
                            }
                                
                        }.padding()
                    )
                    
                    .contentShape(Rectangle())
                    .onTapGesture {
                        //updating current date
                        withAnimation{
                            taskModel.currentDay = day
                        }
                    }
                }
            }.padding(.horizontal)
        }
    }
    
    //For some reason this is givinbg fatal error 
    
    func previousMonth() {
//        dateHolder.date = CalenderHelper().minusMonth(dateHolder.date)
    }
    
    func nextMonth() {
//        dateHolder.date = CalenderHelper().plusMonth(dateHolder.date)
    }
}

struct CalenderView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderView()
    }
}
