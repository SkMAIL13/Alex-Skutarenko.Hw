import UIKit
 
//Task-3
/*
 1. Создать тюпл с тремя параметрами:
 - максимальное количество отжиманий
 - максимальное количество подтягиваний
 - максимальное количество приседаний
 Заполните его своими достижениями :)
 Распечатайте его через println()
 2. Также сделайте три отдельных вывода в консоль для каждого параметра
 При том одни значения доставайте по индексу, а другие по параметру
 3. Создайте такой же тюпл для другого человека (супруги или друга)
 с такими же параметрами, но с другими значениями
 Используйте промежуточную переменную чтобы поменять соответствующие значения
 первого тюпла на значения второго
 4. Создайте третий тюпл с теми же параметрами, но значения это разница
 между соответствующими значениями первого и второго тюплов
 Результат выведите в консоль
 */

//1

let tupleSkill = (pushups: 35, pullups: 15, situps: 25)
print(tupleSkill)

//2

print("Max pushups: \(tupleSkill.0)")
print("Max pullups: \(tupleSkill.pullups)")
print("Max situps: \(tupleSkill.2)")

//3

var friendSkill = (pushups: 37, pullups: 10, situps: 30)

var emptySkill = tupleSkill
emptySkill = friendSkill
print(emptySkill)

//4
let diffPush = tupleSkill.0 - friendSkill.0
let diffPull = tupleSkill.1 - friendSkill.1
let diffSit = tupleSkill.2 - friendSkill.2

var diffSkill = tupleSkill
diffSkill = (pushups: diffPush, pullups: diffPull, situps: diffSit)
print(diffSkill)

if tupleSkill.0 > friendSkill.0 {
    print("I'm stronger at pushups, than my friend, i do: \(diffPush) times more")
} else if tupleSkill.0 == friendSkill.0 {
    print("U are the same")
} else {
    print("Ur friend is stronger at pushups, he can do : ", friendSkill.0 - tupleSkill.0, " times more, than u")
}

if tupleSkill.1 > friendSkill.1 {
    print("I'm stronger at pullups, than my friend, i do: \(diffPull) times more")
} else if tupleSkill.1 == friendSkill.1 {
    print("U are the same")
} else {
    print("Ur friend is stronger at pullups, he can do : ", friendSkill.1 - tupleSkill.1, " times more, than u")
}

if tupleSkill.2 > friendSkill.2 {
    print("I'm stronger at situps, than my friend, i do: \(diffSit) times more")
} else if tupleSkill.2 == friendSkill.2 {
    print("U are the same")
} else {
    print("Ur friend is stronger at situps, he can do : ", friendSkill.pushups - tupleSkill.2, " times more, than u")
}
