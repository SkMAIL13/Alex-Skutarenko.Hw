import Foundation
import Darwin
//Task-14
/*
 1. Повторить код из урока по памяти.
*/

print("-------------Task-1-------------")

struct Student {
    var firstName: String {
        willSet {
            print("New name: \(newValue). Instead of: \(firstName)")
        }
        didSet {
            firstName = firstName.capitalized
            print("Did set: \(firstName). Instead of: \(oldValue)")
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                firstName = words[1]
            }
        }
    }
}

var newStudent = Student(firstName: "Mick", lastName: "Statskii")
print("Student full name: " + newStudent.fullName)

newStudent.fullName = "Van Sony"
print(newStudent.fullName)

/*
 2. Для этого же студента добавить свойства:
-дата рождения (используя другую структуру)
-возраст (вычисляется на основании даты рождения)
-количество лет учебы (начиная с 6 лет, либо 0 если возраст меньше чем 6)
 */

print("-------------Task-2-------------")

class Student1 {
    init(name: String, lastName: String, birthDay: dob) {
        self.name = name.capitalized
        self.lastName = lastName.capitalized
        self.birthDay = birthDay
    }
    
    var name: String {
        didSet {
            name = name.capitalized
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {
        get {
            name + " " + lastName
        }
        set {
            let newStudent = newValue.components(separatedBy: " ")
            
            if newStudent.count == 2 {
                name == newStudent[0]
                lastName = newStudent[1]
            }
        }
    }
    
    struct dob {
        var day: Int
        var month: Month
        var year: Int
    }

    enum Month: Int {
          case January = 1, February, March, April, May, June, July, August, September, October, November, December
    }

    var birthDay: dob
    
    var born: String {
        get {
            (String(birthDay.day) + "." + String(birthDay.month.rawValue) + "." + String(birthDay.year))
        }
    }
}

var student1 = Student1.init(name: "Simon", lastName: "Viweski", birthDay: .init(day: 01, month: .May, year: 1999))
var student2 = Student1.init(name: "Ann", lastName: "Kolski", birthDay: .init(day: 13, month: .February, year: 2001))

var students = [student1, student2]

func showStudents(in arr: [Student1]) {
    for student in arr {
        let studentYear = 2022 - student.birthDay.year
        
        print("\(student.fullName) was born \(student.born)")
        print("\u{2B07}")
        
        switch studentYear {
        case _ where studentYear > 6 :
            print("End kindergarden at \(student.birthDay.year + 6)")
            
            if studentYear > 17 {
                print("End school at \(student.birthDay.year + 17)")
            }
        default:
            print("Went's in kindergarten, around \(2022 - student.birthDay.year - 2) years")
        }
    }
}

showStudents(in: students)

/*
 3. Создать структуру "отрезок", у которой два свойства - точка "А" и точка "В", которые в свою очередь тоже структуры (не стандартные, а наши собственные)
Также отрезок имеет вычисляемые свойства (они изменяют точки "А" и "В", если мы изменяем следующие свойства):
 -midPoint - середина отрезка (при её изменении, отрезок смещается на параллельную прямую, проходящую через наш midPoint?)
 -длина отрезка (при изменении, точка "А" остается, а точка "В" движется)
 */

print("-------------Task-3-------------")

struct Pos {
    struct Point {
        var x: Double
        var y: Double
    }
    
    var A: Point
    var B: Point
    
    var midPoint: Point {
        get {
            return Point(x: (A.x + B.x)/2, y: (A.y + B.y)/2)
        }
        set {
            let def = newValue.x - midPoint.x
            A.x += def
            A.y += def
            B.x += def
            B.y += def
        }
    }
    var line: Double {
        get {
            return sqrt(pow((B.x - A.x), 2) + pow((B.y - A.y), 2))
        }
        set {
            B.x = A.x + newValue * (B.x - A.x) / line
            B.y = A.y + newValue * (B.y - A.y) / line
        }
    }
}

var dot = Pos(A: .init(x: 123123.114, y: 22222.113), B: .init(x: 551221.103, y: 222.6742))
print(dot.midPoint)
print(dot.line)
