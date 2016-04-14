//
//  main.swift
//  LeetCode7
//
//  Created by Sean.Jie on 16/4/14.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

class Solution {
    func reverse(x: Int) -> Int {
        
        
        
        let neg = x < 0
        
        
        var vX : UInt = x < 0 ? UInt(-x) : UInt(x)
//        var vX = x
        
//        if x < 0 {
//          vX = -x
//        }
        
        var result :UInt = 0;
        
        while vX > 0 {
            result *= 10
            result += UInt(vX % 10)
            vX /= 10
        }
        
        if (neg && vX > UInt(Int.max) - 1) || (!neg && vX > UInt(Int.max)) {
            return 0;
        }
        
        return Int(result)
    }
}

let s = Solution()
print(s.reverse(-9223372036854775808))
