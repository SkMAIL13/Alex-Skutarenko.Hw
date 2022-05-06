//Task-15
/*
 1.  Создать структуру “Описание файла” содержащую свойства:
 - путь к файлу
 - имя файла
 - максимальный размер файла на диске
 - путь к папке, содержащей этот файл
 - тип файла (скрытый или нет)
 - содержимое файла (можно просто симулировать контент)
 Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
*/

print("-------------Task-1-------------")

let path = "Homework/Alex-Skutarenko.Hw/"
let name = "Alex-Skutarenko.Hw"

struct DescriptionFile {
    static var maxSize = 100.00
    
    var fileName: String
    var filePath: String
    var isHidden: Bool
    
    var fileSize: Double {
        didSet {
            if fileSize >= DescriptionFile.maxSize {
                fileSize = oldValue
            }
        }
    }
    
    var folderPath: String {
        get {
            if !isHidden {
                return filePath + fileName
            }
            return filePath
        }
    }
    
    var fileInfo: String {
        get {
            if !isHidden {
                return name
            }
            return "isEmpty"
        }
    }
}

var task15 = DescriptionFile(fileName: "Task-15", filePath: path, isHidden: false, fileSize: 1.0)
var task14 = DescriptionFile(fileName: "Task-14", filePath: path, isHidden: true, fileSize: 0.2)
var task13 = DescriptionFile(fileName: "Task-13", filePath: path, isHidden: true, fileSize: 3.1)

let tasks = [task13, task14, task15]

for task in tasks {
    print("File path \(task.folderPath)")
    print("Content \(task.fileInfo)")
    print("Size of \(task.fileName) is \(task.fileSize)")
}

/*
 2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.
 */

print("-------------Task-2-------------")

enum ColorSpecter: Int {
    case red = 0xFF0000
    case orange = 0xffa500
    case green = 0x008000
    case yellow = 0xffff00
    
    static var total = 4
    static let firstColor = ColorSpecter.red.rawValue
    static let secondColor = ColorSpecter.orange.rawValue
}

let redColor = ColorSpecter.red
let orangeColor = ColorSpecter.orange

print("Red color:" , redColor.rawValue)
print(ColorSpecter.firstColor)
print(ColorSpecter.secondColor)


/*
 3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
    - минимальный и максимальный возраст каждого объекта
    - минимальную и максимальную длину имени и фамилии
    - минимально возможный рост и вес
    - самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
*/

print("-------------Task-3-------------")

var count = 0

class Human {
    var name: String
    var surName: String
    var age: Int {
        didSet {
            if age > Human.maxAge || age < Human.minAge {
                return age = oldValue
            }
        }
    }
    
    var height: Double {
        didSet {
            if height > Human.maxHeight || height < Human.minHeight {
                return height = oldValue
            }
        }
    }
    
    var weight: Double {
        didSet{
            if weight > Human.maxWeight || weight < Human.minWeight {
                return weight = oldValue
            }
        }
    }
    
    init(name: String, surName: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.surName = surName
        self.age = age
        self.height = height
        self.weight = weight
        
        count += 1
    }
    
    class var maxAge: Int {110}
    class var minAge: Int {0}
    class var maxHeight: Double {211.2}
    class var minHeight: Double {60.1}
    class var maxWeight: Double {222.2}
    class var minWeight: Double {33.0}
}

let Human1 = Human(name: "Simon", surName: "Squerell", age: 43, height: 201, weight: 73)
let Human2 = Human(name: "Sam", surName: "Fisher", age: 29, height: 177, weight: 62)
var Human3 = Human(name: "Tasha", surName: "Kas", age: 13, height: 134, weight: 43.3)

print(Human3.age)
Human3.age = 111
print(Human3.age)

print("\(count) people here")
