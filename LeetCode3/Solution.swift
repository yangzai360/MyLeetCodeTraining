//
//  Solution.swift
//  LeetCode3
//
//  Created by Sean.Jie on 16/4/6.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(s: String) -> Int {
        var start = 0
        var index = 0
        var maxLength = 0
        var dictionary = [Character:Int]()
        for char in s.characters {
            if dictionary[char] == nil || dictionary[char] < start{
                // if new appear.
                if index - start + 1 > maxLength {
                    maxLength = index - start + 1
                }
            } else {
                // if this already appear.
                start = dictionary[char]! + 1
            }
            dictionary[char] = index
            index += 1
        }
        return maxLength
    }
}