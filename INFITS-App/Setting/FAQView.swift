//
//  FAQView.swift
//  SettingsPages
//
//  Created by Rajni Banduni on 20/02/23.
//


// On Click design issue pending
import SwiftUI

struct FAQView: View {
    var itemsArray = Data().items

    var body: some View {
        VStack(spacing: 0) {
            
            Text("FAQs")
                .font(Font.custom("NATS 400", size: 38))
                .foregroundColor(Color.black)
                .padding(.vertical, 30)
            
            ForEach(0..<itemsArray.count) { row in
                
                FaqListCellView(row: row, question: itemsArray[row].question, answer: itemsArray[row].answer)
                
            }
            .padding(.vertical, 10)
            Spacer()
        }
        
        
    }
    
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}

