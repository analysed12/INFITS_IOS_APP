//
//  CheckURL.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 13/03/23.
//

import SwiftUI
import Combine

  

class CheckURL : ObservableObject {
    enum URLResult : String {
        case unknown, unreachable, reachable
    }
    
    @Published var urlReachable : URLResult = .unknown
    private var cancellable : AnyCancellable?
    
    func verifyURL(urlPath: String) {
        guard let url = URL(string: urlPath) else {
            assertionFailure("Invalid URL")
            self.urlReachable = .unknown
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "HEAD"
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url).tryMap({ (_ , response: URLResponse) -> URLResult in
            if let response = response as? HTTPURLResponse, response.statusCode == 200 {
                return .reachable
            } else {
                return .unreachable
            }
        })
        .replaceError(with: .unreachable)
        .receive(on: RunLoop.main).sink { result in
            self.urlReachable = result
        }
    }
}




struct CheckURL_Previews : View {
    @StateObject private var urlChecker = CheckURL()
    
    var body: some View {
        Text("Reachable? \(urlChecker.urlReachable.rawValue)")
            .onAppear {
                    urlChecker.verifyURL(urlPath: "http://localhost:8080/")
            }
    }
}



//struct CheckURL_Previews: PreviewProvider {
//    static var previews: some View {
//        CheckURL()
//    }
//}
