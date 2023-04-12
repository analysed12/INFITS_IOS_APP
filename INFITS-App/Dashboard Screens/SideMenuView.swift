//
//  SideMenuView.swift
//  Infits
//
//  Created by Chitrala Dhruv on 23/01/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image("infits Logo")
                        .padding(.leading, 22)
                        .padding(.top,15)
                    Spacer()
                }
                
                VStack {
                    listButton(name: "Dashboard")
                    listButton(name: "Charts")
                    listButton(name: "Live")
                    listButton(name: "Consultations")
                    listButton(name: "Scan")
                    listButton(name: "Recipies")
                    listButton(name: "Mail")
                    listButton(name: "Settings")
                }
                
                Spacer()
                HStack {
                    Image("profilePicture")
                        .cornerRadius(100)
                        .padding(.trailing, 10)
                    
                    VStack {
                        Text("John Wayne")
                            .font(.system(size: 20))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 1)

                        Text("Plan Name")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                }
                .padding(.leading)
                .padding(.bottom,10)
                
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

struct listButton: View {
    var name: String
    var body: some View {
        HStack {
            Button {
                print("Edit button was tapped")
            } label: {
                Image(name)
                    .padding(.trailing)
                Text(name)
                    .foregroundColor(.black)
                    .font(.system(size: 20))
            }
            Spacer()
        }
        .padding(.leading)
        .padding(.bottom, 25)
    }
}

