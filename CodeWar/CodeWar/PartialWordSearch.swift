//
//  PartialWordSearch.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/3/14.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Write a method that will search an array of strings for all strings that contain another string, ignoring capitalization. Then return an array of the found strings.
//
//The method takes two parameters, the query string and the array of strings to search, and returns an array.
//
//If the string isn't contained in any of the strings in the array, the method returns an array containing a single string: "Empty" (or Nothing in Haskell, or "None" in Python and C)
//
//Examples
//
//If the string to search for is "me", and the array to search is ["home", "milk", "Mercury", "fish"], the method should return ["home", "Mercury"].

import Foundation

class PartialWordSearch {
    static func wordSearch(_ str:String, _ arr:[String]) -> [String] {
        
//        Solution 2
        let result = arr.filter { (item) -> Bool in
            return item.localizedCaseInsensitiveContains(str)
        }
        return result.isEmpty ? ["Empty"] : result
        
//        Solution 1
//        let result = arr.filter({ (item) -> Bool in
//            return item.lowercased().contains(str.lowercased())
//        })
//        return result.count == 0 ? ["Empty"] : result
    }
}
