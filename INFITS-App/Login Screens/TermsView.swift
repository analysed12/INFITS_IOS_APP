//
//  TermsView.swift
//  LoginScreen
//
//  Created by Rajni Banduni on 12/02/23.
//

import SwiftUI

struct TermsView: View {
    @Binding var path : NavigationPath
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 88 / 255, green: 132 / 255, blue: 254 / 255),
                Color(red: 218 / 255, green: 117 / 255, blue: 236 / 255)
            ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            .ignoresSafeArea()
            
            ZStack {
                
                VStack{
                    
                    Text("TERMS")
                        .padding(.top, 20)
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(Font.custom("NATS 400", size: 30))
                        .padding(.bottom, 10)
                    
                    ScrollView{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum kldkfklsdfk sdfksdnfkdnf kdnk dlngkd lngklf dngkdfl ngdfklgn dklfgdmfklgm 123")
                            .lineLimit(nil)
                            .font(Font.custom("NATS 400", size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .lineSpacing(5)
                            .padding(20)
                    }
                    
                    Text("PRIVACY POLICY")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(Font.custom("NATS 400", size: 30))
                        .padding(.top, 10)
                    
                    ScrollView{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                            .lineLimit(nil)
                            .font(Font.custom("NATS 400", size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .lineSpacing(5)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .frame(maxWidth: .infinity, alignment: .center)

                    }
                    
                    Image("Infit transparent 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)                    
                }
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        path.removeLast()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                    }

                }
            }
            
        }
    }
}

struct TermsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsView(path: .constant(NavigationPath()))
    }
}
