//
//  SleepTrackerView.swift
//  Infits
//
//  Created by utkrisht chauhan on 01/02/23.
//

import SwiftUI

struct SleepTrackerView: View {
    
//    @State private var timer: Timer?
    @State private var startTime: Date?
    @State private var endTime: Date?
    @State private var isTrackingSleep = false
    @State private var sleepData: [Double] = []
    
    
    @State private var hour = ""
    @State private var minute = ""
    @State private var amPm = ""
    
    @Binding var path : NavigationPath
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            //Header
            HStack {
                Button {
                    path.removeLast()
//                    path.append(NavigationType.homeScreen)
                } label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading,16)
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30, alignment: .leading)
                }


                Text("SLEEP TRACKER")
                    .font(Font.custom("NATS 400", size: 38))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .offset(y:70)
            .padding(.horizontal,10)
            ZStack{
                Image("moon")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color(red: 0.352, green: 0.255, blue: 0.679))

                VStack {
                    Text("\(hour):\(minute)")
                        .font(Font.custom("NATS 400", size: 100))
                    Text("\(amPm)")
                        .font(Font.custom("NATS 400", size:26))
                        .fontWeight(.light)
                }
                .offset(y:80)


            }
            .offset(y:-20)
            Spacer()
                .frame(height: 60)
            
            Button {

            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width-100,height: 60)
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 59 / 255, green: 31 / 255, blue: 139 / 255).opacity(1))
                        .shadow(radius: 2)
                    Text("Start Cycle")
                        .font(Font.custom("NATS 400", size:25))
                }
            }
            .padding(.bottom)
            
            Button {
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                    
                        .stroke(Color(red: 59 / 255, green: 31 / 255, blue: 139 / 255).opacity(1), lineWidth: 4)
                        .frame(width: UIScreen.main.bounds.width-100,height: 60)
                        .overlay(
                            Text("Set an alarm")
                                .foregroundColor(.white)
                                .font(.custom("NATS 400", size: 25))
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.bottom)
            
            let h = (Int(hour) ?? 00)+8
            let a = h > 12 ? (amPm == "AM" ? false : true) : false
            Text("Optimal time to wake up is \(String((h>12 ? h-12 : h))):\(minute) \(a ? "AM" : "PM")")
            Spacer()
                .frame(height: 60)
             PastActivityView(col: Color(red: 0.613, green: 0.452, blue: 0.959))
                .cornerRadius(10)
                .foregroundColor(.black)
                .frame(width: UIScreen.main.bounds.width,height: .infinity)
          

        }
        .foregroundColor(Color.white)
        .background(LinearGradient(gradient: Gradient(colors: [
            Color(red: 69 / 255, green: 24 / 255, blue: 219 / 255).opacity(0.7),
            Color(red: 123 / 255, green: 41 / 255, blue: 255 / 255).opacity(0.7)
        ]),startPoint: .topLeading,
        endPoint: .bottomTrailing))
        
        .onReceive(timer) { _ in
                    let formatter = DateFormatter()
                    formatter.dateFormat = "h"
                    hour = formatter.string(from: Date())

                    formatter.dateFormat = "mm"
                    minute = formatter.string(from: Date())

                    formatter.dateFormat = "a"
                    amPm = formatter.string(from: Date())
                }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}


 
struct ChartView: View {
    let data: [Double]
    let maxValue: Double
    
    init(data: [Double]) {
        self.data = data
        self.maxValue = data.max() ?? 0
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottomLeading) {
                // Background grid lines
                ForEach(0..<6) { i in
                    let y = CGFloat(i) / 5 * geometry.size.height
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: y))
                        path.addLine(to: CGPoint(x: geometry.size.width, y: y))
                    }
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                }
                
                // Data line
                Path { path in
                    let stepX = geometry.size.width / CGFloat(data.count - 1)
                    let stepY = geometry.size.height / 5
                    for i in 0..<data.count {
                        let x = CGFloat(i) * stepX
                        let y = (1 - CGFloat(data[i]) / CGFloat(maxValue)) * geometry.size.height
                        if i == 0 {
                            path.move(to: CGPoint(x: x, y: y))
                        } else {
                            path.addLine(to: CGPoint(x: x, y: y))
                        }
                    }
                }
                .stroke(Color.blue, lineWidth: 2)
            }
        }
    }
}


struct SleepTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        SleepTrackerView(path: .constant(NavigationPath()))
    }
}

