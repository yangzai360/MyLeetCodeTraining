//
//  main.swift
//  LeetCode2
//
//  Created by Sean.Jie on 16/4/5.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

var so = Solution()

let no1 = ListNode(2)
no1.next = ListNode(4)
no1.next?.next = ListNode(3)

let no2 = ListNode(5)
no2.next = ListNode(6)
no2.next?.next = ListNode(4)

let sum = so.addTwoNumbers(no1, no2)
