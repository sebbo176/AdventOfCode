import Foundation

var greeting = "Hello, Day 10"

let sampleData =
"""
addx 15
addx -11
addx 6
addx -3
addx 5
addx -1
addx -8
addx 13
addx 4
noop
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx -35
addx 1
addx 24
addx -19
addx 1
addx 16
addx -11
noop
noop
addx 21
addx -15
noop
noop
addx -3
addx 9
addx 1
addx -3
addx 8
addx 1
addx 5
noop
noop
noop
noop
noop
addx -36
noop
addx 1
addx 7
noop
noop
noop
addx 2
addx 6
noop
noop
noop
noop
noop
addx 1
noop
noop
addx 7
addx 1
noop
addx -13
addx 13
addx 7
noop
addx 1
addx -33
noop
noop
noop
addx 2
noop
noop
noop
addx 8
noop
addx -1
addx 2
addx 1
noop
addx 17
addx -9
addx 1
addx 1
addx -3
addx 11
noop
noop
addx 1
noop
addx 1
noop
noop
addx -13
addx -19
addx 1
addx 3
addx 26
addx -30
addx 12
addx -1
addx 3
addx 1
noop
noop
noop
addx -9
addx 18
addx 1
addx 2
noop
noop
addx 9
noop
noop
noop
addx -1
addx 2
addx -37
addx 1
addx 3
noop
addx 15
addx -21
addx 22
addx -6
addx 1
noop
addx 2
addx 1
noop
addx -10
noop
noop
addx 20
addx 1
addx 2
addx 2
addx -6
addx -11
noop
noop
noop
"""

enum Operation {

    init(rawValue: String) {
        if rawValue == "noop" {
            self = .noop
        } else {
            let addData = rawValue.split(separator: " ")
            self = .add(value: Int(addData[1])!)
        }
    }

    case add(value: Int)
    case noop

    var executionTime: Int {
        switch self {
        case .add: return 1
        case .noop: return 0
        }
    }
}

class CPU {

    var register: Int = 1
    var cycleCounter: Int = 0 {
        didSet {
            if cycleCounter%20 == 0 {

            }
        }
    }
    var multipleCounter = 0

    func execute(operations: [Operation]) {

        operations.forEach {
            switch $0 {
            case .add(let value):
                cycle()
                cycle()
                register += value
            case .noop:
                cycle()
            }
        }
    }

    func cycle() {
        cycleCounter += 1
    }
}


func parse(data: String) {

    let operations = data
        .split(separator: "\n")
        .map { String($0) }
        .map { Operation(rawValue: $0) }
}

parse(data: sampleData)

