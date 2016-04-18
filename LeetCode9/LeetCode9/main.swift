//
//  main.swift
//  LeetCode9
//
//  Created by Sean.Jie on 16/4/18.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

// Solution dosen't accepte 9223372036854775799 as x.
class Solution1 {
    func isPalindrome(x: Int) -> Bool {
        var i = x, n = 0
        while i > 0 {
            n = i % 10 + n * 10;
            i /= 10;
        }
        return n == x
    }
}

class Solution {
    func isPalindrome(x: Int) -> Bool {
        if x < 0 {
            return false
        }
        if x  < 10 {
            return true
        }
        var p = 1
        while x / p >= 10 {
            p *= 10
        }
        var i = x
        while i > 0{
            if i / p != i % 10 {
                return false
            }
            i = (i % p) / 10
            p /= 100
        }
        return true
    }
}

let s = Solution()
print(s.isPalindrome(1000021))