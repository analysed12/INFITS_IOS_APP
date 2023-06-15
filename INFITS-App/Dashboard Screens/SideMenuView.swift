//
//  SideMenuView.swift
//  Infits
//
//  Created by Chitrala Dhruv on 23/01/23.
//

import SwiftUI
import GoogleSignIn
import Firebase

struct SideMenuView: View {
    @AppStorage("log_Status") var log_Status = false
    //Navigation
    @Binding var path : NavigationPath
    
    @State var isSelectedMenu:Bool = false
    
    @State private var currentindex = 0
    
    @State private var selectedMenu: [String] = ["Dashboard", "Chart"]
    @State private var highlighted = HighlightTag.none
    
    enum HighlightTag {
            case none, dashboard, chart, live, consultations, scan, recipies, mail, settings, logout
        }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            VStack(alignment: .leading, spacing: 15){
                Image("Infit transparent")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 65)
                    
            }
                .frame(maxWidth: .infinity, alignment: .center)
             //final sidebar code
                    VStack(alignment: .leading, spacing: 20) {

                        //Dashboard
                        Button {
                            path.append(NavigationType.homeScreen)
                            currentindex = 1
                            highlighted = .dashboard

                        } label: {
                            if highlighted == .dashboard || selectedMenu.first == "Dashboard"{
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("dashboard-white")
                                                .offset(x:-25)
                                            Text("Dashboard")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-35)
                                        }
                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Dashboard")
                                                .offset(x:-30)
                                            Text("Dashboard")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-40)
                                        }
                                    )
                                    .offset(x:-30)
                            }
                        }

                        //Charts
                        Button {
                            print("Edit button was tapped")
                            highlighted = .chart
                        } label: {
                            if highlighted == .chart {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Charts")
                                                .offset(x:-50)
                                            Text("Charts")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-60)
                                        }

                                    )
                                    .offset(x:-30)
                                
                            } else {
                                
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Charts")
                                                .offset(x:-50)
                                            Text("Charts")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-60)
                                        }

                                    )
                                    .offset(x:-25)
                                
                            }
                        }

                        //Live
                        Button {
                            path.append(NavigationType.LiveSession)
                            highlighted = .live
                        } label: {
                            if highlighted == .live {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Live")
                                                .offset(x:-55)
                                            Text("Live")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-60)
                                        }

                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Live")
                                                .offset(x:-60)
                                            Text("Live")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-70)
                                        }

                                    )
                                    .offset(x:-30)
                            }
                            
                        }

                        //Consultations
                        Button {
                            
                            print("Edit button was tapped")
                            highlighted = .consultations
                        } label: {
                            if highlighted == .consultations {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Consultations")
                                                .offset(x:-20)
                                            Text("Consultations")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-25)
                                        }

                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Consultations")
                                                .offset(x:-18)
                                            Text("Consultations")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-25)
                                        }

                                    )
                                    .offset(x:-30)
                            }
                        }


                        //Scan
                        Button {
                            print("Edit button was tapped")
                            highlighted = .scan
                        } label: {
                            if highlighted == .scan {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                                          startPoint: .topLeading,
                                                          endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Scan")
                                                .offset(x:-55)
                                            Text("Scan")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-60)
                                        }
                                        
                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Scan")
                                                .offset(x:-58)
                                            Text("Scan")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-65)
                                        }

                                    )
                                    .offset(x:-30)
                            }
                           
                        }
                       

                        //Recipies
                        Button {
                            print("Edit button was tapped")
                            highlighted = .recipies
                        } label: {
                            if highlighted == .recipies {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                                          startPoint: .topLeading,
                                                          endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Recipies")
                                                .offset(x:-44)
                                            Text("Recipies")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-55)
                                        }
                                        
                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Recipies")
                                                .offset(x:-44)
                                            Text("Recipies")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-55)
                                        }

                                    )
                                    .offset(x:-30)
                            }
                             
                        }
                        
//                        ForEach(SideMenuRowType.allCases, id: \.self){ row in
//                            RowView(isSelected: selectedSideMenuTab == row.rawValue, imageName: row.iconName, title: row.title) {
//                                selectedSideMenuTab = row.rawValue
//                                presentSideMenu.toggle()
//                            }
//                        }
                        
                        

                        //Mail
                        Button {
                            print("Edit button was tapped")
                            highlighted = .mail
                        } label: {
                            if highlighted == .mail {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                                          startPoint: .topLeading,
                                                          endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Mail")
                                                .offset(x:-60)
                                            Text("Mail")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-68)
                                        }
                                        
                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Mail")
                                                .offset(x:-60)
                                            Text("Mail")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-65)
                                        }

                                    )
                                    .offset(x:-30)
                            }
                        }

                        //Settings
                        Button {
                            path.append(NavigationType.ProfileSettings)
                            highlighted = .settings
                        } label: {
                            if highlighted == .settings {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                                          startPoint: .topLeading,
                                                          endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Settings")
                                                .offset(x:-45)
                                            Text("Settings")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-55)
                                        }
                                        
                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Settings")
                                                .offset(x:-45)
                                            Text("Settings")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-55)
                                        }

                                    )
                                    .offset(x:-30)
                            }
                        }

                        //Logout
                        Button {
                            highlighted = .logout
                            GIDSignIn.sharedInstance.signOut()
                            try? Auth.auth().signOut()

                            withAnimation {
                                log_Status = false
                                path.append(NavigationType.login)
                            }
                            
                        } label: {
                            if highlighted == .logout {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 38 / 255, green: 103 / 255, blue: 255 / 255).opacity(0.8),
                                        Color(red: 213 / 255, green: 83 / 255, blue: 231 / 255).opacity(0.8)
                                    ]),
                                                          startPoint: .topLeading,
                                                          endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Logout")
                                                .offset(x:-50)
                                            Text("Logout")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .offset(x:-60)
                                        }
                                        
                                    ).offset(x:-30)
                            } else {
                                Rectangle()
                                    .fill( LinearGradient(gradient: Gradient(colors: [
                                        Color(red: 229 / 255, green: 299 / 255, blue: 299 / 255).opacity(0.04),
                                        Color(red: 229 / 255, green: 229 / 255, blue: 299 / 255).opacity(0.04)
                                    ]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                                    .cornerRadius(15)
                                    .frame(height:50)
                                    .overlay(
                                        HStack(spacing: 20){
                                            Image("Logout")
                                                .offset(x:-50)
                                            Text("Logout")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20))
                                                .offset(x:-60)
                                        }

                                    )
                                    .offset(x:-30)
                            }
                        }

                    }.offset(x: 10)

            .padding()
            .padding(.leading)
            .padding(.top, 25)
            .padding(.bottom, 10)
            Divider()
             
           
            HStack {
                Image("profilePicture")
                    .cornerRadius(100)
                    .padding(.trailing, 10)
                
                VStack {
                    Text("John Wayne")
                        .font(.custom("NATS 400", size: 24))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 1)

                    Text("Plan Name")
                        .font(.custom("NATS 400", size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .foregroundColor(Color(red: 90 / 255, green: 90 / 255, blue: 90 / 255).opacity(1))
            }
            .frame(maxHeight: .infinity, alignment:.bottom)
            .padding(.leading)
            .padding(.top, 25)
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        //MaxWidth
        .frame(width: getRect().width - 130)
        .frame(maxHeight: .infinity)
        .background(
            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    func menuButton(title: String, image:String) -> some View{
        NavigationLink{
             Text("\(title)")
                .navigationTitle(title)
                
            } label: {
                HStack(spacing: 14){
                    Image(image)
                    Text(title)
                }
                .font(.custom("NATS 400", size: 22))
                .foregroundColor(Color(red: 82 / 255, green: 82 / 255, blue: 82 / 255).opacity(1))
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        
    }
    
     
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(path: .constant(NavigationPath()))
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
                    .overlay(
                        Rectangle()
                            .background(.red)
                            .foregroundColor(.white)
                    )
            }
            Spacer()
        }
        .padding(.leading)
        .padding(.bottom, 25)
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}



//hie , I have one more issue , user signing through google then we get userID and user redirect in dashboard screen when user logout and again try signin  through same account then he get duplicate data error so how you manage in android




//ZStack {
//    VStack {
//        HStack {
//            Image("Infit transparent")
////                        .resizable()
////                        .renderingMode(.original)
////                        .aspectRatio(contentMode: .fit)
//                .frame(width: UIScreen.main.bounds.width / 1, height: 150, alignment: .leading)
//                
////                        .padding(.top, 50)
//                .offset(y:50)
//            Spacer()
//        }
//        .padding(.bottom, 70)
//        
//        VStack {
////                    listButton(name: "Dashboard")
////                    listButton(name: "Charts")
////                    listButton(name: "Live")
////                    listButton(name: "Consultations")
////                    listButton(name: "Scan")
////                    listButton(name: "Recipies")
////                    listButton(name: "Mail")
////                    listButton(name: "Settings")
////                    listButton(name: "Logout")
//            
//            //DashBoard
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Dashboard")
//                    .padding(.trailing)
//                Text("Dashboard")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            //Charts
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Charts")
//                    .padding(.trailing)
//                Text("Charts")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            //Live
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Live")
//                    .padding(.trailing)
//                Text("Live")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            //Consultations
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Consultations")
//                    .padding(.trailing)
//                Text("Consultations")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            //Scan
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Scan")
//                    .padding(.trailing)
//                Text("Scan")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            //Recipies
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Recipies")
//                    .padding(.trailing)
//                Text("Recipies")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            
//            //Mail
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Mail")
//                    .padding(.trailing)
//                Text("Mail")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            //Settings
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image("Settings")
//                    .padding(.trailing)
//                Text("Settings")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//            
//            //Logout
//            Button {
//                GIDSignIn.sharedInstance.signOut()
//                try? Auth.auth().signOut()
//                
//                withAnimation {
//                    log_Status = false
//                    path.append(NavigationType.login)
//                }
//            } label: {
//                Image("Logout")
//                    .padding(.trailing)
//                Text("Logout")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20))
//            }
//            
//                    Button("Logout") {
//                        GIDSignIn.sharedInstance.signOut()
//                        try? Auth.auth().signOut()
//
//                        withAnimation {
//                            log_Status = false
//                            path.append(NavigationType.login)
//                        }
//                    }
//         }
//        .frame(maxWidth: .infinity, alignment:.leading)
//        .padding(.horizontal, 20)
//        
//        Spacer()
//        HStack {
//            Image("profilePicture")
//                .cornerRadius(100)
//                .padding(.trailing, 10)
//            
//            VStack {
//                Text("John Wayne")
//                    .font(.system(size: 20))
//                    .bold()
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding(.bottom, 1)
//
//                Text("Plan Name")
//                    .frame(maxWidth: .infinity, alignment: .leading)
//            }
//            Spacer()
//        }
//        .padding(.leading)
//        .padding(.bottom,10)
//        
//    }.edgesIgnoringSafeArea(.top)
//}
