//
//  WeightTracker.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 03/05/23.
//

import SwiftUI
 

struct WeightTracker: View {

    @State var steps: Int = 0
    @State var goal: Int = 160
    @State var calories: Int = 0
    @State var AvgSpeed: Int = 0
    @State var distance: Int = 0
    
    @State var setGoal:Bool = false
    @State var goalSetValue = ""
    
    @Binding var path : NavigationPath
    @State var isSeleced:Bool = false
    @State var isSeleced1:Bool = false
    @State var isPastActivitySeleced:Bool = false
//    @State var selectedAgeItem:Bool
    
    @State var selectedIndex = 0
    
    
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 17 / 255, green: 153 / 255, blue: 142 / 255).opacity(1),
                Color(red: 56 / 255, green: 239 / 255, blue: 125 / 255).opacity(1)
            ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            .ignoresSafeArea(.all)
            
            VStack {
                //Header
                HStack{
                    Button {
                        path.removeLast()
                    } label: {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading,16)
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30, alignment: .leading)
                    }
                    
                    Text("WEIGHT TRACKER")
                        .font(Font.custom("NATS 400", size: 35))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .offset(y:-1)
                    Spacer()
                }
                .padding(.bottom, 20)
                
                //Calender
                Button{
                    
                }label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white,lineWidth: 3)
                            .frame(width: UIScreen.main.bounds.width-260,height: 40)
                        HStack{
                            Image(systemName: "calendar")
                                .foregroundColor(.white)
                            Text("15.03.2022")
                                .foregroundColor(.white)
                                .font(Font.custom("NATS 400", size: 16))
                        }
                    }
                }.padding(.bottom, 20)
                
                //Calulating age
                ZStack {
                    Circle()
                        .frame(width: 184)
                        .foregroundStyle(.radialGradient(Gradient(colors: [Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0), Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5)]), center: .center, startRadius: 50, endRadius: 170))
                    
                    Button {
                        self.setGoal.toggle()
                    } label: {
                        ZStack {
                            Circle()
                                .frame(width: 40)
                                .foregroundStyle(.radialGradient(Gradient(colors: [Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0), Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5)]), center: .center, startRadius: 5, endRadius: 55))
                            Image(systemName: "plus")
                                .bold()
                                .foregroundColor(Color(red: 0.106, green: 0.7, blue: 0.539))
                        }
                    }
                    .position(x:UIScreen.main.bounds.width-110)
                    VStack {
                        Text("70")
                            .font(Font.custom("NATS 400", size: 70))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.106, green: 0.7, blue: 0.539))
                        Text("Kg")
                            .font(Font.custom("NATS 400", size: 30))
                            .foregroundColor(Color(red: 0.106, green: 0.7, blue: 0.539))
                    }
                }
                
                //BM Calculator
                VStack {
                    Text("BMI Calculator")
                        .padding(.trailing, 200.0)
                        .padding(.top)
                        .font(Font.custom("NATS 400", size: 22))
                        .foregroundColor(.white)
                    ZStack{
                        Rectangle()
                            .cornerRadius(10)
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .frame(width: UIScreen.main.bounds.width-40,height: 100)
                        VStack {
                            HStack {
                                Text("20.15")
                                    .font(Font.custom("NATS 400", size: 22))
                                    .foregroundColor(Color(red: 0.36, green: 0.36, blue: 0.36))
                                Text("Keep it Up!")
                                    .font(Font.custom("NATS 400", size: 18))
                                    .foregroundColor(Color(red: 0.012, green: 0.756, blue: 0.437))
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Image("goforward")
                                }
                                
                            }
                            .padding(.horizontal, UIScreen.main.bounds.width-350)
                            
                            HStack{
                                ForEach(0 ..< 10) { item in
                                    
                                }
                            }
                            
                            
                        }
                        
                    }
                    .edgesIgnoringSafeArea(.bottom)
                }.padding(.bottom, 20)
                
                // WeightPastActivityView
                VStack {
                    
                    WeightPastActivityView(col: Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255) .opacity(1))
                        .cornerRadius(15)
                        .ignoresSafeArea()
                    
                        .sheet(isPresented: $isPastActivitySeleced) {
                            WeightPastActivityView(col: Color(red: 0.12, green: 0.71, blue: 0.53).opacity(1.0))
                                .presentationDetents([.large])
                            .interactiveDismissDisabled()
                            
                        }
                        .onTapGesture {
                            isPastActivitySeleced = true
                        }
                    Spacer()
                    
                }
                
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.bottom)
            if setGoal {
                //                setDateViewAlert
                setWeightViewAlert(setGoal: $setGoal, isSeleced: $isSeleced, isSeleced1: $isSeleced1)
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}
 
struct WeightTracker_Previews: PreviewProvider {
    static var previews: some View {
        WeightTracker(path: .constant(NavigationPath()))
    }
}


var scroll_age = ["18", "19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"]

struct setWeightViewAlert: View {
    @State var goalSetValue = ""
    @Binding var setGoal:Bool
    @Binding var isSeleced:Bool
    @Binding var isSeleced1:Bool
    @State var selectedAgeItem:Bool = false
    @State var selectedAge = scroll_age[0]
    
    @EnvironmentObject var model:OnboardingViewModel
    
    var body: some View {
        ZStack {
            
            VStack {
                VStack (alignment: .trailing){
                    Button {
                        self.setGoal.toggle()
                   } label: {
                       Image(systemName: "xmark")
                           .resizable()
                           .frame(width: 15, height: 15)
                           .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    }
                   .frame(maxWidth: .infinity, alignment:.trailing)
                }
                 //Gender Button
                HStack {
                    //Male Button
                    Button {
                        self.isSeleced.toggle()
                        isSeleced1 = false
                    } label: {
                        ZStack   {
                            if isSeleced {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [
                                            Color(red: 18 / 255, green: 154 / 255, blue: 143 / 255),
                                            Color(red: 44 / 255, green: 212 / 255, blue: 131 / 255)
                                        ]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing))
                                    .frame(width: 130, height: 100)

                            } else {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(red: 204 / 255, green: 204 / 255, blue: 204 / 255), lineWidth: 1)
                                    .frame(width: 130, height: 100)
                            }

                            VStack (spacing: 10){
                                Image(isSeleced ? "male-white" : "male-green")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40)

                                Text("Male")
                                    .foregroundColor(isSeleced ? .white : Color(red: 116 / 255, green: 141 / 255, blue: 149 / 255))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }//Male

                    //Female Button
                    Button {
                        self.isSeleced1.toggle()
                        isSeleced = false
                    } label: {
                        ZStack {
                            if isSeleced1 {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [
                                            Color(red: 18 / 255, green: 154 / 255, blue: 143 / 255),
                                            Color(red: 44 / 255, green: 212 / 255, blue: 131 / 255)
                                        ]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing))
                                    .frame(width: 130, height: 100)

                            } else {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(red: 204 / 255, green: 204 / 255, blue: 204 / 255), lineWidth: 1)
                                    .frame(width: 130, height: 100)
                            }


                            VStack (spacing: 10){
                                Image(isSeleced1 ? "female-white" : "female-green")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40)

                                Text("Female")
                                    .foregroundColor(isSeleced1 ? .white : Color(red: 116 / 255, green: 141 / 255, blue: 149 / 255))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }//FeMale

                }
 
               
                .padding(.bottom, 30)
                
                VStack {
                    Text("What is your age?")
                        .font(Font.custom("NATS 400", size: 24))
                        .foregroundColor(Color(red: 0.4, green: 0.45,  blue: 0.49) .opacity(1))
                        
                  
                    ScrollView(.horizontal, showsIndicators: false) {
//                        Divider()
                        HStack(spacing: 16) {
                            ForEach(scroll_age, id:\.self) { item in
                                AgeButton(ageNumber: item, selectedAge: $selectedAge, isSelectAge: false)
                            }
                            .font(Font.custom("NATS 400", size: 20))
                            .foregroundColor(Color(red: 0.44, green: 0.55,  blue: 0.58) .opacity(1))
                        }
//                        Divider()
                        .padding()
                        
                    }
                   
                }// Age Done
                .padding(.bottom, 20)
                
                //Height
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(width: UIScreen.main.bounds.width - 100, height: 100)
                    
                    HStack{
                        VStack {
                            Image("Height")
                            Text("Height")
                                .font(Font.custom("NATS 400", size: 20))
                                .foregroundColor(Color(red: 0.33, green: 0.33,  blue: 0.33) .opacity(1))
                        }
                    Spacer()
                        Text("Height")
                            .font(Font.custom("NATS 400", size: 20))
                            .foregroundColor(Color(red: 0.33, green: 0.33,  blue: 0.33) .opacity(1))
                        
//                        height.environmentObject(model)
//                        ScaleDesignView(title: "Age:", value: self.$model.currentAgeValue, range:18...60).environmentObject(model)
//
//                        PersonalSelection
                        
                    }.padding(.horizontal)
                }.padding(.bottom, 30)
                
                
                //Weight
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(width: UIScreen.main.bounds.width - 100, height: 100)
                    
                    HStack{
                        VStack {
                            Image("Weight")
                            Text("Weight")
                                .font(Font.custom("NATS 400", size: 20))
                                .foregroundColor(Color(red: 0.33, green: 0.33,  blue: 0.33) .opacity(1))
                        }
                    Spacer()
                        Text("Weight")
                            .font(Font.custom("NATS 400", size: 20))
                            .foregroundColor(Color(red: 0.33, green: 0.33,  blue: 0.33) .opacity(1))
                        
                    }.padding(.horizontal)
                }
                
 
                .padding(.bottom, 30)
                
                Button {
                    self.setGoal.toggle()
                } label: {
                    Text("Done")
                        .font(Font.custom("NATS 400", size: 24))
                        .frame(width: 275, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 31 / 255, green: 181 / 255, blue: 138 / 255) .opacity(1))

                        .clipShape(Rectangle())
                        .cornerRadius(50)
                        .shadow(color:Color(#colorLiteral(red: 0.58, green: 0.68, blue: 1.0, alpha: 0.3)), radius: 6, x: 0, y: 10)
                }


            }.padding(20)
                .background( Color(red: 249 / 255, green: 249 / 255, blue: 249 / 255))
                .cornerRadius(10)
                .shadow(color:Color(red: 176 / 255, green: 190 / 255, blue: 197 / 255).opacity(0.32), radius: 15, x: 0, y: 3)
                .frame(width: UIScreen.main.bounds.width - 50)
             
        }
    }
}
                                                
                                                
//Alert View
struct setDateViewAlert: View {
    @State var goalSetValue = ""
    @Binding var setGoal:Bool
    @Binding var isSeleced:Bool
    
    var body: some View {
        ZStack {
            VStack{
                VStack (alignment: .trailing){
                    Button {
                        self.setGoal.toggle()
                   } label: {
                       Image(systemName: "xmark")
                           .resizable()
                           .frame(width: 15, height: 15)
                           .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    }
                   .frame(maxWidth: .infinity, alignment:.trailing)
                }
                 
                HStack{
                    Button {
                         
                    } label: {
                        
                        ZStack{
                            if isSeleced {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [
                                            Color(red: 18 / 255, green: 154 / 255, blue: 143 / 255),
                                            Color(red: 44 / 255, green: 212 / 255, blue: 131 / 255)
                                        ]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing))
                                    .frame(width: 130, height: 100)

                            } else {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(red: 204 / 255, green: 204 / 255, blue: 204 / 255), lineWidth: 1)
                                    .frame(width: 130, height: 100)
                            }
                            
                            VStack (spacing: 10){
                                Image(isSeleced ? "male-green" : "male-white")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40)
                                
                                Text("Male")
                                    .foregroundColor(isSeleced ? .white : Color(red: 116 / 255, green: 141 / 255, blue: 149 / 255))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                            }
                        }
 
                    }//Male
                    
                    Button {
                         
                    } label: {
                        ZStack{
                            if isSeleced {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [
                                            Color(red: 18 / 255, green: 154 / 255, blue: 143 / 255),
                                            Color(red: 44 / 255, green: 212 / 255, blue: 131 / 255)
                                        ]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing))
                                    .frame(width: 130, height: 100)

                            } else {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(red: 204 / 255, green: 204 / 255, blue: 204 / 255), lineWidth: 1)
                                    .frame(width: 130, height: 100)
                            }
                            
                            
                            VStack (spacing: 10){
                                Image(isSeleced ? "female-white" : "female-green")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40)
                                
                                Text("Female")
                                    .foregroundColor(isSeleced ? .white : Color(red: 116 / 255, green: 141 / 255, blue: 149 / 255))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                        
                    }//Male

                }

                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(0 ..< 10) { item in
                                GeometryReader { geometry in
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .rotation3DEffect(
                                            Angle(
                                                degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                                            ),
                                            axis: (x: 0, y: 1, z: 0),
                                            anchor: .center,
                                            anchorZ: 0.0,
                                            perspective: 1.0
                                        )
                                }
                                .frame(width: 30, height: 30)
                            }
                        }
                        .padding()
                    }
                }.frame(width: UIScreen.main.bounds.width - 100)

                .keyboardType(.numberPad)
                .padding(.all)
                .frame(width: 150, alignment: .center)
                .multilineTextAlignment(.center)
                Divider()
                    .frame(width: 150, alignment: .center)
                    .padding(.top, -10)
                    .padding(.bottom, 20)
                Button {
                    self.setGoal.toggle()
                } label: {
                    Text("Done")
                        .font(Font.custom("NATS 400", size: 24))
                        .frame(width: 275, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 31 / 255, green: 181 / 255, blue: 138 / 255) .opacity(1))

                        .clipShape(Rectangle())
                        .cornerRadius(50)
                        .shadow(color:Color(#colorLiteral(red: 0.58, green: 0.68, blue: 1.0, alpha: 0.3)), radius: 6, x: 0, y: 10)
                }


            }.padding(20)
                .background(.white)
                .cornerRadius(10)
                .shadow(color:Color(red: 176 / 255, green: 190 / 255, blue: 197 / 255).opacity(0.32), radius: 15, x: 0, y: 3)
                .frame(width: UIScreen.main.bounds.width - 50)
        }
    }
}

 
