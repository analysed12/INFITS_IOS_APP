//
//  HeartRateView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 19/04/23.
//

 
import SwiftUI
import Charts

 
struct HeartRateView: View {

    @State var isSelected:Bool = false
    
    //New graph
    @State var sampleAnalytics: [HeartRateModel] = sample_analytics
    @State var currentTab: String = "7 Days"
    @State var currentActiveItem: HeartRateModel?
    
    @Binding var path : NavigationPath

    
    var body: some View {
        VStack{

            
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
                        .foregroundColor(Color(red: 233 / 255, green: 99 / 255, blue: 162 / 255).opacity(1))
                        .frame(width: 30, height: 30, alignment: .leading)
                }


                Text("HEART RATE")
                    .font(Font.custom("NATS 400", size: 38))
                    .foregroundColor(Color(red: 233 / 255, green: 99 / 255, blue: 162 / 255).opacity(1))
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.vertical, 20)
            
            //Today Button
            
            Button(action: {}) {
                HStack {
                    Text("Today")
                        .font(Font.custom("NATS 400", size: 14))
                        .foregroundColor(.white)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                }
            }
            .padding()
            .background(
                LinearGradient(
                    colors: [Color(red: 255 / 255, green: 125 / 255, blue: 166 / 255).opacity(0.75),
                             Color(red: 210 / 255, green: 88 / 255, blue: 183 / 255).opacity(0.75)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .cornerRadius(.infinity)
            
            
            
            //  Device connected Code
            HStack {
                Text("Device connected:")
                    .font(Font.custom("NATS 400", size: 18))
                
                Text("BSW043")
                    .font(Font.custom("NATS 400", size: 20))
            }.padding(.vertical, 20)
            
            //Start Grap here
            Button {
                //Start Here
            } label: {
                Text("Start")
                    .font(Font.custom("NATS 400", size: 20))
                    .foregroundColor(.white)
                    .frame(width: 134, height: 48)
                    .background(
                        LinearGradient(
                            colors: [Color(red: 255 / 255, green: 125 / 255, blue: 166 / 255).opacity(0.75),
                                     Color(red: 210 / 255, green: 88 / 255, blue: 183 / 255).opacity(0.75)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .cornerRadius(50)
            }
            .padding(.bottom, 40)
            
            
            VStack {
                VStack(alignment: .leading, spacing: 12) {
                    
                    let totalValue = sampleAnalytics.reduce(0.0) { partialResult, item in
                        item.views + partialResult
                    } ?? 0
                    
                    AnimateChart()
                }
            }
            .padding()
            .onChange(of: currentTab) { newValue in
                sampleAnalytics = sample_analytics
                if newValue != "7 Days" {
                    for (index, _) in sampleAnalytics.enumerated() {
                        sampleAnalytics[index].views = .random(in: 100...500)
                    }
                }
                
                animatedGraph(fromChange: true)
            }
            .padding(.bottom, 20)
            //Bottom Design
            ZStack {
                
                LinearGradient(
                    colors: [
                        Color(red: 255 / 255, green: 125 / 255, blue: 166 / 255).opacity(1),
                        
                        Color(red: 210 / 255, green: 88 / 255, blue: 183 / 255).opacity(1)],
                    startPoint: .top,
                    endPoint: .bottom
                ).ignoresSafeArea()
                
                ZStack(alignment: .top){
                    Button {
                        self.isSelected.toggle()
                        print("value")
                    } label: {
                        Image("heart-btn")
                    }
                }
                .padding(.top, -95)
                
                HStack(alignment: .center, spacing: 20) {
                    VStack{
                        HStack(alignment: .lastTextBaseline, spacing: 0){
                            Text("81")
                                .font(Font.custom("NATS 400", size: 35))
                                .foregroundColor(.white)
                            Text(" BPM")
                                .font(Font.custom("NATS 400", size: 17))
                                .foregroundColor(.white)
                        }
                        VStack{
                            Text("Average ")
                                .font(Font.custom("NATS 400", size: 15))
                                .foregroundColor(.white)
                            Text("HR")
                                .font(Font.custom("NATS 400", size: 15))
                                .foregroundColor(.white)
                        }
                        
                    }.padding(.horizontal, 10)
                    
                    VStack{
                        HStack(alignment: .lastTextBaseline,spacing: 0){
                            Text("155")
                                .font(Font.custom("NATS 400", size: 35))
                                .foregroundColor(.white)
                            Text(" BPM")
                                .font(Font.custom("NATS 400", size: 17))
                                .foregroundColor(.white)
                        }
                        VStack{
                            Text("Maximum")
                                .font(Font.custom("NATS 400", size: 15))
                                .foregroundColor(.white)
                            Text("HR")
                                .font(Font.custom("NATS 400", size: 15))
                                .foregroundColor(.white)
                        }
                        
                    }.padding(.horizontal, 10)
                    
                    VStack{
                        
                        HStack(alignment: .lastTextBaseline, spacing: 0){
                            Text("65")
                                .font(Font.custom("NATS 400", size: 35))
                                .foregroundColor(.white)
                            Text(" BPM")
                                .font(Font.custom("NATS 400", size: 17))
                                .foregroundColor(.white)
                        }
                        VStack{
                            Text("Minimum")
                                .font(Font.custom("NATS 400", size: 15))
                                .foregroundColor(.white)
                            Text("HR")
                                .font(Font.custom("NATS 400", size: 15))
                                .foregroundColor(.white)
                        }
                    }.padding(.horizontal, 10)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder
    func AnimateChart() -> some View {
        let max = sampleAnalytics.max { item1, item2 in
            return item2.views > item1.views
        }?.views ?? 0
        Chart {
            ForEach(sampleAnalytics) { item in
                
                LineMark(
                    x: .value("Hour", item.hour, unit: .hour),
                    y: .value("Views", item.animate ? item.views : 0)
                )
                .interpolationMethod(.monotone)//catmullRom
                .foregroundStyle(LinearGradient(
                    colors: [Color(red: 255 / 255, green: 125 / 255, blue: 166 / 255).opacity(0.75),
                             Color(red: 210 / 255, green: 88 / 255, blue: 183 / 255).opacity(0.75)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
                
                if let currentActiveItem, currentActiveItem.id == item.id {
                    RuleMark(x: .value("Hour", currentActiveItem.hour, unit: .hour))
                        .lineStyle(.init(lineWidth: 2, miterLimit: 2, dash: [2], dashPhase: 5))
                        .foregroundStyle(LinearGradient(
                            colors: [Color(red: 255 / 255, green: 125 / 255, blue: 166 / 255).opacity(0.75),
                                     Color(red: 210 / 255, green: 88 / 255, blue: 183 / 255).opacity(0.75)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                    
 
                        .annotation(position: .top) {
                            VStack(alignment: .center, spacing: 6) {
                                Text("Heart Beat")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                
                                Text(currentActiveItem.views.stringFormat)
                                    .font(.title3.bold())
                                    .foregroundColor(.white)
                                
                            }

                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background {
                                RoundedRectangle(cornerRadius: 6, style: .continuous)
                                    .fill(LinearGradient(
                                        colors: [Color(red: 255 / 255, green: 125 / 255, blue: 166 / 255).opacity(0.75),
                                                 Color(red: 210 / 255, green: 88 / 255, blue: 183 / 255).opacity(0.75)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                            }
                        }
                }
            }
        }
        .chartYScale(domain: 0...(max + 100))
        .chartOverlay(content: { proxy in
            GeometryReader { innerProxy in
                Rectangle()
                    .fill(.clear).contentShape(Rectangle())
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                let location = value.location
                                
                                if let date: Date = proxy.value(atX: location.x) {
                                    let calendar = Calendar.current
                                    let hour = calendar.component(.hour, from: date)
                                    
                                    if let currentItem = sampleAnalytics.first(where: { item in
                                        calendar.component(.hour, from: item.hour) == hour
                                    }){
                                        self.currentActiveItem = currentItem
                                    }
                                }
                                
                            }).onEnded({ value in
                                self.currentActiveItem = nil
                            })
                    )
            }
        })
        .frame(height: 250)
        .onAppear {
            animatedGraph()
        }
    }
    
    func animatedGraph(fromChange: Bool = false) {
        for (index, _) in sampleAnalytics.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * (fromChange ? 0.03 : 0.05)) {
                withAnimation(fromChange ? .easeIn(duration: 0.8) : .interactiveSpring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.8)) {
                    sampleAnalytics[index].animate = true
                }
            }
        }
    }
}

struct HeartRateView_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateView(path: .constant(NavigationPath()))
    }
}


extension Double {
    var stringFormat: String {
        if self >= 10000 && self < 999999 {
            return String(format: "%.1fK", self / 10000).replacingOccurrences(of: ".0", with: "")
        }

        if self > 999999 {
            return String(format: "%.1fM", self / 1000000).replacingOccurrences(of: ".0", with: "")
        }
        
        return String(format: "%.0f", self)
    }
}
