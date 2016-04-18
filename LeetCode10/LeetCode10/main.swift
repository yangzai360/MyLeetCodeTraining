//
//  main.swift
//  LeetCode10
//
//  Created by Sean.Jie on 16/4/18.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//
/*
 Implement regular expression matching with support for '.' and '*'.
 
 '.' Matches any single character.
 '*' Matches zero or more of the preceding element.
 
 The matching should cover the entire input string (not partial).
 
 The function prototype should be:
 bool isMatch(const char *s, const char *p)
 
 Some examples:
 isMatch("aa","a") → false
 isMatch("aa","aa") → true
 isMatch("aaa","aa") → false
 isMatch("aa", "a*") → true
 isMatch("aa", ".*") → true
 isMatch("ab", ".*") → true
 isMatch("aab", "c*a*b") → true
 */
import Foundation

class Solution {
    func isMatch(s: String, _ p: String) -> Bool {
        return false
    }
}

let s = Solution()
print(s.isMatch("222", "222"))
