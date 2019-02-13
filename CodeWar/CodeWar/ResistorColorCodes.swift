//
//  ResistorColorCodes.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/13.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

class ResistorColorCodes {
    func decodeResistorColors(_ bands: String) -> String {
        
//        Solution 2
        let colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "gray", "white"]
        let tolerances = ["gold":5, "silver":10]
        let names = bands.components(separatedBy: " ")
        let digits = names.compactMap { (name) in
            return colors.index(of: name)
        }
        let ohms = Double((digits[0] * 10 + digits[1]) * Array(repeating: 10, count: digits[2]).reduce(1, { (x, y) in
            return x * y
        }))
        let tolerance = (names.count == 4 ? tolerances[names[3]] : nil) ?? 20
        let (ohmsFinal, suffix) = ohms >= 1_000_000 ? (ohms / 1_000_000, "M") : ohms >= 1_000 ? (ohms / 1_000, "k") : (ohms, "")
        return "\(Decimal(ohmsFinal))\(suffix) ohms, \(tolerance)%"
        
//        Solution 1
//        let colors = ["black":0, "brown":1, "red":2, "orange":3, "yellow":4,
//                      "green":5, "blue":6, "violet":7, "gray":8, "white":9]
//        var colorCode = 0
//        var toleranceValue = 0
//        var subStrings = bands.split(separator: " ")
//
//        if subStrings.count == 3 {
//            toleranceValue = 20
//        } else {
//            toleranceValue = subStrings[3] == "gold" ? 5 : 10
//        }
//
//        colorCode = (colors[String(subStrings[0])]! * 10 + colors[String(subStrings[1])]!) * Int.init(truncating: NSDecimalNumber(decimal: pow(10, colors[String(subStrings[2])]!)))
//        if colorCode >= 1000000 {
//            colorCode /= 1000000
//            return "\(colorCode)M ohms, \(toleranceValue)%"
//        } else if colorCode >= 1000 {
//            colorCode /= 1000
//            return "\(colorCode)k ohms, \(toleranceValue)%"
//        }
//
//        return "\(colorCode) ohms, \(toleranceValue)%"
    }
}
