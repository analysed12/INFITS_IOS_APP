//
//  KnowaboutDietitian.swift
//  SettingsPages
//
//  Created by Rajni Banduni on 20/02/23.
//
//KnowaboutDietitian & Know aboutNutrionists has a same design.

import SwiftUI

struct KnowaboutDietitian: View {
    
    
    var body: some View {
        ZStack {
            Color(red: 199 / 255, green: 230 / 255, blue: 255 / 255).edgesIgnoringSafeArea(.all)
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
                    .cornerRadius(25)
                    .offset(y:320)
                VStack {
                    
                    Text("Know about Dietitian")
                        .font(Font.custom("NATS 400", size: 38))
                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                        .padding(.top, 60)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height / 3)
                            .cornerRadius(30)
                            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.05), radius: 15, x: 0, y: 5)
                        VStack {
                            Image("avatars")
                                .resizable()
                                .scaledToFill()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 150, height: 150)
                                .padding(.leading, 20)
                            
                            
                            Text("John Wayne")
                                .font(Font.custom("NATS 400", size: 28))
                                .foregroundColor(Color.black)
                            
                            Text("Professional Dietitian")
                                .font(Font.custom("NATS 400", size: 20))
                                .foregroundColor(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                .padding(.top, 10)
                        }
                        
                    }
                    
                    ScrollView {
                        
                        ZStack {

                            VStack {
                                HStack {
                                    //Age OR Gender Sec
                                    Capsule()
                                        .fill(Color(red: 199 / 255, green: 230 / 255, blue: 2550 / 255).opacity(1))
                                    
                                        .frame(width: 130, height: 50, alignment: .center)
                                        .overlay(
                                            Text("31 | Male")
                                                .font(Font.custom("NATS 400", size: 20))
                                                .foregroundColor(Color.black)
                                        )
                                        .padding(30)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    //Comments Image
                                    
                                    Image("Comments")
                                        .resizable()
                                        .scaledToFill()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 40, height: 40)
                                        .padding(.horizontal, 30)
                                }
                                
                                //Email
                                ZStack {
                                    HStack {
                                        Image("email")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text(verbatim: "john@gmail.com")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Phone Number
                                ZStack {
                                    HStack {
                                        Image("phone")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("9876543210")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                        
                                        
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Location
                                ZStack {
                                    HStack {
                                        Image("location")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("Mumbai")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                        
                                        
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Experience
                                ZStack {
                                    HStack {
                                        Image("Rating")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("10 Years of Experience")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Achievements and Certifications
                                ZStack {
                                    HStack {
                                        Image("Trophy")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("Achievements and Certifications")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                        
                                        
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                .padding(.bottom, 20)
                                
                                VStack {
                                    HStack {
                                        Circle()
                                            .fill(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                            .frame(width: 15, height: 15)
                                        
                                        Text("Best Dietitian Award Winner")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .foregroundColor(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                    }
                                    
                                    HStack {
                                        Circle()
                                            .fill(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                            .frame(width: 15, height: 15)
                                        
                                        Text("Special Diet Certification      ")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .foregroundColor(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                        
                                    }
                                    
                                    .padding(20)
                                }
                                .padding(.bottom, 20)
                            }
                        }
                    }
                    
                    Spacer()
                }
                .ignoresSafeArea()
            }
        }
    }
}


struct KnowAboutNutrionists: View {
    
    
    var body: some View {
        ZStack {
            Color(red: 199 / 255, green: 230 / 255, blue: 255 / 255).edgesIgnoringSafeArea(.all)
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
                    .cornerRadius(25)
                    .offset(y:320)
                VStack {
                    
                    Text("Know about Nutrionists")
                        .font(Font.custom("NATS 400", size: 38))
                        .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                        .padding(.top, 60)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height / 3)
                            .cornerRadius(30)
                            .shadow(color:Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(0.05), radius: 15, x: 0, y: 5)
                        VStack {
                            Image("avatars")
                                .resizable()
                                .scaledToFill()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 150, height: 150)
                                .padding(.leading, 20)
                            
                            
                            Text("John Wayne")
                                .font(Font.custom("NATS 400", size: 28))
                                .foregroundColor(Color.black)
                            
                            Text("Professional Dietitian")
                                .font(Font.custom("NATS 400", size: 20))
                                .foregroundColor(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                .padding(.top, 10)
                        }
                        
                    }
                    
                    ScrollView {
                        
                        ZStack {
                            
                            VStack {
                                HStack {
                                    //Age OR Gender Sec
                                    Capsule()
                                        .fill(Color(red: 199 / 255, green: 230 / 255, blue: 2550 / 255).opacity(1))
                                    
                                        .frame(width: 130, height: 50, alignment: .center)
                                        .overlay(
                                            Text("31 | Male")
                                                .font(Font.custom("NATS 400", size: 20))
                                                .foregroundColor(Color.black)
                                        )
                                        .padding(30)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    //Comments Image
                                    
                                    Image("Comments")
                                        .resizable()
                                        .scaledToFill()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 40, height: 40)
                                        .padding(.horizontal, 30)
                                 }
                                
                                //Email
                                ZStack {
                                    HStack {
                                        Image("email")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text(verbatim: "john@gmail.com")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Phone Number
                                ZStack {
                                    HStack {
                                        Image("phone")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("9876543210")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                        
                                        
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Location
                                ZStack {
                                    HStack {
                                        Image("location")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("Mumbai")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                        
                                        
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Experience
                                ZStack {
                                    HStack {
                                        Image("Rating")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("10 Years of Experience")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                //Achievements and Certifications
                                ZStack {
                                    HStack {
                                        Image("Trophy 1")
                                            .padding(10)
                                            .padding(.horizontal, 6)
                                        
                                        Text("Achievements and Certifications")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .foregroundColor(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255).opacity(1))
                                        
                                        
                                    }
                                    
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                }
                                
                                .padding(.bottom, 20)
                                
                                VStack {
                                    HStack {
                                        Circle()
                                            .fill(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                            .frame(width: 15, height: 15)
                                        
                                        Text("Best Dietitian Award Winner")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .foregroundColor(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                    }
                                    
                                    HStack {
                                        Circle()
                                            .fill(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                            .frame(width: 15, height: 15)
                                        
                                        Text("Special Diet Certification      ")
                                            .font(Font.custom("NATS 400", size: 20))
                                            .foregroundColor(Color(red: 120 / 255, green: 195 / 255, blue: 255 / 255).opacity(1))
                                    }
                                    .padding(20)
                                }
                                .padding(.bottom, 20)
                            }
                        }
                    }
                    
                    Spacer()
                }
                .ignoresSafeArea()
            }
        }
    }
}


struct KnowaboutDietitian_Previews: PreviewProvider {
    static var previews: some View {
        KnowaboutDietitian()
    }
}

#if DEBUG

struct KnowAboutNutrionists_Previews: PreviewProvider {
    static var previews: some View {
        KnowAboutNutrionists()
    }
}
#endif
