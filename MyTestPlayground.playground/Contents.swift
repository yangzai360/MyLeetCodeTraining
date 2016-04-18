//: Playground - noun: a place where people can play

import UIKit

extension Character
{
    func toInt() -> Int
    {
        var intFromCharacter:Int = 0
        for scalar in String(self).unicodeScalars
        {
            intFromCharacter = Int(scalar.value)
        }
        return intFromCharacter
    }
}

let c:Character = "8"
let c3:Character = "3"

print(c.toInt() - c3.toInt())





Int32.min
//-2147483648
Int32.max
//2147483647

print( Int32.min == -Int32.max - 1 )

