//
//  ToLeetSpeak.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/20.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Your task is to write a function toLeetSpeak that converts a regular english sentence to Leetspeak.
//
//More about LeetSpeak You can read at wiki -> https://en.wikipedia.org/wiki/Leet
//
//Consider only uppercase letters (no lowercase letters, no numbers) and spaces.
//
//For example:
//
//toLeetSpeak("LEET") returns "1337"

import Foundation

class ToLeetSpeak {
    static func toLeetSpeak(_ s : String) -> String {
        
//        Solution 2
        let leeted = s.characters
            .map { (c: Character) -> Character in
                switch c {
                case "A": return "@"
                case "B": return "8"
                case "C": return "("
                case "E": return "3"
                case "G": return "6"
                case "H": return "#"
                case "I": return "!"
                case "L": return "1"
                case "O": return "0"
                case "S": return "$"
                case "T": return "7"
                case "Z": return "2"
                default: return c
                }
        }
        
        return String(leeted)
//        Solution 1
//        let alphabets = ["A" : "@",
//                         "B" : "8",
//                         "C" : "(",
//                         "D" : "D",
//                         "E" : "3",
//                         "F" : "F",
//                         "G" : "6",
//                         "H" : "#",
//                         "I" : "!",
//                         "J" : "J",
//                         "K" : "K",
//                         "L" : "1",
//                         "M" : "M",
//                         "N" : "N",
//                         "O" : "0",
//                         "P" : "P",
//                         "Q" : "Q",
//                         "R" : "R",
//                         "S" : "$",
//                         "T" : "7",
//                         "U" : "U",
//                         "V" : "V",
//                         "W" : "W",
//                         "X" : "X",
//                         "Y" : "Y",
//                         "Z" : "2",
//                         " " : " "]
//        return s.characters.flatMap { (character) in
//            alphabets[String(character)]
//        }.joined()
    }
}
