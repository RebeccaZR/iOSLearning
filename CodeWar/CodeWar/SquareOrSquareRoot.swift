//
//  SquareOrSquareRoot.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/8.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

class SquareOrSquareRoot {
    
    func squareOrSquareRoot(_ input: [Int]) -> [Int] {

//        Solution 2
        return input.map({ (a) in
            let root = sqrt(Double(a))
            return root.truncatingRemainder(dividingBy: 1) == 0 ? Int(root) : a * a
        })
        
//        Solution 1
//        return input.map({ (a) in
//            let root = Int(Double(a).squareRoot())
//            return root * root == a ? root : a * a
//        })
    }
}
