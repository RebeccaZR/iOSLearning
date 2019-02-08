//
//  ConvertNumberToReversedArrayOfDigits.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//Convert number to reversed array of digits
//
//Given a random number:
//
//C#: long;
//C++: unsigned long;
//You have to return the digits of this number within an array in reverse order.
//
//Example:
//
//348597 => [7,9,5,8,4,3]

import Foundation

class ConvertNumberToReversedArrayOfDigits {
    
    func digitize(_ num:Int) -> [Int] {
        
//        Solution 2
        return String(num).reversed().map { (a) in
            return Int(String(a))!
        }
        
//        Solution 1
//        var tempNum = num
//        var result: [Int] = []
//        repeat {
//            result.append(tempNum % 10)
//            tempNum = Int(tempNum / 10)
//        } while tempNum > 0
//        return result
    }
}
