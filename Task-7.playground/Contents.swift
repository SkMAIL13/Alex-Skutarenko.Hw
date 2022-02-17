//Task-7
/*
 1. создать массив "дни в месяцах"
 12 элементов содержащих количество дней в соответствующем месяце

 используя цикл for и этот массив

 - выведите количество дней в каждом месяце (без имен месяцев)
 - используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
 - сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
 - сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)

 - для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года

 2. Сделайте первое задание к уроку номер 4 используя массивы:

 (создайте массив опшинал интов и посчитайте сумму)

 - в одном случае используйте optional binding
 - в другом forced unwrapping
 - а в третьем оператор ??

 3. создайте строку алфавит и пустой массив строк

 в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед
 */

print("-------------Task-1-------------")

let arrayDates = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
for i in arrayDates {
    print(i)
}
print("-------------Month \u{2192} Date-------------")

let monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

for (index, value) in arrayDates.enumerated() {
    print(monthNames[index], "\u{2192}", value)
}
print("--------------------------")

let tupleArray: [(String, Int)] = [("Jan", 31), ("Feb", 28), ("Mar", 31), ("Apr", 30), ("May", 31), ("Jun", 30), ("Jul", 31), ("Aug", 31), ("Sep", 30), ("Oct", 31), ("Nov", 30), ("Dec", 31),]

for (month, day) in tupleArray {
    print("\(month) \u{2192} \(day)")
}


print("--------------------------")
for (month, day) in tupleArray.reversed() {
    print(month, "\u{2192}", day)
}

print("--------------------------")

var days = 0
let dateBday = (month: "May", date: 14)

for (month, day) in tupleArray {
    if dateBday.month != month {
        days += day
    } else {
        days += (dateBday.date - 1)
        break
    }
}
print("Days till my bDay: \(days)")

print("-----------Task-2---------------")


let arrayOpt: [Int?] = [13, 37, nil, 1, nil]

var sum = 0
var sum1 = 0
var sum2 = 0

for i in arrayOpt {
    if let check = i {
        sum += check
    }
}
print("Summ with optional bindind: \(sum)")

for i in arrayOpt {
    if i != nil {
        sum1 += i!
    }
}
print("Summ with forced unwrap: \(sum1)")

for i in arrayOpt {
    sum2 += i ?? 0
}
print("With `??` operator summ is:", sum2)
 

print("------------Task-3------------")
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var emptyArray = [String]()
var emptyArray1 = [String]()

for char in alphabet {
    emptyArray.insert((String(char)), at: 0)
}
print("Reversed alphabet with insert.method()", emptyArray)

for char in alphabet.reversed() {
    emptyArray1.append(String(char))
}
print("Reversed alphabet with method.reversed()", emptyArray1)
