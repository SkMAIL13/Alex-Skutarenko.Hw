//Task-11
/*
 1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
 */

import Darwin

print("-------------Task-1-------------")

func closeruFunc(closure: () -> ()) {
    for num in 1...10 {
        print("num =", num)
    }
    closure()
}

closeruFunc {print("")}

print("-------------Task-2-------------")

// 2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.

let numbers = [1, 4, 3, 5, 8, 0, 9, 6, 7, 2]

func sorting (_ s1: Int,_ s2: Int) -> Bool {
    print("\(s1) < \(s2)")
    return s1 < s2
}

let increaseArray = numbers.sorted(by: sorting)
print(increaseArray)


numbers.sorted(by: {(s1: Int, s2: Int) -> Bool in
    return s1 > s2
})

print(numbers.sorted(by: {s1, s2 in return s1 > s2}))

let sortedArray = numbers.sorted(by: {s1, s2 in s1 < s2})

let sortedArray1 = numbers.sorted(by: {$0 > $1})
let sortedArray2 = numbers.sorted(by: < )

print(sortedArray)
print(sortedArray1)
print(sortedArray2)

print("-------------Task-3-------------")

/*
 3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
     используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
 */

func closureFunc(_ array: [Int], closure: (_ i1: Int,_ i2: Int?) -> Bool) -> Int {
    var optValue: Int?
    
    for i in array {
        if closure(i, optValue) {
            optValue = i
        }
    }
    return optValue ?? 0
}

let maxValue = closureFunc(numbers) {$1 == nil || $0 > $1!}
print("Max value is - \(maxValue)")

let minValue = closureFunc(numbers) {$1 == nil || $0 < $1!}
print("Min value is - \(minValue)")

print("-------------Task-4-------------")

/*
 4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
 */

let someStr = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."

var stringArray = [String]()

for letter in someStr {
    stringArray.append(String(letter))
}

func priority(_ string: String) -> Int {
    switch string.lowercased() {
    case "a"..."y" :
        return 0
    case "b"..."z" :
        return 1
    case "0"..."9":
        return 2
    default:
        return 3
    }
}

let sorted = stringArray.sorted {
    switch(priority($0), priority($1)) {
    case let (a, b) where a < b:
        return true
    case let (a, b) where a > b :
        return false
    default:
        return $0.lowercased() <= $1.lowercased()
    }
}

print(sorted)

print("-------------Task-5-------------")

//5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)

func filterSymbols(array: [String], compare: (Int?, Int) -> Bool ) -> String? {
    var number: Int?
    var symbol: String?
    
    for value in array {
        let numberofValue = Int(UnicodeScalar(String(value))!.value)
        
        if compare(number, numberofValue) {
            symbol = value
            number = numberofValue
        }
    }
    return symbol
}

let symbols = ["S", "k", "K", "I", "W", "M", "a", "A"]

if let maxSymbols = filterSymbols(array: symbols, compare: {$0 == nil || $0! > $1}) {
    print("Max symbol : \(maxSymbols)")
}

if let minSymbols = filterSymbols(array: symbols, compare: {$0 == nil || $0! < $1}) {
    print("Min symbol: \(minSymbols)")
}
