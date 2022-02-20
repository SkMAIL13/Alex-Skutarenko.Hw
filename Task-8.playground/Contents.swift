//Task-8
/*
 1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

 После всех этих перетрубаций посчитайте общий бал группы и средний бал

 2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
 В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.

 3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.

 Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).
 */

import Darwin

print("-------------Task-1-------------")

var classRegister = [
    "Ivanov Ivan": 5,
    "Semenov Semen": 3,
    "Fedorov Fedor": 2
]

print(classRegister)

classRegister["Fedorov Fedor"] = 5
classRegister.updateValue(4, forKey: "Semenov Semen")
print("Marks after work on mistakes: \(classRegister)")

classRegister["Dmitriy Dmitriev"] = 3
classRegister["Potapov Potap"] = 3
print("Our class with new classmates:", classRegister)

classRegister["Ivanov Ivan"] = nil
classRegister.removeValue(forKey: "Fedorov Fedor")
print("Class without some students: \(classRegister)")

print("-----General Summ of marks-----")
var generalSum = 0
for value in classRegister.values {
    generalSum += value
    
}
print("General sum of Students is:", generalSum)

print("-----Average Summ of marks-----")
let averageSum = Double(generalSum) / Double(classRegister.count)
print("Average summ of Students is:", averageSum)

/*
 2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
 В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.

 */
print("-------------Task-2-------------")
var monDict = ["Jan": 31, "Feb": 28, "Mar": 31, "Apr": 30, "May": 31, "Jun": 30, "Jul": 31, "Aug": 31, "Sep": 30, "Oct": 31, "Nov": 30, "Dec": 31]

print("--------Method with Tuples------")

for (key, value) in monDict {
    print(key, "=", value)
}

print("--------Method with Arrays------")
for key in monDict.keys {
    print("\(key) -> \(monDict[key]!)")
}

print("-------------Task-3-------------")
var chess: [String:Bool] = [:]

let numbersChess = [1, 2, 3, 4, 5, 6, 7, 8]
let letterChess = ["A", "B", "C", "D", "E", "F", "G", "H"]

for i in 0..<numbersChess.count {
    for j in 0..<letterChess.count {
        chess[letterChess[i] + String(numbersChess[j])] = (i % 2 == j % 2) ? false : true
    }
}

var typePos = "E6"
print("Chess Cage: \(typePos) \(chess[typePos] == true ? "white" : "black") ")

print("-------------Second variant-------------")

var chess1 : [String:Bool] = [:]

for (index, letter) in letterChess.enumerated() {
    for number in numbersChess {
        chess1.updateValue((index + number) % 2 == 0, forKey: (letter + String(number)))
    }
}
print(chess1)
