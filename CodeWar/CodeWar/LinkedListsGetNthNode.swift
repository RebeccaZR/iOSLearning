//
//  LinkedListsGetNthNode.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/3/1.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Implement a GetNth() function that takes a linked list and an integer index and returns the node stored at the Nth index position. GetNth() uses the C numbering convention that the first node is index 0, the second is index 1, ... and so on. So for the list 42 -> 13 -> 666, GetNth() with index 1 should return Node(13);
//
//getNth(1 -> 2 -> 3 -> null, 0).data === 1
//getNth(1 -> 2 -> 3 -> null, 1).data === 2

import Foundation

// Node class is in the file LinkedLists

enum ErrorType: Error {
    case invalidIndex
    case listIsNil
    case crossingTheLine
}

class LinkedListsGetNthNode {
    static func getNth(_ head: Node?, _ index: Int) throws -> Node? {
        
//        Solution 2
        guard let currentNode = head, index >= 0 else {
            throw ErrorType.invalidIndex
        }
        return index == 0 ? currentNode : try getNth(currentNode.next, index - 1)
        
//        Solution 1
//        guard index >= 0 else {
//            throw ErrorType.invalidIndex
//        }
//
//        guard var first = head else {
//            throw ErrorType.listIsNil
//        }
//
//        var currentIndex = 0
//        while currentIndex < index {
//            currentIndex += 1
//            if first.next != nil {
//                first = first.next!
//            } else {
//                throw ErrorType.crossingTheLine
//            }
//        }
//
//        return first
    }
}
