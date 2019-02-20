//
//  SumOfIntegersInString.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/20.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

class SumOfIntegersInString {

    static func sumOfIntegersInString(_ string: String) -> Int {
        
//        Solution 3
        return string.components(separatedBy: CharacterSet.decimalDigits.inverted).flatMap({Int($0)}).reduce(0, +)
        
//        Solution 2
//        var sum = 0
//        let numbers = String(string.characters.map ({ (c: Character) -> Character in
//            if !"0123456789".characters.contains(c) {
//                return " "
//            }
//            return c
//        }))
//
//        for item in numbers.characters.split(separator: " ") {
//            if let number = Int(String(item)) {
//                sum += number
//            }
//        }
//
//        return sum
        
//        Solution 1
//        var sum = 0
//        string.characters.map ({ (c: Character) -> String in
//            if !"0123456789".contains(c) {
//                return " "
//            }
//            return String(c)
//        }).joined().split(separator: " ").flatMap({ (subStr) in
//            if let number = Int(String(subStr)) {
//                sum += number
//            }
//            return nil
//        })
//        return sum
    }
}
