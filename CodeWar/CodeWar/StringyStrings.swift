//
//  StringyStrings.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
//
//the string should start with a 1.
//
//a string with size 6 should return :'101010'.
//
//with size 4 should return : '1010'.
//
//with size 12 should return : '101010101010'.
//
//The size will always be positive and will only use whole numbers.

import Foundation

class StringyStrings {
    func stringy(_ size: Int) -> String {
        
//        Solution 3
        let isEven = size % 2 == 0
        return String(repeating: "10", count: size / 2) + (isEven ? "" : "1")
        
//        Solution 2
//        return (0..<size).map({ (a) in
//            return a % 2 == 0 ? "1" : "0"
//        }).joined()
        
//        Solution 1
//        var result = ""
//        for index in 1...size {
//            let str = index % 2 == 1 ? "1" : "0"
//            result += str
//        }
//        return result
    }
}
