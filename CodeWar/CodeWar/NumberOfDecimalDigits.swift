//
//  NumberOfDecimalDigits.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/27.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

class NumberOfDecimalDigits {
    static func digits(num n: UInt64) -> Int {
        
//        Solution 2
        return String(n).count
        
//        Solution 1
//        guard n != 0 else {
//            return 1
//        }
//        var count = 0
//        var number = n
//        while number > 0 {
//            number /= 10
//            count += 1
//        }
//        return count
    }
}
