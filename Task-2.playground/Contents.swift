import UIKit
//Task-2
/*
1. Выведите в консоль минимальные и максимальные значения базовых типов, не ленитесь :)

2. Создайте 3 константы с типами Int, Float и Double

Создайте другие 3 константы, тех же типов: Int, Float и Double,

при чем каждая из них это сумма первых трех, но со своим типом

3. Сравните Int результат суммы с Double и выведите отчет в консоль
*/

print(Int8.max)
print(Int8.min)
print(Int16.max)
print(Int16.min)
print(Int32.max)
print(Int32.min)
print(Int64.max)
print(Int64.min)

let int: Int = 13
let float: Float = 33.9
let double: Double = 36.6

let summInt = int + Int(float) + Int(double)
print(summInt)

let summFloat = Float(int) + float + Float(double)
print(summFloat)

let summDouble = Double(int) + Double(float) + double
print(summDouble)

if Double(summInt) > summDouble {
    print("Summ of Int: \(summInt) - is greater than \(summDouble)")
} else {
    print("Summ of Int: \(summInt) - its is less, than \(summDouble)")
}
