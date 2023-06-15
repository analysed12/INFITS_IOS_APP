import SwiftUI

class OnboardingViewModel: ObservableObject {
    
    @Published var selectedGenderType = 0
    @Published var selectedNutritionType = 0
    @Published var selectedWorkoutReasonType = 0
    @Published var selectedWorkoutPlaceType = 0
    @Published var selectedSkillType = 0
    @Published var selectedFoodType = 0
//
    
    //scale design object
    @Published var currentAgeValue = 18.0
    @Published var currentWtValue = 100.0
    @Published var currentHtValue = 36.0
    
    var columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    init(selectedGenderType: Int = 0, selectedNutritionType: Int = 0, selectedWorkoutReasonType: Int = 0, selectedWorkoutPlaceType: Int = 0, selectedSkillType: Int = 0, selectedFoodType: Int = 0, currentAgeValue: Double = 18.0, currentWtValue: Double = 100.0, currentHtValue: Double = 36.0, columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
        self.selectedGenderType = selectedGenderType
        self.selectedNutritionType = selectedNutritionType
        self.selectedWorkoutReasonType = selectedWorkoutReasonType
        self.selectedWorkoutPlaceType = selectedWorkoutPlaceType
        self.selectedSkillType = selectedSkillType
        self.selectedFoodType = selectedFoodType
        self.currentAgeValue = currentAgeValue
        self.currentWtValue = currentWtValue
        self.currentHtValue = currentHtValue
        self.columns = columns
    }
    
    func convertToFeet(value:Int) -> String {
        let measurement = Measurement(value: Double(value), unit: UnitLength.inches)
        let meters = measurement.converted(to: .meters).value
        return LengthFormatter.imperialLengthFormatter.string(fromMeters: meters)
    }
}
