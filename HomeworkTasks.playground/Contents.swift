import UIKit

//Hw Tasks


//Task-2
//let Int = Int
//print(Int)
let Uint8min = UInt8.min
print(Uint8min)
let Uint8max = UInt8.max
print(Uint8max)
let Int8min = Int8.min
print(Int8min)
let Int8max = Int8.max
print(Int8max)

//3 константы(float, int, double)
let FirstNum:Float = 3.33
let SecondNum:Int = 13
let ThirdNum: Double = 4.44

let first = FirstNum + Float(SecondNum) + Float(ThirdNum)
print(first)

let second = Int(FirstNum) + SecondNum + Int(ThirdNum)
print(second)

let third = Double(FirstNum) + Double(SecondNum) + ThirdNum
print(third)

if Double(second) > third {
     print("Int > Double -> Int: \(second), Double \(third)")
} else {
    print("Int: \(second), Double \(third)")
}


