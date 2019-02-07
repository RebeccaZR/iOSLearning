//
//  SumOfPositive.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//You get an array of numbers, return the sum of all of the positives ones.
//
//Example [1,-4,7,12] => 1 + 7 + 12 = 20
//
//Note: if there is nothing to sum, the sum is default to 0.

import Foundation

class SumOfPositive {
    
    func sumOfPositives (_ numbers: [Int] ) -> Int {

//        Solution 1
//        var sum = 0
//        for num in numbers {
//            if num > 0 {
//                sum += num
//            }
//        }
//        return sum
        
//        Solution 2
        return numbers.filter({ a in
            a > 0
        }).reduce(0, { (x, y) in
            x + y
        })
    }
}
