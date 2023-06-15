//
//  NutrientsBreakdown.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

class EnvironmentVariables: ObservableObject {
    @Published var currentIndexforPosts: Int = 0
}


struct NutrientsBreakdown: View {
   
    //Picker
    private let size:[String] = ["Regular", "Small", "Large"]
    private let quantity:[String] = ["0.5", "1", "1.5", "2", "2.5"]
    
    @State private var selectedSize:String = ""
    @State private var selecteQuantity:String = ""
    @State private var isSeleced:Bool = false
    
    var body: some View {
        ZStack{
            VStack {
                ZStack {
                    ZStack {
                        Image("Frame-pizza")
                            .resizable()
                            .scaledToFit()
                        .offset(y:-10)
                        Rectangle()
                                .foregroundColor(.clear)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [.black, .clear, .clear]),
                                        startPoint: .top,
                                        endPoint: .bottom))
                    }
                    .frame(height: 400)
                    
                    HStack{
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .padding(.leading, 15)
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30, alignment: .leading)
                                .bold()
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            isSeleced.toggle()
                        }) {
                            Image(systemName: isSeleced ? "heart.fill" : "heart")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 15)
                                .foregroundColor(Color(red: 255 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                .frame(width: 40, height: 40, alignment: .center)
                        }
                        
                        
                    }
                    .offset(y:-120)
                    
                }
                Spacer()
            }
            .ignoresSafeArea()
            
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height/3 + 80)
                    .cornerRadius(40)

                VStack {
                    Text("Pizza")
                        .font(Font.custom("NATS 400", size: 35))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 10)

                    Text("Nutrients Breakdown")
                        .font(Font.custom("NATS 400", size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)

                    HStack (spacing: 20){
                        //Calories
                        VStack {
                            Image("Calories")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 30)
                            Text("Calories")
                                .font(Font.custom("NATS 400", size: 18))
                            Text("50")
                                .font(Font.custom("NATS 400", size: 25))
                                .padding(.vertical, 1)
                                .padding(.horizontal, 10)
                        }
                        //Carbs
                        VStack {
                            Image("Carbs")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 30)
                            Text("Carbs")
                                .font(Font.custom("NATS 400", size: 18))
                            Text("54")
                                .font(Font.custom("NATS 400", size: 25))
                                .padding(.vertical, 1)
                                .padding(.horizontal, 10)
                        }
                        //Protein
                        VStack {
                            Image("Protein")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 30)
                            Text("Protein")
                                .font(Font.custom("NATS 400", size: 18))
                            Text("6.3 g")
                                .font(Font.custom("NATS 400", size: 25))
                                .padding(.vertical, 1)
                                .padding(.horizontal, 10)
                        }
                        //Fat
                        VStack {
                            Image("Fat")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 30)
                            Text("Fat")
                                .font(Font.custom("NATS 400", size: 18))
                            Text("5.2 g")
                                .font(Font.custom("NATS 400", size: 25))
                                .padding(.vertical, 1)
                                .padding(.horizontal, 10)
                        }
                    }
                    .padding(.vertical, 20)

                    //Pick the quantity
                         Text("Pick the quantity")
                            .font(Font.custom("NATS 400", size: 22))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)

                       //Picker
                        HStack{
                            Group {
                                 Picker("Choose a Size", selection: $selecteQuantity) {
                                    ForEach(quantity, id:\.self){ size in
                                        Text(size)
                                    }
                                }.pickerStyle(.wheel)
                            }

                            Group {
                                Picker("Choose a Size", selection: $selectedSize) {
                                    ForEach(size, id:\.self){ size in
                                        Text(size)
                                    }
                                }.pickerStyle(.inline)
                            }
//                            .compositingGroup()
//                            .clipped(antialiased: true)
                        }

                    Button {
                        //Take Photo action
                    } label: {
                        Text("Add")
                            .font(Font.custom("NATS 400", size: 26))
                            .frame(width: 115, height: 45, alignment: .center)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [
                                Color(red: 255 / 255, green: 153 / 255, blue: 55 / 255),
                                Color(red: 236 / 255, green: 255 / 255, blue: 120 / 255)
                            ]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing))

                            .clipShape(Rectangle())
                            .cornerRadius(10)
                            .shadow(color:Color(#colorLiteral(red: 0.58, green: 0.68, blue: 1.0, alpha: 0.3)), radius: 6, x: 0, y: 10)
                    }
                }
                .offset(y:110)
            }
        }
    }
}


struct NutrientsBreakdown_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsBreakdown()
    }
}

 
