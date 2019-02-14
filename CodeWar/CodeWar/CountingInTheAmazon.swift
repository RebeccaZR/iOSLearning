//
//  CountingInTheAmazon.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/15.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//The Arara are an isolated tribe found in the Amazon who count in pairs. For example one to eight is as follows:
//
//1 = anane
//2 = adak
//3 = adak anane
//4 = adak adak
//5 = adak adak anane
//6 = adak adak adak
//7 = adak adak adak anane
//8 = adak adak adak adak
//
//Take a given number and return the Arara's equivalent.
//
//e.g.
//
//countArara(3) // "adak anane"
//
//countArara(8) // "adak adak adak adak"

import Foundation

class CountingInTheAmazon {
    static func countArare(_ n: Int) -> String {
        
//        Solution 3
        return String((String(repeating: "adak ", count: n/2) + String(repeating: "anane ", count: n % 2)).dropLast())
        
//        Solution 2
//        var array = Array(repeating: "adak", count: n / 2)
//        if n % 2 == 1 {
//            array.append("anane")
//        }
//        return array.joined(separator: " ")
        
//        Solution 1
//        return (String(repeating: "adak ", count: n/2) + String(repeating: "anane", count: n % 2)).split(separator: " ").joined(separator: " ")
    }
}
