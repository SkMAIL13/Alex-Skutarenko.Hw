import UIKit

//Hw Tasks


//Task-2
//let Int = Int
//print(Int)
let Uint8min = UInt8.min
//print(Uint8min)
let Uint8max = UInt8.max
//print(Uint8max)
let Int8min = Int8.min
//print(Int8min)
let Int8max = Int8.max
//print(Int8max)

//3 константы(float, int, double)
let FirstNum:Float = 3.33
let SecondNum:Int = 13
let ThirdNum: Double = 4.44

let first = FirstNum + Float(SecondNum) + Float(ThirdNum)
//print(first)

let second = Int(FirstNum) + SecondNum + Int(ThirdNum)
//print(second)

let third = Double(FirstNum) + Double(SecondNum) + ThirdNum
//print(third)

if Double(second) > third {
//     print("Int > Double -> Int: \(second), Double \(third)")
} else {
//    print("Int: \(second), Double \(third)")
}

//Task-3
/*
 1. Создать тюпл с тремя параметрами:

 - максимальное количество отжиманий
 - максимальное количество подтягиваний
 - максимальное количество приседаний

 Заполните его своими достижениями :)

 Распечатайте его через println()

 2. Также сделайте три отдельных вывода в консоль для каждого параметра

 При том одни значения доставайте по индексу, а другие по параметру

 3. Создайте такой же тюпл для другого человека (супруги или друга)

 с такими же параметрами, но с другими значениями

 Используйте промежуточную переменную чтобы поменять соответствующие значения

 первого тюпла на значения второго

 4. Создайте третий тюпл с теми же параметрами, но значения это разница

 между соответствующими значениями первого и второго тюплов
 */

let MyTuple = (Pushups: 35, Pullups: 27, Situps: 40)

//print(MyTuple)
//print("Situps:", MyTuple.2)
//print(MyTuple.Pullups)
//print("Pushups: \(MyTuple.Pushups)")

let otherTuple = (Pushups: 27, Pullups: 25, Situps: 10)

var emptyTuple = MyTuple
emptyTuple = (27, 25, 10)

var thirdTuple = (MyTuple.0 - otherTuple.0, MyTuple.1 - otherTuple.1, MyTuple.2 - otherTuple.2)
//print("Разница в отжиманиях: \(thirdTuple.0), подтягиваниях: \(thirdTuple.1), приседаниях: \(thirdTuple.2)")
