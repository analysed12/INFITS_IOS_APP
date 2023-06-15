//
//  HelpView.swift
//  SettingsPages
//
//  Created by Rajni Banduni on 17/02/23.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        
        
        VStack {
            HStack {
                Button {
                    //Action button
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                }
                Spacer()
                
                Text("HELP")
                    .font(Font.custom("NATS 400", size: 38))
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .center)
            }//Header
            .padding(.vertical, 20)
            
          
            
            Image("help-banner")
                .resizable()
                .scaledToFit()
            
            Text("How can we help?")
                .font(Font.custom("NATS 400", size: 24))
                .foregroundColor(Color(red: 90 / 255, green: 90 / 255, blue: 90 / 255) .opacity(1))
                .padding(.horizontal, 30)
                .padding(.vertical, 30)
            
            //FAQ Box
            
            VStack {
                
                HStack {
                    
                    Image("FAQ")
                        .padding(.trailing, 8)
                    VStack {
                        
                        Text("FAQs")
                            .font(.headline)
                            .padding(.bottom, 1)
                            .font(Font.custom("NATS 400", size: 24))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Frequently Asked Questions")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.custom("NATS 400", size: 14))
                    }
                    .foregroundColor(Color(red: 90 / 255, green: 90 / 255, blue: 90 / 255))
                }
                 
                .font(.subheadline)
                .padding()
                .frame(height: 100)
                
                .background(Color(red: 252 / 255, green: 252 / 255, blue: 255 / 255) .opacity(1))        .cornerRadius(15)
                .shadow(color: (Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1)), radius: 5, x: 0, y: 1)
//                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                
            }
            
            //HELP
            VStack {
                
                HStack {
                    
                    Image("emoji_email")
                        .padding(.trailing, 8)
                    VStack {
                        
                        Text("Email")
                            .font(.headline)
                            .padding(.bottom, 1)
                            .font(Font.custom("NATS 400", size: 24))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Reach us through Email")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.custom("NATS 400", size: 14))
                    }
                    .foregroundColor(Color(red: 90 / 255, green: 90 / 255, blue: 90 / 255))
                }
                 
                .font(.subheadline)
                .padding()
                .frame(height: 100)
                
                .background(Color(red: 252 / 255, green: 252 / 255, blue: 255 / 255) .opacity(1))        .cornerRadius(15)
                .shadow(color: (Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.1)), radius: 5, x: 0, y: 1)
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                
            }
            
            
            Spacer()
        }
        
        
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
