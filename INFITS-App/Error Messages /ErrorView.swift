//
//  ErrorView.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 12/02/23.
//

import SwiftUI

struct ErrorView: View {
    @State var color = Color.black.opacity(0.7)
    @Binding var alert : Bool
    @Binding var error : String
    
    var body: some View{
        
//        GeometryReader{_ in
            
        VStack{
            VStack {
                
                HStack {
                    
                    Text(self.error == "RESET" ? "Message" : "Error")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                
                Text(self.error == "RESET" ? "Password reset link has been sent successfully" : self.error)
                    .foregroundColor(.black)
                    .padding(.top)
                
                
                Button(action: {
                    
                    self.alert.toggle()
                    
                }) {
                    
                    Text(self.error == "RESET" ? "Ok" : "Cancel")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    
                        .frame(width: UIScreen.main.bounds.width - 50)
                }
                .background(LinearGradient(gradient: Gradient(colors: [
                    Color(red: 88 / 255, green: 132 / 255, blue: 254 / 255),
                    Color(red: 218 / 255, green: 117 / 255, blue: 236 / 255)
                ]),startPoint: .topLeading,endPoint: .bottomTrailing))
                .cornerRadius(10)
                .padding(.top, 25)
                
                .frame(width: UIScreen.main.bounds.width - 50, height: 150)
            }
            
            
            .padding(.vertical, 25)
            .background(Color.white)
            .cornerRadius(15)
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
        
    }
}

// 
struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
