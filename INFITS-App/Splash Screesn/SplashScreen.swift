//
//  SplashScreen.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 23/02/23.
//

import SwiftUI


struct SplashScreen: View {
   
    @State private var progress: CGFloat = 0
    @State private var selectedIndex: Int = 0
    var lastpage = content.count - 1
    var firstPage = 0
    @State var shouldHide:Bool = false
//    @State private var path = NavigationPath()
//    @State private var isActive = false
    @Binding var path : NavigationPath
    
    
    var body: some View {
//        NavigationStack(path: $path) {
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
//                        if log_Status {
//                            //home screen
//                            path.append(NavigationType.homeScreen)
//                        } else {
//                            path.append(NavigationType.login)
//                        }
                        path.append(NavigationType.login)
                        
                    }, label: {
                        Text("Skip")
                            .foregroundColor(selectedIndex != content.count - 1 ? Color(#colorLiteral(red: 90 / 255, green: 132 / 255, blue: 254 / 255, alpha: 1)) : Color.clear)
                            .multilineTextAlignment(.center)
                    })
                    .disabled(selectedIndex == content.count - 1)
                }
                .padding(.horizontal)
                
                TabView(selection: $selectedIndex) {
                    ForEach(0..<content.count) { index in
                        PageContentView(item: content[index])
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .onChange(of: selectedIndex, perform: { value in
                    updateProgress()
                })
                .frame(height: 500)
                .padding(.bottom, 25)
                .clipped()
                
                //            Spacer(minLength: 5)
                //paging icons
                HStack(spacing: 12) {
                    ForEach(0..<content.count) { index in
                        Capsule()
                            .foregroundColor(selectedIndex == index ? Color(#colorLiteral(red: 90 / 255, green: 132 / 255, blue: 254 / 255, alpha: 1)) :Color((#colorLiteral(red: 90 / 255, green: 132 / 255, blue: 254 / 255, alpha: 1))))
                        
                            .frame(width: selectedIndex == index ? 40 : 8, height: 8)
                        
                    }
                }
                
                Spacer(minLength: 15)
                
                Button(action: {
                    if selectedIndex < content.count - 1 {
                        withAnimation {
                            selectedIndex += 1
                        }
                    }
                }, label: {
                    CircularProgress(progress: $progress, shouldHide: $shouldHide, path: $path)
                })
            }
            .onAppear() {
                updateProgress()
                CircularProgress(progress: $progress, shouldHide: $shouldHide, path: $path)
            }
            
//            .navigationDestination(for: NavigationType.self) { value in
//                switch value{
//                case .signup:
//                    SignupView(path: $path)
//                case .login:
//                    LoginView(path: $path)
//                case .termsnc:
//                    TermsView(path: $path)
//                case .forgetpassword:
//                    ForgetPassword(path: $path)
//                case .checkEmail :
//                    CheckMailView(path: $path)
//                case .homeScreen :
//                    HomeScreen(path: $path)
//                case .testView :
//                    testView(path: $path)
//                }
//            }
            
//        }
    }
    
    func updateProgress() {
        withAnimation {
            progress = CGFloat(selectedIndex + 1) / CGFloat(content.count)
            print("progress is \(progress)")
            if selectedIndex >= 3 {
                shouldHide = true
            } else {
                shouldHide = false
            }
        }
    }
    
}

struct PageContentView: View {
    var item: SplashContent
    
    var body: some View {
        VStack {
            Image(item.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(#colorLiteral(red: 0.1951392889, green: 0.1309193373, blue: 0.4449608624, alpha: 1)))
                .padding(.top)
            
            Text(item.description)
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.top, 8)
        }
    }
}

struct CircularProgress: View {
    @Binding var progress: CGFloat
    @Binding var shouldHide : Bool
    @Binding var path : NavigationPath
    
//        @Binding var isActive:Bool
    //    @Binding var login:LoginView
    //    @Binding var action:Int
    
    var body: some View {
        
        if shouldHide {
            Button("Get Started", action: getStarted)
                .font(.system(size: 28))
                .foregroundColor(Color.white)
                .frame(width: 200, height: 60)
                .background(Color(#colorLiteral(red: 90 / 255, green: 132 / 255, blue: 254 / 255, alpha: 1)))
                .clipShape(Capsule())
        } else {
            Image(systemName: "arrow.right")
                .font(.system(size: 30))
                .foregroundColor(Color.white)
                .frame(width: 60, height: 60)
                .background(Color(#colorLiteral(red: 90 / 255, green: 132 / 255, blue: 254 / 255, alpha: 1)))
                .clipShape(Circle())
                .padding()
                .background(Circle().strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
                .background(Circle().trim(from: 0, to: self.progress).stroke(Color(#colorLiteral(red: 90 / 255, green: 132 / 255, blue: 254 / 255, alpha: 1)), lineWidth: 5).rotationEffect(.degrees(-90)))
            
        }
    }
    
    func getStarted() {
        path.append(NavigationType.login)
     }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(path: .constant(NavigationPath()))
    }
}
