//
//  TakePhotoView.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 12/04/23.
//

import SwiftUI

struct TakePhotoView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            //Camera View
            
            //Control
            ZStack{
                GeometryReader { geometry in
                    Image("Pizza-pic")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(geometry.size, contentMode: .fill)
                        .frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .edgesIgnoringSafeArea(.all)
                }
                
                 VStack{
                    Text("Take a photo")
                        .font(Font.custom("NATS 400", size: 24))
                        .foregroundColor(.white)
                        .frame(width: 235, height: 50)
                        .background(Color(red: 243 / 255, green: 109 / 255, blue: 93 / 255).opacity(0.45))
                        .cornerRadius(31)
                        .overlay(
                                RoundedRectangle(cornerRadius: 31)
                                    .stroke(.white, lineWidth: 5)
                            )
 
                    Spacer()
                }
                Spacer()
                HStack(alignment: .center, spacing: 50){
                   
                    Button {
                        //Camera Action
                    } label: {
                            Image("Gallery")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                    }
                    
                    Button {
                        //Capture Image AcCtion
                    } label: {
                        Image("Capture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                     }
                                        
                    Button {
                        //Capture Done Action
                    } label: {
                        Image("Capture-done")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    }
                }
                .padding(.trailing)
                .frame(maxHeight: .infinity, alignment: .bottom)
             }
//            .padding(.bottom, 10)
//            .padding(.bottom, 30)
        }
        .preferredColorScheme(.dark)
    }
}

struct TakePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        TakePhotoView()
    }
}
