//Task-10
/*
 1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.

 2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль

 3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.

 4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?

 5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
 */

print("-------------Task-1-------------")

func heart() -> String{
    return "<3"
}

func smile() -> String {
    return "8)"
}

print(heart())
print(smile())
print("Heart: " + heart() + " / " + "Smile: " + smile())

print("-------------Task-2-------------")
/*
 
 2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль
 */

func chessCage(hor: String, ver: String) -> String {
    let letter = ["a" , "b", "c", "d", "e", "f", "g", "h"]
    let num = ["1" , "2", "3", "4", "5", "6", "7", "8"]
    
    var chess = [String:String]()
    var color = ""
    for i in 0..<letter.count {
        for j in 0..<num.count {
            chess[(letter[i]) + (num[j])] = (i % 2 == j % 2) ? "Black" : "White"
        }
    }
    
    for (i, j) in chess {
        if i == (hor + ver) {
            color = j
        }
    }
    return color
}

let position = chessCage(hor: "d", ver: "6")
print("Position is \(position)")


func chess(Vertical v: Int, Horizontal h: String) -> String {
    let hNumber = (h == "a" || h == "c" || h == "e" || h == "g") ? 1 : 0
    let color = ((v + hNumber) % 2 == 0 ) ? "Black" : "White"
    return "Cell: " + "(" + String(v) + h + ")" + " " + "-> " + color + " Color"
}

print(chess(Vertical: 6, Horizontal: "d"))

print("-------------Task-3-------------")

func reverseArr(input: [Int]) -> [Int] {
    var temp = [Int]()
    
    for num in input {
        temp.insert(num, at: 0)
    }
    return temp
}

var array = [5, 500, 1, 10, 100, 1000, 5000]

print(reverseArr(input: array))

func makeArr(input: Int...) -> [Int] {
    let inp1 = input
    
    return reverseArr(input: inp1)
}

print(makeArr(input: 10, 11, 12, 13, 14, 15, 16))

print("-------------Task-4-------------")

func funcInOut (input: inout [Int]) {
    for num in input {
        input.insert(num, at: 0)
        input.removeLast()
    }
}

funcInOut(input: &array)
print(funcInOut(input: &array))

print("-------------Task-5-------------")

var someStr = "Lore2 ipsum dolor sit amet, (on2ectetur adi2iscing elit, sed 4o eius1od )empor incdidu0t u=t labore et dol9re magna a9iqua. Ut enim ad minim ve6iam, quis no<trud e3ercitation ull8mco lab>ris nzsi ut ."

func getStr(str: String) -> String {
    let nums = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var otherStr = ""
    
    for i in str.lowercased() {
        
        switch i {
        case "a", "e", "u", "i", "o", "y" :
            otherStr += i.uppercased()
        case "b"..."z":
            otherStr += i.lowercased()
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            otherStr += nums[Int(String(i))!]
        case " ":
            otherStr += " "
        default:
            otherStr += ""
        }
    }
    return otherStr
}

print(getStr(str: someStr))
