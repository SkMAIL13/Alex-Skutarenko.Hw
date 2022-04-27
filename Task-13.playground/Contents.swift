//Task-13
/*
 1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).
*/

print("-------------Task-1-------------")

class StudentClass {
    var name: String
    var surName: String
    var year: Int
    var average: Int
    
    init(name: String, surName: String, year: Int, average: Int) {
        self.name = name
        self.surName = surName
        self.year = year
        self.average = average
    }
}

var studentFirst = StudentClass(name: "Simon", surName: "Simonski", year: 1990, average: 4)
var studentSecond = StudentClass(name: "Valeriy", surName: "Azov", year: 1980, average: 5)
var studentThird = StudentClass(name: "Nikolo", surName: "Lvov", year: 1997, average: 3)
var studentFourth = StudentClass(name: "Alex", surName: "Semenov", year: 1993, average: 4)
var studentFifth = StudentClass(name: "Kostya", surName: "Kolcov", year: 1999, average: 5)

var journal = [studentFirst, studentSecond, studentThird, studentFourth, studentFifth]

/*
2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
 */

print("-------------Task-2-------------")

func printStudent(journal: [StudentClass]) {
    var num = 0
    for student in journal {
        num += 1
        print("\(num). Студент \(student.name) \(student.surName), \(student.year) года рождения, со средним баллом \(student.average)")
    }
}
printStudent(journal: journal)

/*
 3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
 */

print("-------------Task-3-------------")

func sorted(mass : [StudentClass], closure: (StudentClass, StudentClass) -> Bool) -> [StudentClass] {
    return mass.sorted(by: closure)
}

journal = sorted(mass: journal){ave1,ave2 in
    ave1.average < ave2.average
}
printStudent(journal: journal)

/*
 4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
 */

print("-------------Task-4-------------")

journal = sorted(mass: journal){st, st2 in
    return st.surName == st2.surName ? st.name < st2.name:st.surName < st2.surName
}
printStudent(journal: journal)

/*
 5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.
 */

print("-------------Task-5-------------")

var tempMass = journal
tempMass[0].name = "Kostya"
tempMass[1].name = "Andrei"
tempMass[2].name = "Sem"
tempMass[3].name = "Zack"
tempMass[4].name = "Zyzz"
print("New mass \u{2193}")
printStudent(journal: tempMass)

print("Def mass \u{2193}")
printStudent(journal: journal)
