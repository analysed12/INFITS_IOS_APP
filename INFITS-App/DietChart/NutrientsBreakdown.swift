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

import SwiftUI

struct NutrientsBreakdown: View {
   
    //Picker
    private let size:[String] = ["Regular", "Small", "Large"]
    private let quantity:[String] = ["0.5", "1", "1.5", "2", "2.5"]
    
    @State private var selectedSize:String = ""
    @State private var selecteQuantity:String = ""
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                Image("pizzasSlice")
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width)
                    .ignoresSafeArea()
                    .padding(.horizontal, 20)
                
                ScrollView {
                    VStack {
                        Text("Nutrients Breakdown")
                            .font(Font.custom("NATS 400", size: 25))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        HStack (alignment: .center,spacing: 20){
                            //Calories
                            VStack {
                                Image("Calories")
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio( contentMode: .fit)
                                    .frame(width: 30)
                                Text("Calories")
                                    .font(Font.custom("NATS 400", size: 20))
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
                                    .font(Font.custom("NATS 400", size: 20))
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
                                    .font(Font.custom("NATS 400", size: 20))
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
                                    .font(Font.custom("NATS 400", size: 20))
                                Text("5.2 g")
                                    .font(Font.custom("NATS 400", size: 25))
                                    .padding(.vertical, 1)
                                    .padding(.horizontal, 10)
                            }
                        }
                        .padding(.vertical, 20)
                        
                        //Pick the quantity
//                        VStack {
                            Text("Pick the quantity")
                                .font(Font.custom("NATS 400", size: 25))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 20)
//                                .padding(.bottom, 30)
                            
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
                //                    Text("Selected Size \(selectedSize)")
                                    Picker("Choose a Size", selection: $selectedSize) {
                                        ForEach(size, id:\.self){ size in
                                            Text(size)
                                        }
                                    }.pickerStyle(.inline)
                                }
                            }
//                        }
//                        .padding(.vertical, 20)
                        
                    }
                }//scrollview
                
                //last button
                Button {
                    //Take Photo action
                } label: {
                    Text("Take a photo")
                        .font(Font.custom("NATS 400", size: 20))
                        .frame(width: UIScreen.main.bounds.width / 2, height: 40, alignment: .center)
                        .foregroundColor(Color(red: 246 / 255, green: 181 / 255, blue: 102 / 255).opacity(1))
                        .background(.white)
                    
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.25), radius: 15, x: 0, y: 2)
                }
            }//vstack
        }
        
    }
}


struct NutrientsBreakdown_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsBreakdown()
    }
}

