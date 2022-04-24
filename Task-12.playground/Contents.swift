//Task-12
/*
 1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур
*/

print("-------------Task-1-------------")

enum Chessman {
    
    enum Color: String {
        case white, black
    }
    
    case king(color: Color, coord: (x: String, y:Int))
    case queen(color: Color, coord: (x: String, y: Int))
    case elephant(color: Color, coord: (x: String, y: Int))
    case pawn(color: Color, coord: (x: String, y: Int))
    
}

let blackKing = Chessman.king(color: .black, coord: (x: "A", y: 1))
let whiteQueen = Chessman.queen(color: .white, coord: (x: "C", y: 2))
let blackElephant = Chessman.elephant(color: .black, coord: (x: "H", y: 7))
let blackPawn = Chessman.pawn(color: .black, coord: (x: "H", y: 5))

var chessmanArray = [blackKing, whiteQueen, blackElephant, blackPawn]
var desk: [[Chessman?]] = Array(repeating: Array(repeating: nil, count: 8), count: 8)

for chessman in chessmanArray {
    switch chessman {
    case let .king(_, coord), let .queen(_, coord), let .pawn(_,coord), let .elephant(_,coord):
        switch coord {
        case let (letter, num) where letter == "A":
            desk [num - 1] [0] = chessman
        case let (letter, num) where letter == "B":
            desk [num - 1] [1] = chessman
        case let (letter, num) where letter == "C":
            desk [num - 1] [2] = chessman
        case let (letter, num) where letter == "D":
            desk [num - 1] [3] = chessman
        case let (letter, num) where letter == "E":
            desk [num - 1] [4] = chessman
        case let (letter, num) where letter == "F":
            desk [num - 1] [5] = chessman
        case let (letter, num) where letter == "G":
            desk [num - 1] [6] = chessman
        case let (letter, num) where letter == "H":
            desk [num - 1] [7] = chessman
        default:
            break
        }
    }
}

print(desk)

/*
 2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.
*/

print("-------------Task-2-------------")

enum Chessman1 {
    case figure(name: Name, color: Color, coord:(x: String, y: Int))
    
    enum Name: String {
        case King = "King"
        case Queen = "Queen"
        case Elephant = "Elephant"
        case Pawn = "Pawn"
    }
    
    enum Color: String {
        case Black = "Black", White = "White"
    }
}

let BlackKing = Chessman1.figure(name: .King, color: .Black, coord: (x: "A", y: 1))
let WhiteQueen = Chessman1.figure(name: .Queen, color: .White, coord: (x: "C", y: 2))
let BlackElephant = Chessman1.figure(name: .Elephant, color: .Black, coord: (x: "H", y: 7))
let BlackPawn = Chessman1.figure(name: .Pawn, color: .Black, coord: (x: "H", y: 5))

var chessmanArray1 = [BlackKing, WhiteQueen, BlackElephant, BlackPawn]

func printChessman(chessman: Chessman1) {
    switch chessman {
    case let .figure (name, color, coord):
        print("Figure \(name.rawValue), color: \(color.rawValue), coordinate: \(coord.x): \(coord.y)")
    }
}

for figure in chessmanArray1 {
    printChessman(chessman: figure)
}

/*
 3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
*/

print("-------------Task-3-------------")

let blackSquare = "\u{2B1B}"
let whiteSquare = "\u{2B1C}"
let kingFigureWhite = "\u{2654}"
let kingFigureBlack = "\u{265A}"
let queenFigureWhite = "\u{2655}"
let queenFigureBlack = "\u{265B}"
let elephantFigureWhite = "\u{2657}"
let elephantFigureBlack = "\u{265D}"
let pawnFigureWhite = "\u{2659}"
let pawnFigureBlack = "\u{265F}"


func printDesk(desk: [[Chessman1?]]) {
    func printChess(сolor: Chessman1.Color, blackColor: String, whiteColor: String) {
        if color == .white {
            print(whiteColor)
        } else {
            print(blackColor)
        }
    }
    
    for row in stride(from: desk.count - 1, through: 0, by: -1) {
        print(row + 1)
        for column in 0..<desk[row].count {
            
            if let chessman = desk[row][column] {
                switch chessman {
                case .figure(.King, let сolor, _):
                    printChess(сolor: сolor, blackColor: "\u{2654}", whiteColor: "\u{265A}")
                case .figure(.Queen , let color, _):
                    printChess(сolor: color, blackColor: "\u{265A}", whiteColor: "\u{2654}")
                case .figure(.Elephant , let color, _):
                    printChess(сolor: color, blackColor: "\u{265A}", whiteColor: "\u{2654}")
                case .figure(.Pawn , let color, _):
                    printChess(сolor: color, blackColor: "\u{265A}", whiteColor: "\u{2654}")
                }
            } else {
                ((row + 1) + (column + 1)) % 2 != 0 ? print("\u{25A0}") : print("\u{25A1}")
            }
        }
        print()
    }
    print("A B C D E F G H")
}

/*
 4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.

 5. Следите чтобы ваш код был красивым!
 */

