//
//  main.swift
//  LeetCode6
//
//  Created by jieyang on 16/4/12.
//  Copyright (c) 2016年 Sean.Jie. All rights reserved.
//

import Foundation

class Solution {
  func convert(s: String, _ numRows: Int) -> String {
    if numRows == 1 {
      return s
    }
    var strArray = [String](count: numRows, repeatedValue: "")
    var direct = true
    var lineMark = 0
    for char in s.characters {
      strArray[lineMark].append(char)
      if (lineMark == numRows - 1  && direct) || (lineMark == 0  && !direct) {
        direct = !direct
      }
      lineMark += direct ? 1 : -1
    }
    var resultStr = ""
    for str in strArray {
      resultStr += str
    }
    return resultStr
  }
}


let so = Solution()
print(so.convert("1234567890123456789", 5))
print(so.convert("AB", 1))