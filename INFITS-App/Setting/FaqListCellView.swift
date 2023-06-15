//
//  ListCellView.swift
//  ExpandableListSwiftUIExample
//
//  Created by Rajni Banduni on 22/02/23.
//

 

import SwiftUI

struct FaqListCellView: View {
    @State private var tapped: Bool = false
    var row: Int
    var question: String
    var answer: String
    let radius = 10 // radius we need
    
    var body: some View {
        VStack(spacing: 0) {
            
            if tapped {
                ZStack {
                    Text(question)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width -  65, height:50, alignment: .leading)
                        .background(Color(red: 88 / 255, green: 182 / 255, blue: 255 / 255) .opacity(1))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .onTapGesture(perform: {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                tapped.toggle()
                            }
                        })
                    
                    Image("open")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12, alignment: .trailing)
                        .frame(width: UIScreen.main.bounds.width -  100, alignment: .trailing)
                }
            } else {
                ZStack {
                    Text(question)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width -  65, height:50, alignment: .leading)
                        .background(Color(red: 88 / 255, green: 182 / 255, blue: 255 / 255) .opacity(1))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                         .onTapGesture(perform: {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                tapped.toggle()
                            }
                        })
                    
                    
                    Image("close")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12, alignment: .trailing)
                        .frame(width: UIScreen.main.bounds.width -  100, alignment: .trailing)
                  }
             }
            
            
            
            
            
            if tapped {
                Text(answer)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: UIScreen.main.bounds.width -  65, alignment: .leading)
                    .background(Color(red: 88 / 255, green: 182 / 255, blue: 255 / 255) .opacity(1))                    
                
                    .clipped()
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                     
            }
        }
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
 
        FaqListCellView(row: 0, question: "Lorem ipsum", answer: "Lorem ipsum")
        
    }
}


 
