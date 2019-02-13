//
//  LinkedLists.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/11.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Write an Append() function which appends one linked list to another. The head of the resulting list should be returned.
//
//var listA = 1 -> 2 -> 3 -> null
//var listB = 4 -> 5 -> 6 -> null
//append(listA, listB) === 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> null
//If both listA and listB are null/NULL/None/nil, return null/NULL/None/nil. If one list is null/NULL/None/nil and the other is not, simply return the non-null/NULL/None/nil list.

import Foundation

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

//Solution 2
extension Node {
    var last: Node {
        return next?.last ?? self
    }
}

class LinkedLists {

    func append(_ listA:Node?, _ listB:Node?) -> Node? {
//        Solution 2
        guard let first = listA else {
            return listB
        }
        
        guard let second = listB else {
            return listA
        }
        
        first.last.next = second
        return first
        
//        Solution 1
//        if listA == nil && listB == nil {
//            return nil
//        } else if listA == nil {
//            return listB
//        } else if listB == nil {
//            return listA
//        } else {
//            var item = listA!
//            while item.next != nil {
//                item = item.next!
//            }
//            item.next = listB
//            return listA
//        }
    }
}

