//: Playground - noun: a place where people can play

import UIKit


private extension String {
    subscript (i: Int) -> Character {
        let index: Index = self.startIndex.advancedBy(i)
        return self[index]
    }
    subscript (range: Range<Int>) -> String {
        return self[self.startIndex.advancedBy(range.startIndex)..<self.startIndex.advancedBy(range.endIndex, limit: self.endIndex)]
    }
}


var s = "Hello, playground"

print(s[1])