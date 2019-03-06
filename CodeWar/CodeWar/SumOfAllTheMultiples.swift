//
//  SumOfAllTheMultiples.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/3/6.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Your task is to write function findSum.
//
//Upto and including n, this function will return the sum of all multiples of 3 and 5.
//
//For example:
//
//findSum(5) should return 8 (3 + 5)
//
//findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)

import Foundation

class SumOfAllTheMultiples {
    static func findSum(_ n: Int) -> Int {
        
//        Solution 2
        return (0 ... n).filter({ (num) -> Bool in
            if (num % 3) * (num % 5) == 0 {
                return true
            }
            return false
        }).reduce(0, { (sum, num) -> Int in
            return sum + num
        })
        
//        Solution 2 sample demo
//        return (0 ... n).filter{ ($0 % 3) * ($0 % 5) == 0 }.reduce(0, +)
        
//        Solution 1
//        var sum = 0
//        for i in 0 ... n {
//            if i % 3 == 0 || i % 5 == 0 {
//                sum += i
//            }
//        }
//
//        return sum
    }
}
