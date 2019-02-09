//
//  Mumbling.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/9.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//This time no story, no theory. The examples below show you how to write function accum:
//
//Examples:
//
//accum("abcd") -> "A-Bb-Ccc-Dddd"
//accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
//accum("cwAt") -> "C-Ww-Aaa-Tttt"

import Foundation

class Mumbling {
    func accum(_ s: String) -> String {
        
//        Solution 2
        return s.characters.enumerated ().map {
            (i, c) -> String in
            return String (repeating: String(c), count: i+1).capitalized
            }.joined (separator:"-")
        
//        Solution 1
//        var count = 0
//        let length = s.characters.count
//        return s.characters.map({ (a) in
//            count += 1
//            if count == length {
//                return String(repeating: "\(a)", count: count).capitalized
//            }
//            return (String(repeating: "\(a)", count: count) + "-").capitalized
//        }).joined()
    }
}
