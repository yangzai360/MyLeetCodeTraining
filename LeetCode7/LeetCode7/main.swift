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
        var result :UInt = 0;
        
        while vX > 0 {
            result *= 10
            result += UInt(vX % 10)
            vX /= 10
        }
        
        if (neg && result > UInt(Int32.max) - 1) || (!neg && result > UInt(Int32.max)) {
            return 0;
        }
        if neg {
            return -Int(result)
        }
        return Int(result)
    }
}

let s = Solution()
print(s.reverse(1534236469))
