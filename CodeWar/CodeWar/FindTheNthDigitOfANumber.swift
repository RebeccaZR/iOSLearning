//
//  FindTheNthDigitOfANumber.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/25.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//Complete the function that takes two numbers as input, num and nth and return the nth digit of num (counting from right to left).
//
//Note
//
//If num is negative, ignore its sign and treat it as a positive value
//If nth is not positive, return -1
//Keep in mind that 42 = 00042. This means that findDigit(42, 5) would return 0
//Examples
//
//findDigit(5673, 4)     returns 5
//findDigit(129, 2)      returns 2
//findDigit(-2825, 3)    returns 8
//findDigit(-456, 4)     returns 0
//findDigit(0, 20)       returns 0
//findDigit(65, 0)       returns -1
//findDigit(24, -8)      returns -1

import Foundation

class FindDigitNumber {
    static func findDigit(_ num:Int, _ nth: Int) -> Int {
        
//        Solution 2
        let positive = abs(num)
        
        guard nth > 0 else { return -1 }
        guard positive > 0 else { return 0 }
        if nth == 1 {
            return positive % 10
        }
        
        return findDigit(positive / 10, nth - 1)
        
//        Solution 1
//        guard nth > 0 else {
//            return -1
//        }
//
//        let string = String(abs(num))
//
//        if string.count >= nth {
//            let pos = string.index(string.startIndex, offsetBy: string.count - nth)
//            let subString = String(string[pos])
//            return Int(subString) ?? 0
//        }
//
//        return 0
    }
}
