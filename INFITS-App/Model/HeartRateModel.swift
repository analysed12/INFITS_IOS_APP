//
//  HeartRateModel.swift
//  CalorieTracker
//
//  Created by Rajni Banduni on 20/04/23.
//

import Foundation


struct HeartRateModel: Identifiable {
    var id = UUID().uuidString
    var hour: Date
    var views: Double
    var animate: Bool = false
}

extension Date {
    func updateHour(value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(bySettingHour: value, minute: 0, second: 0, of: self) ?? .now
    }
}

var sample_analytics: [HeartRateModel] = [
    HeartRateModel(hour: Date().updateHour(value: 8), views: 54),
    HeartRateModel(hour: Date().updateHour(value: 9), views: 300),
    HeartRateModel(hour: Date().updateHour(value: 10), views: 23),
    HeartRateModel(hour: Date().updateHour(value: 11), views: 85),
    HeartRateModel(hour: Date().updateHour(value: 12), views: 105),
    HeartRateModel(hour: Date().updateHour(value: 13), views: 230),
    HeartRateModel(hour: Date().updateHour(value: 14), views: 43),
    HeartRateModel(hour: Date().updateHour(value: 15), views: 56),
    HeartRateModel(hour: Date().updateHour(value: 16), views: 98),
    HeartRateModel(hour: Date().updateHour(value: 17), views: 100),
    HeartRateModel(hour: Date().updateHour(value: 18), views: 209),
    HeartRateModel(hour: Date().updateHour(value: 19), views: 543),
    HeartRateModel(hour: Date().updateHour(value: 20), views: 444),
]
