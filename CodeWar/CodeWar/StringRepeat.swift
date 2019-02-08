//
//  StringRepeat.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Write a function called repeatStr which repeats the given string string exactly n times.
//
//repeatStr(6, "I") // "IIIIII"
//repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"

import Foundation

class StringRepeat {
    func repeatStr(_ n: Int, _ string: String) -> String {
//        Solution 1
//        var result = ""
//        for _ in 0..<n {
//            result += string
//        }
//        return result
        
//        Solution 2
        return String(repeating: string, count: n)
    }
}
