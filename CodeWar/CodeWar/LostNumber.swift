//
//  LostNumber.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/3/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//An ordered sequence of numbers from 1 to N is given. One number might have deleted from it, then the remaining numbers were mixed. Find the number that was deleted.
//
//Example:
//
//The starting array sequence is [1,2,3,4,5,6,7,8,9]
//The mixed array with one deleted number is [3,2,4,6,7,8,1,9]
//Your function should return the int 5.
//If no number was deleted from the array and no difference with it, your function should return the int 0.
//
//Note that N may be 1 or less (in the latter case, the first array will be []).

import Foundation

class LostNumber {
    static func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
//        Solution 3
        return mixArray.reduce(array.reduce(0, ^), ^)
        
//        Solution 2
//        return array.first(where: { !mixArray.contains($0) }) ?? 0
        
//        Solution 1
//        guard array.count > 0, array.count != mixArray.count else {
//            return 0
//        }
//        if mixArray.count == 0 {
//            return array[0]
//        }
//        var orderMixArray = mixArray
//        orderMixArray.sort { (a, b) -> Bool in
//            return a < b
//        }
//
//        for index in 0 ..< orderMixArray.count {
//            if orderMixArray[index] != array[index] {
//                return array[index]
//            }
//            if index == orderMixArray.count - 1 {
//                return array[orderMixArray.count]
//            }
//        }
//        return 0
    }
}
