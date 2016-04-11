//
//  main.swift
//  LeetCode5
//
//  Created by Sean.Jie on 16/4/11.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

private extension String {
    subscript (i: Int) -> Character {
        let index: Index = self.startIndex.advancedBy(i)
        return self[index]
    }
    subscript (range: Range<Int>) -> String {
        return self[self.startIndex.advancedBy(range.startIndex)..<self.startIndex.advancedBy(range.endIndex, limit: self.endIndex)]
    }
}

class Solution {
    var longestSubstringSP :Int = 0
    var longestNum :Int = 0
    
    func longestPalindrome(s: String) -> String {
        
        var i = 0
        while i < s.characters.count{
            i += 1
        }
        for i in 0 ..< s.characters.count {
            findLongestPalindromeSubStringWithString(s, startIndex: i, endIndex: i+1)
            findLongestPalindromeSubStringWithString(s, startIndex: i, endIndex: i)
        }
        return s[longestSubstringSP ..< longestSubstringSP + longestNum]
    }
    
    func findLongestPalindromeSubStringWithString(str :String, startIndex sp:Int, endIndex ep:Int){
        
        var ssp = sp
        var eep = ep
        while ssp >= 0  && eep < str.characters.count && str[ssp] == str[eep] {
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
let time1 = NSDate()
print(s.longestPalindrome("jrjnbctoqgzimtoklkxcknwmhiztomaofwwzjnhrijwkgmwwuazcowskjhitejnvtblqyepxispasrgvgzqlvrmvhxusiqqzzibcyhpnruhrgbzsmlsuacwptmzxuewnjzmwxbdzqyvsjzxiecsnkdibudtvthzlizralpaowsbakzconeuwwpsqynaxqmgngzpovauxsqgypinywwtmekzhhlzaeatbzryreuttgwfqmmpeywtvpssznkwhzuqewuqtfuflttjcxrhwexvtxjihunpywerkktbvlsyomkxuwrqqmbmzjbfytdddnkasmdyukawrzrnhdmaefzltddipcrhuchvdcoegamlfifzistnplqabtazunlelslicrkuuhosoyduhootlwsbtxautewkvnvlbtixkmxhngidxecehslqjpcdrtlqswmyghmwlttjecvbueswsixoxmymcepbmuwtzanmvujmalyghzkvtoxynyusbpzpolaplsgrunpfgdbbtvtkahqmmlbxzcfznvhxsiytlsxmmtqiudyjlnbkzvtbqdsknsrknsykqzucevgmmcoanilsyyklpbxqosoquolvytefhvozwtwcrmbnyijbammlzrgalrymyfpysbqpjwzirsfknnyseiujadovngogvptphuyzkrwgjqwdhtvgxnmxuheofplizpxijfytfabx"))
//print(s.longestPalindrome("sdsdsdsss"))
let time2 = NSDate()

print(time2.timeIntervalSince1970 - time1.timeIntervalSince1970)

