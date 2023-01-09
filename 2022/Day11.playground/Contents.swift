import Foundation

var greeting = "Hello, Day 11"

let realData =
"""
Monkey 0:
  Starting items: 83, 88, 96, 79, 86, 88, 70
  Operation: new = old * 5
  Test: divisible by 11
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 59, 63, 98, 85, 68, 72
  Operation: new = old * 11
  Test: divisible by 5
    If true: throw to monkey 4
    If false: throw to monkey 0

Monkey 2:
  Starting items: 90, 79, 97, 52, 90, 94, 71, 70
  Operation: new = old + 2
  Test: divisible by 19
    If true: throw to monkey 5
    If false: throw to monkey 6

Monkey 3:
  Starting items: 97, 55, 62
  Operation: new = old + 5
  Test: divisible by 13
    If true: throw to monkey 2
    If false: throw to monkey 6

Monkey 4:
  Starting items: 74, 54, 94, 76
  Operation: new = old * old
  Test: divisible by 7
    If true: throw to monkey 0
    If false: throw to monkey 3

Monkey 5:
  Starting items: 58
  Operation: new = old + 4
  Test: divisible by 17
    If true: throw to monkey 7
    If false: throw to monkey 1

Monkey 6:
  Starting items: 66, 63
  Operation: new = old + 6
  Test: divisible by 2
    If true: throw to monkey 7
    If false: throw to monkey 5

Monkey 7:
  Starting items: 56, 56, 90, 96, 68
  Operation: new = old + 7
  Test: divisible by 3
    If true: throw to monkey 4
    If false: throw to monkey 1
"""

let sampleData =
"""
Monkey 0:
  Starting items: 79, 98
  Operation: new = old * 19
  Test: divisible by 23
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 54, 65, 75, 74
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 2:
  Starting items: 79, 60, 97
  Operation: new = old * old
  Test: divisible by 13
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 3:
  Starting items: 74
  Operation: new = old + 3
  Test: divisible by 17
    If true: throw to monkey 0
    If false: throw to monkey 1
"""

struct Monkey {

    let name: Int
    var startingItems: [Int]
    let operation: (Int) -> (Int)
    let Test: () -> Bool
    let TrueTestMonkey: Int
    let FalseTestMonkey: Int
}

func parse(_ data: String) {

    let rows = data
        .split(separator: "\n")
        .map { String($0) }

    var monkeys: [Monkey] = []
    for i in 0..<rows.count {
        if rows[i].starts(with: "Monkey") {
            let index = rows[i].index(rows[i].startIndex, offsetBy: 7)
            let name = Int(String(rows[i][index]))!
//            print(name)
            let startItems = rows[i+1]
                .split(separator: ":")
                .map { String($0) }
            let items = startItems.last!
                .split(separator: ",")
                .map { Int(String($0).trimmingCharacters(in: [" "]))! }

            let monkeyOp: (Int) -> (Int) = { value in
                let operationRow = rows[i + 2]
                    .split(separator: " ")

                var value = value
                let operationValue = Int(operationRow[5]) ?? value
                switch operationRow[4] {
                case "*": value *= operationValue
                case "+": value += operationValue
                default: fatalError()
                }
                print(operationRow[4])
                return value


//                let operatorIndex = operationString.index(operationString.startIndex, offsetBy: 5)
//                let operation = operationString[operatorIndex]

//                print(operation)


            }

            print(monkeyOp(3))

//            items.forEach {
//                print($0)
//            }

//            let name = Int(rows[i].index(after: rows[i].count-2))
//            let startingOperation
//            let monkey = Monkey(
//                name: name,
//                startingItems: <#T##[Int]#>,
//                operation: <#T##(Int) -> (Int)#>,
//                Test: <#T##() -> Bool#>,
//                TrueTestMonkey: <#T##Int#>,
//                FalseTestMonkey: <#T##Int#>)
        }
    }
}

parse(sampleData)

