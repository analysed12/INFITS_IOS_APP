//
//  CustomTextField1.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 12/02/23.
//

import SwiftUI

struct TextFieldCustom: View {
    let placeholder: String
    @Binding var text: String
    @State private var width = CGFloat.zero
    @State private var labelWidth = CGFloat.zero
    @State private var isEditing = false
 
    public init(placeHolder: String,
                 text: Binding<String>) {
         self._text = text
         self.placeholder = placeHolder
      }
    
    
    
    var body: some View {
           TextField(placeholder, text: $text, prompt: Text(placeholder).foregroundColor(.white))
               .foregroundColor(.white)
               .font(Font.custom("NATS 400", size: 17))
               .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
               .autocapitalization(.none)
                .background {
                   ZStack {
                       RoundedRectangle(cornerRadius: 5)
                           .trim(from: 0, to: 0.55)
                           .stroke(.white, lineWidth: 2)
                       RoundedRectangle(cornerRadius: 5)
                           .trim(from: 0.565 + (0.43 * (labelWidth / width)), to: 1)
                           .stroke(.white, lineWidth: 2)
                       
                       
                       Text(placeholder)
                           .font(Font.custom("NATS 400", size: 14))
                           .foregroundColor(.white)
                           .overlay( GeometryReader { geo in Color.clear.onAppear { labelWidth = geo.size.width }})
                           .padding(2)
                           .font(.caption)
                           .frame(maxWidth: .infinity,
                                  maxHeight: .infinity,
                                  alignment: .topLeading)
                           .offset(x: 20, y: -12)
                   }
               }
               .overlay( GeometryReader { geo in Color.clear.onAppear { width = geo.size.width }})
               .onChange(of: width) { _ in
                   print("Width: ", width)
               }
               .onChange(of: labelWidth) { _ in
                   print("labelWidth: ", labelWidth)
               }
      }
}
 
