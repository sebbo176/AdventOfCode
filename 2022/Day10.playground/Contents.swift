import Foundation

var greeting = "Hello, Day 10"

let realData =
"""
noop
addx 10
addx -4
addx -1
noop
noop
addx 5
addx -12
addx 17
noop
addx 1
addx 2
noop
addx 3
addx 2
noop
noop
addx 7
addx 3
noop
addx 2
noop
noop
addx 1
addx -38
addx 5
addx 2
addx 3
addx -2
addx 2
addx 5
addx 2
addx -4
addx 26
addx -19
addx 2
addx 5
addx -2
addx 7
addx -2
addx 5
addx 2
addx 4
addx -17
addx -23
addx 1
addx 5
addx 3
noop
addx 2
addx 24
addx 4
addx -23
noop
addx 5
addx -1
addx 6
noop
addx -2
noop
noop
noop
addx 7
addx 1
addx 4
noop
noop
noop
noop
addx -37
addx 5
addx 2
addx 1
noop
addx 4
addx -2
addx -4
addx 9
addx 7
noop
noop
addx 2
addx 3
addx -2
noop
addx -12
addx 17
noop
addx 3
addx 2
addx -3
addx -30
addx 3
noop
addx 2
addx 3
addx -2
addx 2
addx 5
addx 2
addx 11
addx -6
noop
addx 2
addx -19
addx 20
addx -7
addx 14
addx 8
addx -7
addx 2
addx -26
addx -7
noop
noop
addx 5
addx -2
addx 5
addx 15
addx -13
addx 5
noop
noop
addx 1
addx 4
addx 3
addx -2
addx 4
addx 1
noop
addx 2
noop
addx 3
addx 2
noop
noop
noop
noop
noop
"""

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
                if skip20 { return skip20 = false }
                print("bump counter for \(cycleCounter) with \(register) value \(cycleCounter * register)" )
                multipleCounter += cycleCounter * register
                skip20 = true
            }
        }
    }
    var multipleCounter = 0
    var skip20 = false

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

struct Sprite {

    init(center: Int) {
        self.center = center
    }

    let center: Int

    var left: Int {
        center - 1
    }

    var right: Int {
        center + 1
    }

    func positionIsInSprite(position: Int) -> Bool {
        position == center || position == left || position == right
    }
}

class Computer {

    private var register: Int = 1 {
        didSet {
            currentSprite = Sprite(center: register)
        }
    }

    private var cycleCounter: Int = 0 {
        didSet {
            if cycleCounter%numberOfPixelsPerRow == 0 {
                appendPixel()
                addNewDisplayRow()
            } else {
                appendPixel()
            }
        }
    }

    private var display: [[String]] = [[]]
    private var currentSprite: Sprite = Sprite(center: 1)
    private var currentRow = 0
    private let numberOfPixelsPerRow = 40

    func execute(operations: [Operation]) {

        operations.forEach {
            switch $0 {
            case .add(let value):
                cycle()
                register += value
                cycle()
            case .noop:
                cycle()
            }
        }
    }

    func showDisplay() {
        display.forEach {
            print($0.joined())
        }
    }

    private func cycle() {
        cycleCounter += 1
    }

    private func appendPixel() {
        let offset = numberOfPixelsPerRow * currentRow
        display[currentRow].append(currentSprite.positionIsInSprite(position: cycleCounter - offset) ? "#" : ".")
    }

    private func addNewDisplayRow() {
        display.append([])
        currentRow += 1
    }
}


func parsePart1(data: String) {

    let operations = data
        .split(separator: "\n")
        .map { String($0) }
        .map { Operation(rawValue: $0) }
    let cpu = CPU()
    cpu.execute(operations: operations)
    print("Part one: \(cpu.multipleCounter)")
}

//parsePart1(data: realData)

func parsePart2(data: String) {

    let operations = data
        .split(separator: "\n")
        .map { String($0) }
        .map { Operation(rawValue: $0) }
    let computer = Computer()
    computer.execute(operations: operations)
    computer.showDisplay()
}

parsePart2(data: realData)
