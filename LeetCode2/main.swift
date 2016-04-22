//
//  main.swift
//  LeetCode2
//
//  Created by Sean.Jie on 16/4/5.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var n1 = l1
        var n2 = l2
        let resultNode = ListNode(0)
        var anchor = resultNode
        var sum = 0
        
        while ( n1 != nil || n2 != nil ) {
            sum /= 10
            if let n11 = n1 {
                sum += n11.val
                n1 = n11.next
            }
            if let n22 = n2 {
                sum += n22.val
                n2 = n22.next
            }
            
            anchor.next = ListNode(sum % 10)
            anchor = anchor.next!
        }
        if sum / 10 > 0 {
            anchor.next = ListNode(1)
        }
        return resultNode.next
    }
}


var so = Solution()

let no1 = ListNode(2)
no1.next = ListNode(4)
no1.next?.next = ListNode(3)

let no2 = ListNode(5)
no2.next = ListNode(6)
no2.next?.next = ListNode(4)

let sum = so.addTwoNumbers(no1, no2)
