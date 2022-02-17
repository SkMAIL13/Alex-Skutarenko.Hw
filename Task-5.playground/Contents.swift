import UIKit
import Darwin
 
//Task-5
/*
 1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)

 2. Посчитайте в каком квартале вы родились

 3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением. В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.

 Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций

 4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
 */

//1
print("-------------First Task-------------")
let months = (Jan: 31,Feb: 28, March: 31, April: 30, May: 31, June: 30, July: 31, August: 31, September: 30, October: 31, November: 30, December: 31)
var myDate = months.May
myDate = 14

let hrs = 24
let min = 60
let sec = 60
let bDayDate = 14

let bDay = ((months.0 + months.1 + months.2 + months.3 + myDate) * hrs * min * sec)
print("Seconds to my Birthday till 1 Jan is: \(bDay)")

//2
print("-------------Second Task-------------")
let myMonth = 5
if myMonth >= 1 && myMonth <= 3 {
    print("Ur bDay is 1st quater")
} else if myMonth >= 4 && myMonth <= 6 {
    print("Ur bDay is 2nd quater")
} else if myMonth >= 7 && myMonth <= 9 {
    print("Ur bDay is 3rd quater")
} else if myMonth >= 10 && myMonth <= 12 {
    print("Ur bDay is 4rd quater")
} else {
    print("Ur month isnt correct, try again(Jan-Dec(1..12))")
}

//3
print("-------------Third Task-------------")

print("++a && a++ not working \u{1F622}")

//4
print("-------------Fourth Task-------------")

let coordTuple = (a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7 , h: 8)

let coord = (x: coordTuple.h, y: 3)

if coord.x % 2 == coord.y % 2 {
    print("Figure on black color")
} else {
    print("Figure on white color")
}


