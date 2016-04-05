//
//  Solution.swift
//  LeetCode1
//
//  Created by Sean.Jie on 16/4/5.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Cocoa

class Solution : NSObject{
    static func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int:Int]()
        for i in 0 ..< nums.count {
            let value = nums[i]
//            if (dictionary.keys.contains(value)){
//            if (dictionary[value] != nil){
//                return [dictionary[value]! , i]
//            }
//            dictionary[target - value] = i;
        
            if (dictionary[target - value] != nil){
                return [dictionary[target - value]! , i]
            }
            dictionary[value] = i;
        }
        
        return [0,0]
    }
}