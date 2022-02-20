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

let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for days in monthDays {
    print(days)
}

let monthNames = ["Jan","Feb","Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

for (index, value) in monthDays.enumerated() {
    print("\(monthNames[index]) -> \(value)")
}

var newArray = [(String, Int)]()

for i in 0..<monthDays.count {
    let data = (monthNames[i], monthDays[i])
    newArray.append(data)
}

for (month, day) in newArray {
    print(month, day)
}

print(terminator: "------")

print()

for (month, day) in newArray.reversed() {
    print(month, day)
}


// - для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
var count = 0
let date = (month: "May", day: 14)

for(month, day) in newArray {
    if date.month != month {
        count += day
    } else {
        count += (date.day - 1)
        break
    }
}
print("\(count) days before, \(date.month): \(date.day)")
