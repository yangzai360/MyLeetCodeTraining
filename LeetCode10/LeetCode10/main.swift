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


//Misunderstanding the meaning of problem description, weite this wrone code...
class Solution {
    var nss : NSString = ""
    var nsp : NSString = ""
    
    func isMatch(s: String, _ p: String) -> Bool {
        nss = NSString(UTF8String: s)!
        nsp = NSString(UTF8String: p)!
        return isNSMatch(0, 0)
    }
    
    func isNSMatch(s: Int, _ p: Int) -> Bool {
        if (s == nss.length && p == nsp.length) || (s == nss.length && p == nsp.length-2 && Character(UnicodeScalar(nsp.characterAtIndex(p+1))) == "*" ){
            return true
        }
        if s == nss.length || p == nsp.length {
            return false
        }
        let sc = nss.characterAtIndex(s)
        let pc = nsp.characterAtIndex(p)
        
        if p+1 < nsp.length && Character(UnicodeScalar(nsp.characterAtIndex(p+1))) == "*" {
            if sc == pc || Character(UnicodeScalar(pc)) == "." {
                return isNSMatch(s + 1, p) || isNSMatch(s, p + 2)
            }
            return isNSMatch(s, p + 2)
        }
        
        if Character(UnicodeScalar(pc)) == "." {
            return isNSMatch( s + 1, p + 1 )
        }
        
        if sc == pc {
            return isNSMatch( s + 1, p + 1 )
        } else {
            return false
        }
    }
}

let s = Solution()
print(s.isMatch("aaaaaaaaaaaaab", "a*a*a*a*a*a*a*a*a*a*c"))
