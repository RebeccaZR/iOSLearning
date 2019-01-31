//
//  Disemvowel.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/1/31.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//
// Question Description:

//Trolls are attacking your comment section!
//
//A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
//
//Your task is to write a function that takes a string and return a new string with all vowels removed.
//
//For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
//
//Note: for this kata y isn't considered a vowel.

import Foundation

class Disemvowel {
    
    func otherSolution1(_ s: String) -> String {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        return String(s.characters.filter { !vowels.contains($0) })
    }
    
    func otherSolution2(_ s: String) -> String {
        return s.replacingOccurrences(of: "[AEIOUaeiou]", with: "", options: .regularExpression)
        // It's the best solution!
    }
    
    func mySolution(_ s: String) -> String {
        let vowel = "aeiouAEIOU"
        var result: String = ""
        // Swift 4
             s.forEach { (character) in
                 if !vowel.contains(character) {
                     result.append(character)
                 }
             }
        
        // Swift 3
//        for chara in s.characters {
//            if !vowel.contains("\(chara)") {
//                result.append(chara)
//            }
//        }
        return result
    }
}
