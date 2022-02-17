import UIKit
import Darwin
 
//Task-4
/*
 1. Создать пять строковых констант

 Одни константы это только цифры, другие содержат еще и буквы

 Найти сумму всех этих констант приведя их к Int

 (Используйте и optional binding и forced unwrapping)

 2. С сервера к нам приходит тюпл с тремя параметрами:

 statusCode, message, errorMessage (число, строка и строка)

 в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле

 если statusCode от 200 до 300 исключительно, то выводите message,

 в противном случает выводите errorMessage

 После этого проделайте тоже самое только без участия statusCode

 3. Создайте 5 тюплов с тремя параметрами:

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

//1

let string1 = "13"
let string2 = "37"
let string3 = "23a"
let string4 = "s80"
let string5 = "40"

var summOpt : Int = 0

if let intStr1 = Int(string1) {
    summOpt += intStr1
}

if let intStr2 = Int(string2) {
    summOpt += intStr2
}

if let intStr3 = Int(string3) {
    summOpt += intStr3
}

if let intStr4 = Int(string4) {
    summOpt += intStr4
}

if let intStr5 = Int(string5) {
    summOpt += intStr5
}
print("-------------Optional binding-------------")
print("Summ of: \(string1) + \(string2) + \(string3) + \(string4) + \(string5), by optional binding = \(summOpt)")

var summUnwrap = Int()

let strUnwrap1 = Int(string1)
let strUnwrap2 = Int(string2)
let strUnwrap3 = Int(string3)
let strUnwrap4 = Int(string4)
let strUnwrap5 = Int(string5)

if strUnwrap1 != nil {
    summUnwrap += strUnwrap1!
    
} else {
    print("Smtg went wrong...")
}

if strUnwrap2 != nil {
    summUnwrap += strUnwrap2!
} else {
    print("Smtg went wrong...")
}

if strUnwrap3 != nil {
    summUnwrap += strUnwrap3!
} else {
    print("Smtg went wrong...")
}

if strUnwrap4 != nil {
    summUnwrap += strUnwrap4!
} else {
    print("Smtg went wrong...")
}

if strUnwrap5 != nil {
    summUnwrap += strUnwrap5!
}
print("-------------Force unwrap-------------")
print("Summ with Force unwrap of: \(string1) + \(string2) + \(string3) + \(string4) + \(string5) =", summUnwrap )
//2
/*
 С сервера к нам приходит тюпл с тремя параметрами:

 statusCode, message, errorMessage (число, строка и строка)

 в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле

 если statusCode от 200 до 300 исключительно, то выводите message,

 в противном случает выводите errorMessage

 После этого проделайте тоже самое только без участия statusCode
 */

let serverTuple : (statusCode: Int, message: String?, errorMessage: String?)
serverTuple.statusCode = 300
serverTuple.message = "200 <= x < 300"
serverTuple.errorMessage = "not found in range"

print("-------------Status-------------")

if 200 <= serverTuple.statusCode && serverTuple.statusCode < 300 {
    print("Msg frm server:", serverTuple.message!)
} else {
    print("U get an error: \(serverTuple.errorMessage!)")
}

let serverTuple2 : (message: String?, errorMessage: String?)
serverTuple2.message = nil
serverTuple2.errorMessage = "Get an error"

if serverTuple2.message != nil {
    print("Msg frm server: ", serverTuple2.message!)
} else {
    print("Msg frm server: ", serverTuple2.errorMessage!)
}


//3
var firstStudent: (name: String?, plateNum: String?, mark: Int?)
var secondStudent: (name: String?, plateNum: String?, mark: Int?)
var thirdStudent: (name: String?, plateNum: String?, mark: Int?)
var fourthtStudent: (name: String?, plateNum: String?, mark: Int?)
var fifthStudent: (name: String?, plateNum: String?, mark: Int?)

firstStudent = ("Ivan", nil, nil)
secondStudent = ("Alex", "o192ko", nil)
thirdStudent = ("Den", "e331kx", 5)
fourthtStudent = ("Nasyba", nil, nil)
fifthStudent = ("Valter", "a782me", 3)

print("-------------Students-------------")

print("-------------1st Student-----------")
if let car = firstStudent.1, let studMark = firstStudent.2 {
    print("Student: \(firstStudent.0!), car plate number: \(car), got mark: \(studMark)")
} else if let car = firstStudent.1 {
    print("Student: \(firstStudent.0!), car plate number: \(car), dont got mark")
} else if let studMark = firstStudent.2 {
    print("Student: \(firstStudent.0!), dont have car, got mark: \(studMark)")
} else {
    print("Student: \(firstStudent.0!), dont have car and mark")
}

print("-------------2nd Student-----------")
if let car = secondStudent.1, let studMark = secondStudent.2 {
    print("Student: \(secondStudent.0!), car plate number: \(car), got mark: \(studMark)")
} else if let car = secondStudent.1 {
    print("Student: \(secondStudent.0!), car plate number: \(car), dont got mark")
} else if let studMark = secondStudent.2 {
    "Student: \(secondStudent.0!), dont have car, got mark: \(studMark)"
} else {
    print("Student: \(secondStudent.0!), dont have car and mark")
}

print("-------------3rd Student-----------")
if let car = thirdStudent.1, let studMark = thirdStudent.2 {
    print("Student: \(thirdStudent.0!), car plate number: \(car), got mark: \(studMark)")
} else if let car = thirdStudent.1 {
    print("Student: \(thirdStudent.0!), car plate number: \(car), dont got mark")
} else if let studMark = thirdStudent.2 {
    print("Student: \(thirdStudent.0!), dont have car, got mark \(studMark)")
} else {
    print("Student: \(thirdStudent.0!), dont have car and mark")
}

print("-------------4th Student-----------")
if let car = fourthtStudent.1, let studMark = fourthtStudent.2 {
    print("Student: \(fourthtStudent.0!), car plate number: \(car), got mark: \(studMark)")
} else if let car = fourthtStudent.1 {
    print("Student: \(fourthtStudent.0!), car plate number: \(car), dont got mark")
} else if let studMark = thirdStudent.2 {
    print("Student: \(fourthtStudent.0!), dont have car, got mark: \(studMark)")
} else {
    print("Student: \(fourthtStudent.0!), dont have car and mark")
}

print("-------------5th Student-----------")
if let car = fifthStudent.1, let studMark = fifthStudent.2 {
    print("Student: \(fifthStudent.0!), car plate number: \(car), got mark: \(studMark)")
} else if let car = fifthStudent.1 {
    print("Student: \(thirdStudent.0!), car plate number: \(car), dont got mark")
} else if let studMark = fifthStudent.2 {
    print("Student: \(firstStudent.0!), dont have car, got mark \(studMark)")
} else {
    print("Student: \(fifthStudent.0!), dont have car and mark")
}
