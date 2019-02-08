//
//  SwitchItUp.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//When provided with a number between 0-9, return it in words.
//
//Input :: 1
//
//Output :: "One".
//
//Try using "Switch" statements.

import Foundation

class SwitchItUp {
    func switchItUp(_ number: Int) -> String {
        
//        Solution 3
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.spellOut
        return formatter.string(from: NSNumber(value: number))!.capitalized
        
//        Solution 2
//        return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
        
//        Solution 1
//        switch number {
//        case 0:
//            return "Zero"
//        case 1:
//            return "One"
//        case 2:
//            return "Two"
//        case 3:
//            return "Three"
//        case 4:
//            return "Four"
//        case 5:
//            return "Five"
//        case 6:
//            return "Six"
//        case 7:
//            return "Seven"
//        case 8:
//            return "Eight"
//        case 9:
//            return "Nine"
//        default:
//            return "It is not between 0 to 9"
//        }
    }
}
