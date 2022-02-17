import Foundation
 
//Task-6
/*
 1. Выполните задание #1 урока о базовых операторах: http://vk.com/topic-58860049_31536965
 только вместо forced unwrapping и optional binding используйте оператор ??

 Когда посчитаете сумму, то представьте свое выражение в виде строки
 Например: 5 + nil + 2 + 3 + nil = 10

 но в первом случае используйте интерполяцию строк, а во втором конкатенацию

 2. Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
 можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C

 3. Создайте строку английский алфавит, все буквы малые от a до z

 задайте константу - один из символов этого алфавита

 Используя цикл for определите под каким индексов в строке находится этот символ
 */

print("-------------Task-1-------------")

let string1 = "13"
let string2 = "37"
let string3 = "23a"
let string4 = "s80"
let string5 = "40"

let str1 = Int(string1) ?? 0
let str2 = Int(string2) ?? 0
let str3 = Int(string3) ?? 0
let str4 = Int(string4) ?? 0
let str5 = Int(string5) ?? 0

var summ : Int
summ = str1 + str2 + str3 + str4 + str5
print("Interpolating: \(str1) + \(str2) + \(str3) + \(str4) + \(str5) = \(summ)")

let checkNil1 = Int(string1) != nil ? string1 : "nil"
let checkNil2 = Int(string2) != nil ? string2 : "nil"
let checkNil3 = Int(string3) != nil ? string3 : "nil"
let checkNil4 = Int(string4) != nil ? string4 : "nil"
let checkNil5 = Int(string5) != nil ? string5 : "nil"

print("Concatenation:", checkNil1, "+", checkNil2, "+", checkNil3, "+", checkNil4, "+", checkNil5, "=", summ)

print("-------------Task-2-------------")

let uniSymb = ("\u{00A1} \u{8284} \u{8623} \u{10803} \u{8984}")
print("Unicode symbols: \(uniSymb)")
print("Unicode elements by swift: \(uniSymb.count)")
print("Unicode elements By obj-c:",(uniSymb as NSString).length)

print("-------------Task-3-------------")
/*
 3. Создайте строку английский алфавит, все буквы малые от a до z

 задайте константу - один из символов этого алфавита

 Используя цикл for определите под каким индексов в строке находится этот символ
 */

let alpabet = "abcdefghijklmnopqrstuvwxyz"

let letter: Character = "a"

var index = 0

for i in alpabet {
    if i != letter {
        index += 1
    } else {
        print("Letter: \(letter) \u{27F6} index: \(index)")
    }
}
