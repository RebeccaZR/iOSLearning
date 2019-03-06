//
//  EuclideanDistanceInNDimensions.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/3/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Description:
//
//Implement a function to calculate the distance between two points in n-dimensional space. The two points will be passed to your function as arrays of the same length (tuples in Python).
//
//Round your answers to two decimal places.

import Foundation

class EuclideanDistanceInNDimensions {
    
    static func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
        
//        Solution 2
        let dist = zip(point1, point2).reduce(0, { $0 + pow(($1.0 - $1.1), 2) }).squareRoot()
        return (dist * 100).rounded() / 100
        
//        Solution 1
//        var distance = 0.0
//        for i in 0 ..< point1.count {
//            distance += pow(point2[i] - point1[i], 2)
//        }
//        return Double(String(format: "%.2f", sqrt(distance))) ?? distance
    }
    
}
