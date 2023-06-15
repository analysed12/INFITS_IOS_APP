//
//  Arc.swift
//  Infits
//
//  Created by utkrisht chauhan on 01/02/23.
//

import Foundation
import SwiftUI

struct Arc: Shape{
    @State var rad: CGFloat
    @State var sangle: Double
    @State var eangle: Double
    @State var clckwise: Bool
//    @State var cgx: Int
//    @State var cgy: Int
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
//        Path { path in
//            path.move(to: CGPoint(x: cgx, y: cgy))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                        radius: rad,
                        startAngle: Angle(degrees: sangle),
                        endAngle: Angle(degrees: eangle),
                        clockwise: clckwise)
//        }
        return path
    }
    
    
}
