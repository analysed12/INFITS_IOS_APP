//
//  MealDetailView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 11/05/23.
//

import SwiftUI

struct MealDetailView: View {
    @State var isCollapsed = true
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                    Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                startPoint: .top,
                endPoint: .bottom
            ).edgesIgnoringSafeArea(.all)
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
                    .cornerRadius(40)
                    .offset(y:370)
               
                
                VStack {
                    
                    HStack {
                        Image(systemName: "chevron.left")
                            .padding(10)
                            .background(Color(red: 247 / 255, green: 248 / 255, blue: 248 / 255).opacity(1))
                            .clipShape(Rectangle())
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                            .padding(.top, 41)
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .padding(10)
                            .background(Color(red: 247 / 255, green: 248 / 255, blue: 248 / 255).opacity(1))
                            .clipShape(Rectangle())
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                            .padding(.top, 41)
                    }
//                    .padding(.vertical, 20)
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                         
                    ZStack {
                        
                        Image("Vector")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 100)
                            .padding(.horizontal, 5)
                        
                    }
                    .padding(.vertical, 100)
                    
                    HStack{
                        Image("Rectangle")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:50, height: 5)
                            .padding(.horizontal, 10)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.bottom, 10)
                            .padding(.top, 10)
                    }
                    
                    ScrollView {
                        HStack {
                            VStack{
                                Text("Blueberry Pancake")
                                .font(Font.custom("NATS 400", size: 25))
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                Text("by Ronald Richards")
                                    .font(Font.custom("NATS 400", size: 17))
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            .padding(.horizontal, 20)
                            Spacer()
//                            padding()
                            Image("Heart")
                                .padding(10)
                                .background(Color.white)
                                .clipShape(Rectangle())
                                .cornerRadius(8)
                                .shadow(color:Color(red: 29 / 255, green: 22 / 255, blue: 23 / 255).opacity(0.07    ), radius: 15, x: 0, y: 10)
                                .padding(.horizontal, 20)
                        }
                        
                        VStack{
                            Text("Nutrition Breakdown")
                            .font(Font.custom("NATS 400", size: 25))
                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 30)
                            
                            //Nutrition Scroll
                            ScrollView (Axis.Set.horizontal) {
                                HStack {
                                    //KCAL
                                    Label("180 kCal", image: "Calories")
                                         .font(Font.custom("NATS 400", size: 14))
                                        .foregroundColor(.white)
                                        .frame(width: 134, height: 48)
                                        .background(
                                            LinearGradient(
                                                colors: [Color(red: 146 / 255, green: 163    / 255, blue: 253 / 255).opacity(1),
                                                         Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(1)],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .foregroundColor(Color(red: 29 / 255, green: 22    / 255, blue: 23 / 255).opacity(1))
                                    
 
                                        .cornerRadius(12)
                                    
                                    //Fat
                                    Label("30g fats", image: "Fat")
                                         .font(Font.custom("NATS 400", size: 14))
                                        .foregroundColor(.white)
                                        .frame(width: 134, height: 48)
                                        .background(
                                            LinearGradient(
                                                colors: [Color(red: 146 / 255, green: 163    / 255, blue: 253 / 255).opacity(1),
                                                         Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(1)],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .foregroundColor(Color(red: 29 / 255, green: 22    / 255, blue: 23 / 255).opacity(1))
                                        .cornerRadius(12)
                                    
                                    //proteins
                                    Label("20g proteins", image: "Protein")
                                         .font(Font.custom("NATS 400", size: 14))
                                        .foregroundColor(.white)
                                        .frame(width: 134, height: 48)
                                        .background(
                                            LinearGradient(
                                                colors: [Color(red: 146 / 255, green: 163    / 255, blue: 253 / 255).opacity(1),
                                                         Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(1)],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .foregroundColor(Color(red: 29 / 255, green: 22    / 255, blue: 23 / 255).opacity(1))
                                        .cornerRadius(12)
                                    
                                    //carbo
                                    Label("20g carbo", image: "Protein")
                                         .font(Font.custom("NATS 400", size: 14))
                                        .foregroundColor(.white)
                                        .frame(width: 134, height: 48)
                                        .background(
                                            LinearGradient(
                                                colors: [Color(red: 146 / 255, green: 163    / 255, blue: 253 / 255).opacity(1),
                                                         Color(red: 157 / 255, green: 206 / 255, blue: 255 / 255).opacity(1)],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .foregroundColor(Color(red: 29 / 255, green: 22    / 255, blue: 23 / 255).opacity(1))
                                        .cornerRadius(12)
                                    
                                }
                                .padding(.top, 1)
                                .padding(.bottom, 20)
                            }
                            .padding(.horizontal, 20)
                            
                            Text("Description")
                            .font(Font.custom("NATS 400", size: 21))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                            
                            //Description Text
                            ExpandableText(text: "Do you think you're living an ordinary life? You are so mistaken it's difficult to even explain. The mere fact that you exist makes you extraordinary. The odds of you existing are less than winning the lottery, but here you are. Are you going to let this extraordinary opportunity pass?")
                                .font(Font.custom("NATS 400", size: 16))
                                .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                        .lineLimit(3)
                                        .animation(.easeOut)
                                        .padding(.vertical,5)
                                        .padding(.horizontal, 20)
                            
                            //Ingredients that will be needed to prepare the recipe
                            
                            HStack {
                                Text("Ingredients that will be needed to prepare the recipe")
                                .font(Font.custom("NATS 400", size: 25))
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 30)
                                
                                Spacer()
                                Text("6 Item ")
                                    .font(Font.custom("NATS 400", size: 25))
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                    .padding(.trailing, 20)
                              }
                            
                            ScrollView (Axis.Set.horizontal) {
                                HStack {
                                    //Wheat Flour
                                    ZStack {
                                        VStack{
                                            Image("WheatFlour")
                                                .padding(20)
                                                .background(Color(red: 247 / 255, green: 248   / 255, blue: 248 / 255).opacity(1))
                                                .clipShape(Rectangle())
                                                .cornerRadius(12)
                                                .frame(width: 80, height: 80)
                                            Text("WheatFlour")
                                                .font(Font.custom("NATS 400", size: 16))
                                                .padding(.top, 5)
                                                .padding(.bottom, 1)
                                            Text("100gr")
                                                .font(Font.custom("NATS 400", size: 15))
                                        }
                                    }
                                    //Sugar
                                    ZStack {
                                        VStack{
                                            Image("sugar")
                                                .padding(20)
                                                .background(Color(red: 247 / 255, green: 248   / 255, blue: 248 / 255).opacity(1))
                                                .clipShape(Rectangle())
                                                .cornerRadius(12)
                                                .frame(width: 80, height: 80)
                                            Text("sugar")
                                                .font(Font.custom("NATS 400", size: 16))
                                                .padding(.top, 5)
                                                .padding(.bottom, 1)
                                            Text("3 tbsp")
                                                .font(Font.custom("NATS 400", size: 15))
                                        }
                                    }
                                    //Baking Soda
                                    ZStack {
                                        VStack{
                                            Image("baking")
                                                .padding(20)
                                                .background(Color(red: 247 / 255, green: 248   / 255, blue: 248 / 255).opacity(1))
                                                .clipShape(Rectangle())
                                                .cornerRadius(12)
                                                .frame(width: 80, height: 80)
                                            Text("sugar")
                                                .font(Font.custom("NATS 400", size: 16))
                                                .padding(.top, 5)
                                                .padding(.bottom, 1)
                                            Text("2 tbsp")
                                                .font(Font.custom("NATS 400", size: 15))
                                        }
                                    }
                                    //Eggs
                                    ZStack {
                                        VStack{
                                            Image("baking")
                                                .padding(20)
                                                .background(Color(red: 247 / 255, green: 248   / 255, blue: 248 / 255).opacity(1))
                                                .clipShape(Rectangle())
                                                .cornerRadius(12)
                                                .frame(width: 80, height: 80)
                                            Text("sugar")
                                                .font(Font.custom("NATS 400", size: 16))
                                                .padding(.top, 5)
                                                .padding(.bottom, 1)
                                            Text("2 items")
                                                .font(Font.custom("NATS 400", size: 15))
                                        }
                                    }
                                 }
                            }//ScrollView For Full screen
                            .padding(.horizontal, 20)
                            
                            HStack {
                                //Heading text
                                Text("Steps for preparing")
                                .font(Font.custom("NATS 400", size: 25))
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 30)
                                
                                Spacer()
                                Text("8 Steps ")
                                    .font(Font.custom("NATS 400", size: 25))
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                    .padding(.trailing, 20)
                              }
                            
                            VStack (alignment: .leading) {
                                //Step 01 number or circle
                                HStack {
                                    Text("01")
                                        .font(Font.custom("NATS 400", size: 14))
                                        .overlay {
                                            LinearGradient(
                                                colors: [
                                                    Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                    Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                            .mask(
                                                Text("01")
                                                    .font(Font.custom("NATS 400", size: 14))
                                             )
                                        }
                                        .padding(.leading, 20)
                                    //circle
                                    ZStack {
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                    }
                                    
                                    Text("Step 1")
                                        .font(Font.custom("NATS 400", size: 18))
                                }
                                //Step 01 Description
                                HStack {
                                    DottedLine()
                                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                    .frame(width: 1, height: 35)
                                    .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                                    .padding(.leading, 50)
                                    
                                    Text("Prepare all of the ingredients that are needed.")
                                        .font(Font.custom("NATS 400", size: 16))
                                        .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                        .padding(.leading, 10)
                                        .padding(.trailing, 34)
                                }
                                
                                //Step 02 number or circle
                                HStack {
                                    Text("02")
                                        .font(Font.custom("NATS 400", size: 14))
                                        .overlay {
                                            LinearGradient(
                                                colors: [
                                                    Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                    Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                            .mask(
                                                Text("02")
                                                    .font(Font.custom("NATS 400", size: 14))
                                             )
                                        }
                                        .padding(.leading, 20)
                                    //circle
                                    ZStack {
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                         
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                    }
                                    
                                    Text("Step 2")
                                        .font(Font.custom("NATS 400", size: 18))
                                }
                                //Step 02 Description
                                HStack {
                                    DottedLine()
                                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                    .frame(width: 1, height: 35)
                                    .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                                    .padding(.leading, 50)
                                    
                                    Text("Mix flour, sugar, salt, and baking powder.")
                                    .font(Font.custom("NATS 400", size: 16))
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                    .padding(.leading, 10)
                                    .padding(.trailing, 34)
                                }
                                
                                
                                //Step 03 number or circle
                                HStack {
                                    Text("03")
                                        .font(Font.custom("NATS 400", size: 14))
                                        .overlay {
                                            LinearGradient(
                                                colors: [
                                                    Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                    Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                            .mask(
                                                Text("03")
                                                    .font(Font.custom("NATS 400", size: 14))
                                             )
                                        }
                                        .padding(.leading, 20)
                                    //circle
                                    ZStack {
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                         
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                    }
                                    
                                    Text("Step 3")
                                        .font(Font.custom("NATS 400", size: 18))
                                }
                                //Step 03 Description
                                HStack {
                                    DottedLine()
                                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                    .frame(width: 1, height: 35)
                                    .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                                    .padding(.leading, 50)
                                    
                                    Text("In a seperate place, mix the eggs and liquid milk until blended.")
                                    .font(Font.custom("NATS 400", size: 16))
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                    .padding(.leading, 10)
                                    .padding(.trailing, 34)
                                }
                                
                                
                                //Step 04 number or circle
                                HStack {
                                    Text("04")
                                        .font(Font.custom("NATS 400", size: 14))
                                        .overlay {
                                            LinearGradient(
                                                colors: [
                                                    Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                    Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                            .mask(
                                                Text("04")
                                                    .font(Font.custom("NATS 400", size: 14))
                                             )
                                        }
                                        .padding(.leading, 20)
                                    //circle
                                    ZStack {
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                         
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                    }
                                    
                                    Text("Step 4")
                                        .font(Font.custom("NATS 400", size: 18))
                                }
                                //Step 04 Description
                                HStack {
                                    DottedLine()
                                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                    .frame(width: 1, height: 35)
                                    .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                                    .padding(.leading, 50)
                                    
                                    Text("Put the egg and milk mixture into the dry ingredients, Stir untul smooth and smooth.")
                                    .font(Font.custom("NATS 400", size: 16))
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                    .padding(.leading, 10)
                                    .padding(.trailing, 34)
                                }
                                
                                //Step 05 number or circle
                                HStack {
                                    Text("05")
                                        .font(Font.custom("NATS 400", size: 14))
                                        .overlay {
                                            LinearGradient(
                                                colors: [
                                                    Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                                    Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                            .mask(
                                                Text("05")
                                                    .font(Font.custom("NATS 400", size: 14))
                                             )
                                        }
                                        .padding(.leading, 20)
                                    //circle
                                    ZStack {
                                        Circle()
                                            .frame(width: 14)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                         
                                        Circle()
                                            .frame(width: 12)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 8)
                                            .foregroundColor(Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1))
                                    }
                                    
                                    Text("Step 5")
                                        .font(Font.custom("NATS 400", size: 18))
                                }
                                //Step 05 Description
                                HStack {
                                    DottedLine()
                                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                    .frame(width: 1, height: 35)
                                    .foregroundColor(Color(red: 173 / 255, green: 164 / 255, blue: 165 / 255).opacity(1))
                                    .padding(.leading, 50)
                                    
                                    Text("Prepare all of the ingredients that needed.")
                                    .font(Font.custom("NATS 400", size: 16))
                                    .foregroundColor(Color(red: 123 / 255, green: 111 / 255, blue: 114 / 255).opacity(1))
                                    .padding(.leading, 10)
                                    .padding(.trailing, 34)
                                }
                                
                            }
                            
                            
                            Button {
                                //Add to Calorie Tracker button action
                            } label: {
                                Text("Add to Calorie Tracker")
                                    .font(Font.custom("NATS 400", size: 26))
//                                    .padding(20)
                                    .frame(width: UIScreen.main.bounds.width - 100, height: 60)
                                    .background(
                                        LinearGradient(
                                        colors: [
                                            Color(red: 147 / 255, green: 28 / 255, blue: 139 / 255).opacity(1),
                                            Color(red: 241 / 255, green: 170 / 255, blue: 194 / 255).opacity(1)],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                                    .shadow(color: Color(red: 149 / 255, green: 173 / 255, blue: 254 / 255).opacity(0.3), radius: 5, x: 0, y: 10)
                                    .foregroundColor(.white)
                                    .cornerRadius(99)
                                    .padding(20)
                                    
                                
                                
                                
                            }
                            .padding(.vertical, 20)

                            
                        }
                    }//Full Screen Scoll View
                    
                    Spacer()
                }
                .ignoresSafeArea()
            }
        }
    }
}

struct MealDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailView()
    }
}
