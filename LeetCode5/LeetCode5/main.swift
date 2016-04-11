//
//  main.swift
//  LeetCode5
//
//  Created by Sean.Jie on 16/4/11.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

class Solution {
    var longestSubstringSP :Int = 0
    var longestNum :Int = 0
    
    func longestPalindrome(s: String) -> String {
        for i in 0 ..< s.characters.count {
            findLongestPalindromeSubStringWithString(s, startIndex: i, endIndex: i+1)
            findLongestPalindromeSubStringWithString(s, startIndex: i, endIndex: i)
        }
//        var result = 
        return (s as NSString).substringWithRange(NSMakeRange(longestSubstringSP, longestNum))
    }
    
    func findLongestPalindromeSubStringWithString(str :String, startIndex sp:Int, endIndex ep:Int){
        var ssp = sp
        var eep = ep
        let nss = NSString(string: str)
        while ssp >= 0  && eep < nss.length && nss.characterAtIndex(ssp) == nss.characterAtIndex(eep) {
            ssp -= 1
            eep += 1
        }
        if eep - ssp - 1 > longestNum {
            longestSubstringSP = ssp + 1
            longestNum = eep - ssp - 1
        }
    }
}

let s = Solution()
print(s.longestPalindrome("abccbfcfbcqh"))

