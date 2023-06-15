//
//  Shape.swift
//  DietChart
//
//  Created by Rajni Banduni on 23/03/23.
//used in MealDetailView

import Foundation
import SwiftUI

struct VLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
}
 
//This is used in MealDetailView Page
struct DottedLine: Shape {
        
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        return path
    }
}



struct HLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        }
    }
}

//Contentview Code
//VLine().stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
//.foregroundColor(Color(red: 142 / 255, green: 28 / 255, blue: 139 / 255).opacity(1))
//.padding(.leading, 30)
