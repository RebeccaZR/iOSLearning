//
//  LinkedListPushAndBuild.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/3/5.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

//Linked Lists - Push & BuildOneTwoThree
//
//Write push() and buildOneTwoThree() functions to easily update and initialize linked lists. Try to use the push() function within your buildOneTwoThree() function.
//
//Here's an example of push() usage:
//
//var chained = null
//chained = push(chained, 3)
//chained = push(chained, 2)
//chained = push(chained, 1)
//push(chained, 8) === 8 -> 1 -> 2 -> 3 -> null
//The push function accepts head and data parameters, where head is either a node object or null/None/nil. Your push implementation should be able to create a new linked list/node when head is null/None/nil.
//
//The buildOneTwoThree function should create and return a linked list with three nodes: 1 -> 2 -> 3 -> null

import Foundation

//Solution 2
extension Node {
    convenience init(_ next: Node?, _ data: Int) {
        self.init(data)
        self.next = next
    }
}

class LinkedListPushAndBuild {
    func push(_ head:Node?, _ data:Int) -> Node {
        
//        Solution 2
        return Node(head, data)
        
//        Solution 1
//        guard let first = head else {
//            return Node(data)
//        }
//
//        if first.data == data {
//            return first
//        } else {
//            let node = Node(data)
//            node.next = head
//            return node
//        }
    }

    func buildOneTwoThree() -> Node {
        
//        Solution 2
        return push(push(push(nil, 3), 2), 1)
        
//        Solution 1
//        var head: Node?
//        head = push(head, 3)
//        head = push(head, 2)
//        head = push(head, 1)
//
//        return head!
    }
}
