//
//  MovesInSquaredStrings.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//This kata is the first of a sequence of four about "Squared Strings".
//
//You are given a string of n lines, each substring being n characters long: For example:
//
//s = "abcd\nefgh\nijkl\nmnop"
//
//We will study some transformations of this square of strings.
//
//Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
//vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
//Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
//hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"

import Foundation

class MovesInSquaredStrings {
    
    func horMirror(_ s: String) -> String {
//        Solution 1
//        let subString = s.split(separator: "\n").reversed()
//        var result = ""
//        for subItem in subString {
//            result = result + "\(subItem)" + "\n"
//        }
//        result.remove(at: result.index(before: result.endIndex))
//        return result
        
//        Solution 2
        return s.split(separator: "\n").reversed().joined(separator: "\n")
    }
    
    func vertMirror(_ s: String) -> String {
//        Solution 1
//        let subString = s.split(separator: "\n")
//        var result = ""
//        for subItem in subString {
//            result = result + subItem.reversed() + "\n"
//        }
//        result.remove(at: result.index(before: result.endIndex))
//        return result
        
//        Solution 2
        return s.split(separator: "\n").map({ String($0.reversed()) }).joined(separator: "\n")
    }
    
    // replace the dots with function parameter
    func oper(_ function: (String) -> String, _ s: String) -> String {
        return function(s)
    }
}

