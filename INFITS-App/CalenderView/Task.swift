//
//  Task.swift
//  DietChart
//
//  Created by Rajni Banduni on 31/03/23.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID().uuidString
    var taskTitle:String
    var taskdescription:String
    var taskDate:String
}

