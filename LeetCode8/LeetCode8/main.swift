//
//  main.swift
//  LeetCode8
//
//  Created by Sean.Jie on 16/4/15.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//
//Implement atoi to convert a string to an integer.
//Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.
//Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.
//

import Foundation

extension Character
{
    func toInt() -> Int
    {
        var intFromCharacter:Int = 0
        for scalar in String(self).unicodeScalars {
            intFromCharacter = Int(scalar.value)
        }
        return intFromCharacter
    }
}

class Solution {
    func myAtoi(str: String) -> Int {
        var result:UInt = 0
        var neg = false
        let zeroChar : Character = "0"
        var i = 0
        var s = 0
        for char in str.characters {
            if char == " " && s == 0 {
                continue
            }
            s+=1
            i+=1
            if( char == "-" && i == 1){
                neg = true
                continue
            }
            if( char == "+" && i == 1){
                continue
            }
            if(char.toInt() - zeroChar.toInt() > 9 || char.toInt() - zeroChar.toInt() < 0){
                break
            }
            result = result * 10 + UInt(char.toInt()) - UInt(zeroChar.toInt())
            if (neg && result >= UInt(Int32.max) + 1) || (!neg && result > UInt(Int32.max)) {
                return neg ? Int(Int32.min) : Int(Int32.max)
            }
        }
        return neg ? -1 * Int(result) : Int(result)
    }
}

let s = Solution()
print(s.myAtoi("-2147483647"))
