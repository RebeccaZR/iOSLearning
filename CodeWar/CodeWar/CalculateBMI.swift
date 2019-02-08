//
//  CalculateBMI.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//Write function bmi that calculates body mass index (bmi = weight / height ^ 2).
//
//if bmi <= 18.5 return "Underweight"
//
//if bmi <= 25.0 return "Normal"
//
//if bmi <= 30.0 return "Overweight"
//
//if bmi > 30 return "Obese"

import Foundation

// Solution 2 enum
enum BMIKind: CustomStringConvertible {
    case underweight
    case normal
    case overweight
    case obese
    
    var description: String {
        switch self {
        case .underweight:
            return "Underweight"
        case .normal:
            return "Normal"
        case .overweight:
            return "Overweight"
        case .obese:
            return "Obese"
        }
    }
    
    init(bmiIndex: Double) {
        if bmiIndex <= 18.5 {
            self = .underweight
        } else if bmiIndex <= 25.0 {
            self = .normal
        } else if bmiIndex <= 30.0 {
            self = .overweight
        } else {
            self = .obese
        }
    }
}

struct BMIIndex {
    var rawValue: Double
    init(weight: Int, height: Double) {
        rawValue = Double(weight) / (height * height)
    }
}


class CalculateBMI {
    
    func bmi(_ weight: Int, _ height: Double) -> String {
//        Solution 2
        let bmiIndex = BMIIndex(weight: weight, height: height)
        let bmiKind = BMIKind(bmiIndex: bmiIndex.rawValue)
        return bmiKind.description
        
//        Solution 1
//        let result = Double(weight) / (height * height)
//        switch result {
//        case 0...18.5: return "Underweight"
//        case 18.5...25: return "Normal"
//        case 25...30: return "Overweight"
//        default: return "Obese"
//        }
    }
}
