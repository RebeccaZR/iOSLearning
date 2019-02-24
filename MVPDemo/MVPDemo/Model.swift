//
//  Model.swift
//  MVPDemo
//
//  Created by Rebecca Zhang on 2019/2/22.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

struct Model<T> {
    private var objects = [T]()
    
    mutating func insert(_ element: T) {
        objects.insert(element, at: 0)
    }
    
    mutating func remove(at index: Int) {
        guard objects.indices.contains(index) else {
            return
        }
        objects.remove(at: index)
    }
    
    var count: Int {
        return objects.count
    }
    
    //ReadOnly
    subscript(index: Int) -> T? {
        return objects.indices.contains(index) ? objects[index] : nil
    }
}
