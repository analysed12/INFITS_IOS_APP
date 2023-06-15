//
//  ProfileSettings.swift
//  SettingsPages
//
//  Created by Rajni Banduni on 16/02/23.
//

import SwiftUI

struct ProfileSettings: View {
    
    @Binding var path : NavigationPath
    
    var body: some View {
        
        VStack {
            HStack{
                Button {
                    //These code are temporialy so set path which scrren  you want to redirect
                    path.removeLast()
           
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                        .font(.system(size: 25))
                        .padding(.leading, 20)
                }
                Spacer()
                
                Text("SETTINGS")
                    .font(Font.custom("NATS 400", size: 38))
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.vertical, 20)
            
            
            VStack(alignment:.leading) {
                
                Text("Profile")
                    .font(Font.custom("NATS 400", size: 24))
                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                    .padding(.horizontal, 30)
                
                HStack {
                    VStack {
                        Image("avatars")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .padding(.leading, 20)
                    }
                    .padding(.horizontal, 5)
                    .padding(.vertical, 10)
                    
                    VStack (alignment: .leading) {
                        Text("John Wayne")
                            .font(Font.custom("NATS 400", size: 22))
                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 1)
                        Text("Personal Info")
                            .font(Font.custom("NATS 400", size: 16))
                            .foregroundColor(Color(red: 200 / 255, green: 200 / 255, blue: 200 / 255).opacity(1))
                    }
                    
                    VStack(alignment: .leading) {
                        Button {
                            print("Button was tapped")
                        } label: {
                            Image(systemName: "chevron.right")
                            
                                .padding(15)
                                .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 1 / 255) .opacity(01))
                            
                                .background(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) .opacity(1))
                                .cornerRadius(8)
                                .frame(width: 20, height: 20)
                                .fontWeight(.bold)
                        }
                        
                    }
                    
                    .padding(.horizontal, 40)
                    
                }
                
                ScrollView {
                    VStack {
                        Text("Settings")
                            .font(Font.custom("NATS 400", size: 24))
                            .fontWeight(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                            .padding(.horizontal, 40)
                        
                        //Know About Dietician
                        ZStack {
                            HStack {
                                Image("profile-search")
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 241 / 255, blue: 214 / 255))
                                    .clipShape(Circle())
                                    .padding(.horizontal, 12)
                                
                                Text("Know about Dietician")
                                    .font(Font.custom("NATS 400", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                
                                Button {
                                    print("Button was tapped")
                                } label: {
                                    Image(systemName: "chevron.right")
                                        .padding(15)
                                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 1 / 255) .opacity(01))
                                    
                                        .background(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) .opacity(1))
                                        .cornerRadius(8)
                                        .frame(width: 20, height: 20)
                                        .fontWeight(.bold)
                                }
                                .padding(.horizontal, 20)
                            }
                            
                            .padding(.horizontal, 20)
                            .padding(.vertical, 20)
                        }
                        
                        //Device Management
                        ZStack {
                            HStack {
                                Image("devicemanagement")
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 243 / 255, blue: 239 / 255))
                                    .clipShape(Circle())
                                    .padding(.horizontal, 10)
                                
                                Text("Device Management")
                                    .font(Font.custom("NATS 400", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                Button {
                                    print("Button was tapped")
                                } label: {
                                    Image(systemName: "chevron.right")
                                        .padding(15)
                                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 1 / 255) .opacity(01))
                                    
                                        .background(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) .opacity(1))
                                        .cornerRadius(8)
                                        .frame(width: 20, height: 20)
                                        .fontWeight(.bold)
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        
                        .padding(.horizontal, 20)
                        
                        //Notifiction
                        ZStack {
                            HStack {
                                Image("notification")
                                    .padding(10)
                                    .background(Color(red: 213 / 255, green: 232 / 255, blue: 255 / 255))
                                    .clipShape(Circle())
                                    .padding(.horizontal, 12)
                                    .padding(.trailing, 5)
                                Text("Notifications")
                                    .font(Font.custom("NATS 400", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                
                                Button {
                                    print("Button was tapped")
                                } label: {
                                    Image(systemName: "chevron.right")
                                        .padding(15)
                                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 1 / 255) .opacity(01))
                                    
                                        .background(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) .opacity(1))
                                        .cornerRadius(8)
                                        .frame(width: 20, height: 20)
                                        .fontWeight(.bold)
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        
                        //Referral Code
                        ZStack {
                            HStack {
                                Image("referralcode")
                                    .padding(10)
                                    .background(Color(red: 234 / 255, green: 225 / 255, blue: 255 / 255))
                                    .clipShape(Circle())
                                    .padding(.horizontal, 10)
                                    .padding(.trailing, 5)
                                
                                Text("Referral Code")
                                    .font(Font.custom("NATS 400", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                
                                Button {
                                    print("Button was tapped")
                                } label: {
                                    Image(systemName: "chevron.right")
                                        .padding(15)
                                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 1 / 255) .opacity(01))
                                    
                                        .background(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) .opacity(1))
                                        .cornerRadius(8)
                                        .frame(width: 20, height: 20)
                                        .fontWeight(.bold)
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        
                        .padding(.horizontal, 20)
                        
                        //About US
                        ZStack {
                            HStack {
                                Image("profile-about")
                                    .padding(10)
                                    .background(Color(red: 114 / 255, green: 184 / 255, blue: 183 / 255).opacity(0.18))
                                    .clipShape(Circle())
                                    .padding(.horizontal, 12)
                                
                                Text("About Us")
                                    .font(Font.custom("NATS 400", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                
                                Button {
                                    print("Button was tapped")
                                } label: {
                                    Image(systemName: "chevron.right")
                                        .padding(15)
                                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 1 / 255) .opacity(01))
                                    
                                        .background(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) .opacity(1))
                                        .cornerRadius(8)
                                        .frame(width: 20, height: 20)
                                        .fontWeight(.bold)
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        
                        //Help
                        
                        ZStack {
                            HStack {
                                Image("help")
                                    .padding(10)
                                    .background(Color(red: 255 / 255, green: 215 / 255, blue: 237 / 255).opacity(1))
                                    .clipShape(Circle())
                                    .padding(.horizontal, 14)
                                    .padding(.vertical, 0)
                                
                                Text("Help")
                                    .font(Font.custom("NATS 400", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                
                                Button {
                                    print("Button was tapped")
                                } label: {
                                    Image(systemName: "chevron.right")
                                        .padding(15)
                                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 1 / 255) .opacity(01))
                                    
                                        .background(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) .opacity(1))
                                        .cornerRadius(8)
                                        .frame(width: 20, height: 20)
                                        .fontWeight(.bold)
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        
                        .padding(.horizontal, 20)
//                        .padding(.vertical, 20)
                    }
                    
                    
                }
                
                Spacer()
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings(path: .constant(NavigationPath()))
    }
}
