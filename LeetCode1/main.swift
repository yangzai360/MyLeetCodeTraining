//
//  main.swift
//  LeetCode1
//
//  Created by Sean.Jie on 16/4/5.
//  Copyright © 2016年 Sean.Jie. All rights reserved.
//

import Foundation

class Solution : NSObject{
    static func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int:Int]()
        for i in 0 ..< nums.count {
            let value = nums[i]
            //            if (dictionary.keys.contains(value)){
            if (dictionary[value] != nil){
                return [dictionary[value]! , i]
            }
            dictionary[target - value] = i;
            
            //            if (dictionary[target - value] != nil){
            //                return [dictionary[target - value]! , i]
            //            }
            //            dictionary[value] = i;
        }
        
        return [0,0]
    }
}

let time1 = NSDate()

let nums = [3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,991,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,3,2,4,6,7,11,17,15,19,27,37,47,57,67,77,87,99,207,399,346,746,111,147,876,107,301]
let target = 1292

print(Solution.twoSum(nums, target))

let time2 = NSDate()

print((time2.timeIntervalSince1970 - time1.timeIntervalSince1970) * 100)