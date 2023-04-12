//
//  Application_utility.swift
//  Google Login
//
//  Created by Rajni Banduni on 09/03/23.
//

import SwiftUI
import UIKit

//retreving RootviewController

final class Application_utility {
    static var rootViewControler:UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }

        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        return root
    }
}


 
