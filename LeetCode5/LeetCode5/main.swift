//
//  main.swift
//  LeetCode5
//
//  Created by Sean.Jie on 16/4/11.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

// Time Limit Exceeded!!! NSString is fine.
//private extension String {
//    subscript (i: Int) -> Character {
//        let index: Index = self.startIndex.advancedBy(i)
//        return self[index]
//    }
//    subscript (range: Range<Int>) -> String {
//        return self[self.startIndex.advancedBy(range.startIndex)..<self.startIndex.advancedBy(range.endIndex, limit: self.endIndex)]
//    }
//}

class Solution {
    // t = O(N^2), s = O(1)
    func longestPalindrome(s: String) -> String {
        let nss = NSString(UTF8String: s)!
        if nss.length == 0 {
            return ""
        } else if nss.length == 1 {
            return s
        } else {
            var min_start: Int = 0
            var max_len: Int = 1
            var i = 0
            while i < nss.length {
                if nss.length - i <= max_len / 2 {
                    break
                }
                var j = i
                var k = i
                while k < nss.length - 1 && nss.characterAtIndex(k + 1) == nss.characterAtIndex(k) {
                    k += 1
                }
                i = k + 1
                while k < nss.length - 1 && j > 0 && nss.characterAtIndex(k + 1) == nss.characterAtIndex(j - 1) {
                    k += 1
                    j -= 1
                }
                let new_len = k - j + 1
                if new_len > max_len {
                    min_start = j
                    max_len = new_len
                }
            }
            return nss.substringWithRange(NSMakeRange(min_start, max_len))
        }
    }
}

//   Time Limit Exceeded!!!
//class Solution {
//    var longestSubstringSP :Int = 0
//    var longestNum :Int = 0
//    
//    var count = 1
//    func longestPalindrome(s: String) -> String {
//        
//        let nss = NSString(UTF8String: s)
//        for i in 0 ..< s.characters.count {
//            findLongestPalindromeSubStringWithString(nss!, startIndex: i, endIndex: i+1)
//            findLongestPalindromeSubStringWithString(nss!, startIndex: i, endIndex: i)
//        }
//        print(count)
//        return nss!.substringWithRange(NSMakeRange(longestSubstringSP, longestNum))
//    }
//    
//    func findLongestPalindromeSubStringWithString(str :NSString, startIndex sp:Int, endIndex ep:Int){
//        var ssp = sp
//        var eep = ep
//        while ssp >= 0  && eep < str.length && str.characterAtIndex(ssp) == str.characterAtIndex(eep) {
//            if str.length - sp <= longestNum/2{
//                break
//            }
//            count+=1
//            ssp -= 1
//            eep += 1
//        }
//        if eep - ssp - 1 > longestNum {
//            longestSubstringSP = ssp + 1
//            longestNum = eep - ssp - 1
//        }
//    }
//}

let time1 = NSDate()
let s = Solution()
print(s.longestPalindrome("azwdzwmwcqzgcobeeiphemqbjtxzwkhiqpbrprocbppbxrnsxnwgikiaqutwpftbiinlnpyqstkiqzbggcsdzzjbrkfmhgtnbujzszxsycmvipjtktpebaafycngqasbbhxaeawwmkjcziybxowkaibqnndcjbsoehtamhspnidjylyisiaewmypfyiqtwlmejkpzlieolfdjnxntonnzfgcqlcfpoxcwqctalwrgwhvqvtrpwemxhirpgizjffqgntsmvzldpjfijdncexbwtxnmbnoykxshkqbounzrewkpqjxocvaufnhunsmsazgibxedtopnccriwcfzeomsrrangufkjfzipkmwfbmkarnyyrgdsooosgqlkzvorrrsaveuoxjeajvbdpgxlcrtqomliphnlehgrzgwujogxteyulphhuhwyoyvcxqatfkboahfqhjgujcaapoyqtsdqfwnijlkknuralezqmcryvkankszmzpgqutojoyzsnyfwsyeqqzrlhzbc"))
let time2 = NSDate()

print(time2.timeIntervalSince1970 - time1.timeIntervalSince1970)
