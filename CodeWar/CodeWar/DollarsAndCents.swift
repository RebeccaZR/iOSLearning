//
//  DollarsAndCents.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

class DollarsAndCents {
    
    func formatMoney(_ val:Double) -> String {
//        Solution 3
        guard val != 0 else {
            return "$0.00"
        }
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = false
        return formatter.string(from: NSNumber(value: val))!
        
//        Solution 2
//        return String(format: "$%.2f", val)
        
//        Solution 1
//        let formatter = NumberFormatter()
//        formatter.numberStyle = NumberFormatter.Style.decimal
//        formatter.maximumFractionDigits = 2
//        formatter.minimumFractionDigits = 2
//        formatter.positivePrefix = "$"
//        formatter.usesGroupingSeparator = false
//        return formatter.string(from: NSNumber(value: val))!
    }
}
