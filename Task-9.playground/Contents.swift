//Task-9
/*
 1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.

 2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа

 3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.

 4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
 44:52
 */

print("-------------Task-1-------------")

let str: String = "Lore2 ipsum dolor sit amet, (on2ectetur adi2iscing elit, sed 4o eius1od )empor incdidu0t u=t labore et dol9re magna a9iqua. Ut enim ad minim ve6iam, quis no<trud e3ercitation ull8mco lab>ris nzsi ut ."

var vowels = 0
var constants = 0
var numbers = 0
var symbols = 0


for char in str.lowercased() {
    switch char {
    case "a", "e", "i", "u", "o" :
        vowels += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "y", "z" :
        constants += 1
    case ",", ".", " ", ")", "(", ">", "<", "=" :
        symbols += 1
    case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
        numbers += 1
    default: break
    }
}

print("At our string: \(str),\n WE HAVE: \(vowels) -> vowels, \(constants) -> constants, \(symbols) -> symbols, \(numbers) -> numbers")

print("-------------Task-2-------------")

let age = 120

switch age {
case(let age) where age <= 0 :
    print("Ur not born")
case 1..<3 :
    print("Ur child")
case 3..<7:
    print("Little bit older, than child")
case 7..<16:
    print("Ur youth")
case 16..<18:
    print("Little bit older, than youth")
case 18..<35:
    print("Ur young")
case 35..<50:
    print("Little bit older, than young")
case 50..<80:
    print("Ur old man")
case 80..<100:
    print("Older, than old")
case 100..<120:
    print("Ur long-liver")
case (let age) where age >= 120:
    print("I dont think ur >= 120 yrs old")

default: break
}

print("-------------Task-3-------------")

let student = (name: "Зубайра", surname: "Тухугов", patronymic: "Алиханович")

switch student {
case let(name, _, _) where name.hasPrefix("А") || name.hasPrefix("О"):
    print("Hello,", student.name)
case let(_, _, patronymic) where patronymic.hasPrefix("В") || patronymic.hasPrefix("Д"):
    print("Hello,", student.name, student.patronymic)
case let(_, surname, _) where surname.hasPrefix("Е") || surname.hasPrefix("З"):
    print("Hello,", student.surname)
default: print("Hello,", student.surname, student.name, student.patronymic)
}

print("-------------Task-4-------------")

let coordinate = ("E", 3)

switch coordinate {
case("A", 1):
    print("Miss")
case("E",3):
    print("Ur ship is Dead")
case("F", 4):
    print("Ur ship is Wounded")
default: break
}



