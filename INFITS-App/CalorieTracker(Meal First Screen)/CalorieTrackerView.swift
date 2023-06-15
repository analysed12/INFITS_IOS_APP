//
//  CalorieTrackerView.swift
//  Infits
//
//  Created by utkrisht chauhan on 01/02/23.
//

import SwiftUI

struct CalorieTrackerView: View {
    @State var meals: Bool = false
    @Binding var path : NavigationPath
    
    var body: some View {
        VStack(spacing: 20){
            HStack{
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


                Text("CALORIE TRACKER")
                    .font(Font.custom("NATS 400", size: 38))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                
//                Text("CALORIE TRACKER")
//                    .font(.custom("NATS 400", size: 30))
//                    .padding(.leading, 22.0)
//                Spacer()
            }
            ZStack {
                Rectangle()
                    .foregroundColor(Color(red: 0.999, green: 0.524, blue: 0.069))
                    .frame(width: UIScreen.main.bounds.width - 80,height:142)
                    .cornerRadius(10)
                    .shadow(radius: 10,y:10)
                HStack {
                    VStack(alignment: .leading,spacing: 10) {
                        Text("Calories\nConsumed")
                            .font(.custom("NATS 400", size: 20))
                        Text("Calories consumed in\na single day")
                            .font(.custom("NATS 400", size: 14))
//                            .padding(.leading)
                    }
                    .padding(.leading)
                    Spacer()
                    ZStack {
                        Arc(rad: 50, sangle: 0, eangle: 360, clckwise: false)
                            .stroke(lineWidth: 15)
                            .foregroundStyle(.linearGradient(Gradient(colors: [Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0), Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.1)]), startPoint: UnitPoint(x: 0, y: 1.2), endPoint: UnitPoint(x: 0, y: -1)))
                            .opacity(0.9)
                        Arc(rad: 50, sangle: -100, eangle: 30, clckwise: false)
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color(red: 0.91, green: 0.449, blue: 0.002))
                        VStack {
                            Text("889")
                                .font(.custom("NATS 400", size: 25))
                            Text("kcal")
                                .font(.custom("NATS 400", size: 14))
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 80,height:142)
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 80,height:142)
                    .cornerRadius(10)
                    .shadow(radius: 10,y:10)
                HStack {
                    ZStack {
                        Arc(rad: 50, sangle: 0, eangle: 360, clckwise: false)
                            .stroke(lineWidth: 15)
//                            .foregroundColor(.blue)
                            .foregroundStyle(.linearGradient(Gradient(colors: [Color(red: 0.999, green: 0.647, blue: 0.308),Color(red: 0.936, green: 0.921, blue: 0.425)]), startPoint: UnitPoint(x: 0, y: 1.2), endPoint: UnitPoint(x: 0, y: -1)))
                            .opacity(0.7)
                        Arc(rad: 50, sangle: -250, eangle: 30, clckwise: false)
                            .stroke(lineWidth: 5)
                            .foregroundColor(.white)
                        VStack {
                            Text("789")
                                .font(.custom("NATS 400", size: 25))
                            Text("kcal")
                                .font(.custom("NATS 400", size: 14))
                        }
                        .foregroundColor(Color(red: 1.001, green: 0.507, blue: 0.036))
                    }
                    Spacer()
                    VStack(alignment: .leading,spacing: 10) {
                        Text("Calories\nBurnt")
                            .font(.custom("NATS 400", size: 20))
                        Text("Calories burnt in\na single day")
                            .font(.custom("NATS 400", size: 14))
                    }
                    .padding(.trailing,30)
                    .foregroundColor(Color(red: 1.002, green: 0.494, blue: -0.004))
                    
                }
                .frame(width: UIScreen.main.bounds.width - 80,height:142)
            }
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 136,height: 67)
                        .cornerRadius(10)
                        .shadow(radius: 10 ,y: 10)
                    VStack {
                        Text("Carbs")
                            .font(.custom("NATS 400", size: 12))
                            .foregroundColor(Color(red: 0.042, green: 0.601, blue: -0.001))
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 70,height: 6)
                                .foregroundColor(Color(red: 0.944, green: 0.949, blue: 0.949))
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 50,height: 6)
                                .foregroundColor(Color(red: 0.042, green: 0.601, blue: -0.001))
                        }
                        Text("150g Left")
                            .foregroundColor(Color(red: 0.042, green: 0.601, blue: -0.001))
                            .font(.custom("NATS 400", size: 12))

                    }
                }
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 136,height: 67)
                        .cornerRadius(10)
                        .shadow(radius: 10 ,y: 10)
                    VStack {
                        Text("Fiber")
                            .font(.custom("NATS 400", size: 12))
                            .foregroundColor(Color(red: 0.862, green: 0.263, blue: -0.004))
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 70,height: 6)
                                .foregroundColor(Color(red: 0.944, green: 0.949, blue: 0.949))
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 50,height: 6)
                                .foregroundColor(Color(red: 0.862, green: 0.263, blue: -0.004))
                        }
                        Text("150g Left")
                            .foregroundColor(Color(red: 0.862, green: 0.263, blue: -0.004))
                            .font(.custom("NATS 400", size: 12))

                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 80)
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 136,height: 67)
                        .cornerRadius(10)
                        .shadow(radius: 10 ,y: 10)
                    VStack {
                        Text("Protien")
                            .font(.custom("NATS 400", size: 12))
                            .foregroundColor(Color(red: 0.588, green: -0.005, blue: 0.86))
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 70,height: 6)
                                .foregroundColor(Color(red: 0.944, green: 0.949, blue: 0.949))
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 50,height: 6)
                                .foregroundColor(Color(red: 0.588, green: -0.005, blue: 0.86))
                        }
                        Text("150g Left")
                            .foregroundColor(Color(red: 0.588, green: -0.005, blue: 0.86))
                            .font(.custom("NATS 400", size: 12))

                    }
                }
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 136,height: 67)
                        .cornerRadius(10)
                        .shadow(radius: 10 ,y: 10)
                    VStack {
                        Text("Fat")
                            .font(.custom("NATS 400", size: 12))
                            .foregroundColor(Color(red: 0.442, green: 0.596, blue: 0.997))
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 70,height: 6)
                                .foregroundColor(Color(red: 0.944, green: 0.949, blue: 0.949))
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 50,height: 6)
                                .foregroundColor(Color(red: 0.442, green: 0.596, blue: 0.997))
                        }
                        Text("150g Left")
                            .foregroundColor(Color(red: 0.442, green: 0.596, blue: 0.997))
                            .font(.custom("NATS 400", size: 12))

                    }
                }

            }
            .frame(width: UIScreen.main.bounds.width - 80)
            .padding(.bottom,40)
            
            MealsView()
            .background(.white)
            .cornerRadius(25)
            .position(x:UIScreen.main.bounds.width/2,y:300)

            .frame(height: 180)
            .gesture(
                DragGesture()
                    .onChanged({_ in
                        meals.toggle()
                        
                    })
                
            )
            .gesture(
                TapGesture()
                    .onEnded({_ in
                        meals.toggle()
                    })
            )
 
            
        }
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
        .background(Gradient(colors: [Color(red: 0.999, green: 0.647, blue: 0.308),Color(red: 0.936, green: 0.921, blue: 0.425)]))
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $meals) {
            MealsView()
                .presentationDetents([.height(600)])
        }
    }
}

struct CalorieTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        CalorieTrackerView( path: .constant(NavigationPath()))
    }
}
