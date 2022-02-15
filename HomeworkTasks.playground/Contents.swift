import UIKit
import Darwin
import Foundation

//Hw Tasks
//=======================================

//=======================================
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

//=======================================

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

//var thirdTuple = (MyTuple.0 - otherTuple.0, MyTuple.1 - otherTuple.1, MyTuple.2 - otherTuple.2)
//print("Разница в отжиманиях: \(thirdTuple.0), подтягиваниях: \(thirdTuple.1), приседаниях: \(thirdTuple.2)")



//=======================================

//Task-4
/*
 1. Создать пять строковых констант

 Одни константы это только цифры, другие содержат еще и буквы

 Найти сумму всех этих констант приведя их к Int

 (Используйте и optional binding и forced unwrapping)
*/
 
//let string1 = "13"
//let string2 = "19"
//let string3 = "300"
//let string4 = "four"
//let string5 = "1337Leet"

//var res:Int = 0

//let str1 = Int(string1)!

//res += str1
//print(res)


//let str2 = Int(string2)

//if str2 != nil {
//    res += str2!
//    print(res)
//} else {
//    "cant do it"
//}

//let str3 = Int(string3)

//if str3 != nil {
//    res += str3!
//    print(res)
//} else {
//    "cant do it"
//}

//let str4 = Int(string4)

//if str4 != nil {
//    res += str4!
//    print(res)
//} else {
//    "cant do it"
//}


//let str5 = Int(string5)
//
//if str5 != nil {
////    res += str5!
////    print(res)
//} else {
//    "cant do it"
//}


/*2. С сервера к нам приходит тюпл с тремя параметрами:

statusCode, message, errorMessage (число, строка и строка)

в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле

если statusCode от 200 до 300 исключительно, то выводите message,

в противном случает выводите errorMessage

После этого проделайте тоже самое только без участия statusCode
*/

var infTuple = (statusCode: 400, message: "wait,please", error: "smthing wrong")
 
if  infTuple.statusCode >= 200 && infTuple.statusCode < 300 {
    print(infTuple.message)
} else {
//    print(infTuple.error)
}

infTuple.statusCode = 400

if infTuple.0 >= 200 && infTuple.statusCode < 300 {
//    print("Msg from server: \(infTuple.0) ")
} else {
//    print("Get error:" + " " + infTuple.2)
}

/* 3. Создайте 5 тюплов с тремя параметрами:

имя, номер машины, оценка за контрольную

при создании этих тюплов не должно быть никаких данных

после создания каждому студенту установите имя

некоторым установите номер машины

некоторым установите результат контрольной

выведите в консоль:

- имена студента
- есть ли у него машина
- если да, то какой номер
- был ли на контрольной
- если да, то какая оценка
*/

let firstTuple : (name: String?, carNumber: String?, mark: Int?)
let secondTuple : (name: String?, carNumber: String?, mark: Int?)
let thirdTuple : (name: String?, carNumber: String?, mark: Int?)
let fourthTuple : (name: String?, carNumber: String?, mark: Int?)
let fifthTuple : (name: String?, carNumber: String?, mark: Int?)

firstTuple.name = "Vasiliy"
secondTuple.name = "Ivan"
thirdTuple.name = "Saimon"
fourthTuple.name = "Alex"
fifthTuple.name = "Steve"

firstTuple.carNumber = "o142em"
secondTuple.carNumber = "a111aa"
fifthTuple.carNumber = "k303kk"

firstTuple.mark = nil
thirdTuple.mark = 5
fourthTuple.mark = 3
fifthTuple.mark = 4

//print("Name of student: \(firstTuple.name!)")
if firstTuple.carNumber != nil {
//    print("Student: \(firstTuple.name!), " + "his car number is: \(firstTuple.carNumber!)")
}   else {
//    print("Student: \(firstTuple.name!), havent a car")
}


if firstTuple.2 != nil {
//    print("Stundent \(firstTuple.name!), get mark: \(firstTuple.mark!)")
} else {
//    print("Stundent: \(firstTuple.name!), havent marks")
}

//=======================================
//Task-5
/*
1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)
*/
let sec = 60
let min = 60
let hrs = 24
let days = 30
let date = 14
let myMonth = 5

let Bday = ((myMonth * days) - 16) * hrs * min * sec

//print("\(Bday) seconds to my Bday")

/*
2. Посчитайте в каком квартале вы родились
*/

let quater = 4
let year = 12

let quaterBday = ((myMonth * days) - 16) % quater
//print(quaterBday)

/*
3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением. В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.

Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций
*/
let firstInt = 1
let secondInt = 2
let thirdInt = 3
let fourthInt = 4
let fifthInt = 5

var opertators = fifthInt + fourthInt - thirdInt * secondInt / firstInt
//print(opertators)

/*
4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
*/

let firstCoord = 4
let secondCoord = 2

if firstCoord % 2 == 0 && secondCoord % 2 == 0  {
//    print("Coordinate(\(firstCoord); \(secondCoord)) - is White")
} else {
//    print("Coordinate(\(firstCoord); \(secondCoord)) - is Black")
}

//=======================================
//Task-6
/* 1. Выполните задание #1 урока о базовых операторах: http://vk.com/topic-58860049_31536965 (Создать пять строковых констант. Одни константы это только цифры, другие содержат еще и буквы. Найти сумму всех этих констант приведя их к Int (Используйте и optional binding и forced unwrapping))
 
только вместо forced unwrapping и optional binding используйте оператор ??

Когда посчитаете сумму, то представьте свое выражение в виде строки
Например: 5 + nil + 2 + 3 + nil = 10

но в первом случае используйте интерполяцию строк, а во втором конкатенацию
*/

let string1 = "13"
let string2 = "19"
let string3 = "300"
let string4 = "four"
let string5 = "1337Leet"

let strInt1 = Int(string1) ?? 0
let strInt2 = Int(string2) ?? 0
let strInt3 = Int(string3) ?? 0
let strInt4 = Int(string4) ?? 0
let strInt5 = Int(string5) ?? 0

var resInt = 0

resInt = strInt1 + strInt2 + strInt3 + strInt4 + strInt5
//print("Result with interpolation: \(strInt1) + \(strInt2) + \(strInt3) + \(strInt4) + \(strInt5) = \(resInt)")

let checkNil1 = Int(string1) != nil ? string1 : "nil"
let checkNil2 = Int(string2) != nil ? string2 : "nil"
let checkNil3 = Int(string3) != nil ? string3 : "nil"
let checkNil4 = Int(string4) != nil ? string4 : "nil"
let checkNil5 = Int(string5) != nil ? string5 : "nil"

let resInt1 = checkNil1 + checkNil2 + checkNil3 + checkNil4 + checkNil5
print(checkNil1 + " + " + checkNil2 + " + " + checkNil3 + " + " + checkNil4 + " + " + checkNil5 + " = " + " \(resInt1) ")

/*
2. Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C
*/

let uniSymbol = "\u{2049}" + "\u{2318}"
print(uniSymbol.count, " : Unicode items")
print("Items length is: ", (uniSymbol as NSString).length)

/*
3. Создайте строку английский алфавит, все буквы малые от a до z

задайте константу - один из символов этого алфавита

Используя цикл for определите под каким индексов в строке находится этот символ
*/

//let alphabet:Character = "abc, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, y, z
let alphabet = "abcdefghijklmnopqrstuvwxyz"

let k : Character = "k"
var index = 0

for i in alphabet {
    if i != k {
        index += 1
    } else {
        print("Letter \(k) at position: \(index)")
    }
}
