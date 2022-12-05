import Foundation

var greeting = "Hello, day 5"

let sampleData =
"""
    [D]
[N] [C]
[Z] [M] [P]
 1   2   3

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2
"""

let partOneData =
"""
                [V]     [C]     [M]
[V]     [J]     [N]     [H]     [V]
[R] [F] [N]     [W]     [Z]     [N]
[H] [R] [D]     [Q] [M] [L]     [B]
[B] [C] [H] [V] [R] [C] [G]     [R]
[G] [G] [F] [S] [D] [H] [B] [R] [S]
[D] [N] [S] [D] [H] [G] [J] [J] [G]
[W] [J] [L] [J] [S] [P] [F] [S] [L]
 1   2   3   4   5   6   7   8   9

move 2 from 2 to 7
move 8 from 5 to 6
move 2 from 4 to 5
move 1 from 4 to 5
move 1 from 5 to 8
move 5 from 9 to 2
move 7 from 1 to 6
move 7 from 3 to 8
move 1 from 4 to 6
move 2 from 5 to 6
move 6 from 7 to 5
move 2 from 2 to 4
move 4 from 5 to 2
move 10 from 8 to 1
move 2 from 7 to 4
move 4 from 2 to 8
move 2 from 9 to 8
move 1 from 8 to 4
move 2 from 4 to 9
move 5 from 8 to 2
move 1 from 4 to 6
move 1 from 8 to 9
move 1 from 7 to 2
move 2 from 4 to 2
move 1 from 7 to 3
move 13 from 2 to 1
move 1 from 2 to 4
move 1 from 2 to 3
move 2 from 5 to 4
move 17 from 6 to 4
move 3 from 4 to 9
move 14 from 1 to 4
move 4 from 6 to 8
move 1 from 9 to 8
move 23 from 4 to 8
move 6 from 1 to 7
move 3 from 1 to 5
move 1 from 3 to 8
move 5 from 7 to 8
move 1 from 3 to 4
move 1 from 5 to 3
move 1 from 5 to 1
move 1 from 3 to 2
move 1 from 9 to 4
move 9 from 4 to 9
move 1 from 1 to 2
move 11 from 8 to 2
move 1 from 4 to 5
move 13 from 2 to 3
move 7 from 9 to 6
move 1 from 5 to 6
move 1 from 5 to 2
move 1 from 9 to 4
move 1 from 4 to 9
move 2 from 8 to 9
move 1 from 7 to 8
move 8 from 9 to 1
move 8 from 1 to 4
move 4 from 6 to 7
move 1 from 9 to 4
move 2 from 3 to 9
move 1 from 9 to 1
move 6 from 4 to 1
move 2 from 1 to 3
move 22 from 8 to 6
move 1 from 2 to 5
move 3 from 7 to 8
move 15 from 6 to 4
move 7 from 3 to 7
move 4 from 6 to 9
move 2 from 9 to 2
move 6 from 3 to 5
move 3 from 9 to 5
move 5 from 5 to 8
move 1 from 2 to 1
move 6 from 8 to 2
move 1 from 1 to 2
move 3 from 5 to 3
move 1 from 7 to 2
move 4 from 7 to 8
move 4 from 6 to 1
move 1 from 5 to 1
move 4 from 8 to 7
move 2 from 3 to 2
move 1 from 1 to 3
move 15 from 4 to 2
move 3 from 7 to 3
move 4 from 7 to 2
move 1 from 4 to 9
move 5 from 3 to 8
move 29 from 2 to 1
move 1 from 9 to 5
move 1 from 2 to 1
move 11 from 1 to 5
move 1 from 4 to 5
move 2 from 6 to 3
move 1 from 3 to 4
move 16 from 1 to 9
move 4 from 8 to 4
move 3 from 6 to 9
move 1 from 3 to 7
move 1 from 7 to 3
move 6 from 1 to 6
move 3 from 4 to 3
move 3 from 8 to 5
move 3 from 1 to 8
move 3 from 1 to 4
move 2 from 4 to 9
move 3 from 6 to 3
move 15 from 5 to 2
move 3 from 2 to 3
move 4 from 2 to 7
move 2 from 5 to 9
move 10 from 3 to 6
move 11 from 9 to 5
move 2 from 4 to 9
move 8 from 9 to 4
move 1 from 9 to 6
move 7 from 4 to 6
move 3 from 5 to 8
move 22 from 6 to 9
move 4 from 7 to 8
move 8 from 5 to 8
move 2 from 4 to 3
move 1 from 8 to 1
move 17 from 8 to 3
move 3 from 3 to 4
move 13 from 3 to 9
move 20 from 9 to 7
move 2 from 2 to 9
move 19 from 9 to 5
move 1 from 1 to 4
move 3 from 2 to 7
move 4 from 4 to 3
move 1 from 9 to 8
move 18 from 5 to 1
move 1 from 9 to 4
move 1 from 9 to 7
move 2 from 4 to 8
move 1 from 5 to 4
move 3 from 2 to 7
move 3 from 3 to 1
move 2 from 1 to 3
move 3 from 3 to 8
move 1 from 4 to 8
move 6 from 8 to 2
move 1 from 3 to 9
move 1 from 3 to 9
move 10 from 1 to 9
move 7 from 1 to 7
move 4 from 7 to 4
move 29 from 7 to 3
move 6 from 2 to 9
move 25 from 3 to 6
move 5 from 3 to 9
move 13 from 6 to 9
move 12 from 6 to 2
move 1 from 8 to 9
move 10 from 2 to 6
move 7 from 6 to 5
move 20 from 9 to 3
move 11 from 3 to 6
move 1 from 7 to 9
move 2 from 2 to 9
move 19 from 9 to 2
move 14 from 6 to 8
move 4 from 5 to 2
move 2 from 4 to 6
move 3 from 5 to 1
move 13 from 8 to 5
move 1 from 6 to 1
move 2 from 4 to 2
move 8 from 2 to 4
move 6 from 4 to 7
move 1 from 9 to 8
move 2 from 4 to 7
move 5 from 2 to 4
move 4 from 4 to 2
move 10 from 5 to 6
move 1 from 1 to 7
move 1 from 5 to 4
move 1 from 4 to 9
move 4 from 7 to 8
move 5 from 1 to 7
move 1 from 9 to 7
move 7 from 3 to 2
move 2 from 5 to 2
move 8 from 6 to 9
move 1 from 4 to 6
move 3 from 7 to 4
move 5 from 9 to 7
move 2 from 4 to 3
move 20 from 2 to 4
move 2 from 4 to 8
move 14 from 4 to 2
move 12 from 7 to 4
move 8 from 2 to 1
move 10 from 2 to 4
move 6 from 8 to 5
move 1 from 7 to 8
move 4 from 4 to 3
move 1 from 3 to 9
move 1 from 2 to 7
move 1 from 6 to 8
move 5 from 3 to 5
move 1 from 3 to 2
move 7 from 4 to 5
move 6 from 1 to 7
move 5 from 7 to 6
move 1 from 6 to 5
move 2 from 7 to 8
move 1 from 2 to 6
move 2 from 8 to 2
move 5 from 5 to 7
move 6 from 6 to 8
move 16 from 4 to 9
move 16 from 9 to 4
move 11 from 5 to 4
move 5 from 8 to 3
move 2 from 5 to 2
move 14 from 4 to 2
move 1 from 6 to 3
move 1 from 6 to 9
move 1 from 5 to 3
move 3 from 8 to 2
move 10 from 4 to 7
move 5 from 9 to 2
move 3 from 4 to 7
move 1 from 1 to 4
move 3 from 2 to 5
move 2 from 3 to 7
move 1 from 4 to 2
move 18 from 2 to 8
move 3 from 8 to 4
move 5 from 3 to 1
move 1 from 3 to 9
move 1 from 9 to 3
move 8 from 8 to 7
move 2 from 5 to 4
move 1 from 5 to 6
move 1 from 2 to 5
move 1 from 5 to 8
move 1 from 6 to 9
move 3 from 2 to 7
move 27 from 7 to 4
move 2 from 2 to 4
move 4 from 8 to 4
move 1 from 9 to 8
move 3 from 1 to 6
move 1 from 3 to 5
move 3 from 8 to 3
move 1 from 1 to 4
move 1 from 8 to 1
move 3 from 1 to 4
move 2 from 8 to 2
move 2 from 6 to 2
move 8 from 4 to 9
move 1 from 7 to 1
move 1 from 5 to 4
move 1 from 7 to 3
move 4 from 2 to 7
move 1 from 8 to 6
move 8 from 9 to 7
move 1 from 6 to 3
move 3 from 3 to 4
move 37 from 4 to 1
move 1 from 4 to 5
move 13 from 7 to 8
move 6 from 8 to 4
move 5 from 8 to 3
move 1 from 7 to 6
move 4 from 1 to 5
move 1 from 6 to 5
move 2 from 8 to 4
move 32 from 1 to 5
move 1 from 1 to 4
move 5 from 3 to 5
move 1 from 3 to 2
move 1 from 2 to 9
move 19 from 5 to 2
move 1 from 9 to 1
move 16 from 5 to 1
move 7 from 5 to 6
move 1 from 3 to 1
move 11 from 1 to 2
move 18 from 2 to 4
move 1 from 5 to 9
move 8 from 6 to 1
move 10 from 2 to 6
move 7 from 4 to 9
move 2 from 2 to 1
move 7 from 4 to 2
move 5 from 4 to 5
move 2 from 9 to 6
move 9 from 6 to 3
move 5 from 5 to 3
move 8 from 4 to 9
move 7 from 9 to 8
move 4 from 2 to 9
move 10 from 3 to 1
move 6 from 8 to 1
move 2 from 6 to 3
move 5 from 3 to 8
move 3 from 2 to 7
move 1 from 9 to 5
move 1 from 3 to 5
move 2 from 7 to 8
move 1 from 8 to 9
move 1 from 6 to 1
move 23 from 1 to 4
move 2 from 5 to 3
move 1 from 8 to 2
move 2 from 8 to 5
move 2 from 5 to 6
move 1 from 2 to 7
move 1 from 7 to 5
move 4 from 9 to 7
move 1 from 7 to 5
move 1 from 3 to 6
move 3 from 7 to 4
move 1 from 3 to 8
move 1 from 4 to 6
move 6 from 1 to 8
move 4 from 6 to 4
move 2 from 9 to 1
move 1 from 5 to 1
move 19 from 4 to 2
move 2 from 9 to 3
move 1 from 9 to 3
move 9 from 1 to 8
move 1 from 5 to 8
move 1 from 9 to 3
move 2 from 3 to 9
move 3 from 8 to 4
move 1 from 4 to 9
move 1 from 9 to 5
move 2 from 3 to 4
move 6 from 4 to 7
move 3 from 9 to 5
move 4 from 4 to 7
move 1 from 5 to 6
move 18 from 2 to 7
move 13 from 7 to 9
move 3 from 5 to 1
move 1 from 2 to 1
move 1 from 6 to 5
move 3 from 1 to 7
move 1 from 1 to 5
move 7 from 9 to 6
move 8 from 7 to 4
move 11 from 7 to 6
move 5 from 9 to 2
move 17 from 6 to 1
move 2 from 5 to 1
move 11 from 8 to 1
move 20 from 1 to 2
move 3 from 8 to 1
move 1 from 9 to 8
move 1 from 6 to 1
move 11 from 1 to 7
move 18 from 2 to 3
move 12 from 4 to 8
move 11 from 7 to 3
move 7 from 2 to 3
move 2 from 1 to 5
move 1 from 1 to 3
move 1 from 8 to 1
move 1 from 5 to 9
move 1 from 9 to 6
move 1 from 8 to 7
move 1 from 5 to 3
move 1 from 6 to 7
move 2 from 8 to 1
move 8 from 3 to 2
move 7 from 2 to 9
move 6 from 8 to 6
move 1 from 9 to 3
move 2 from 6 to 4
move 5 from 9 to 6
move 7 from 6 to 2
move 8 from 2 to 9
move 2 from 1 to 9
move 2 from 7 to 2
move 2 from 4 to 8
move 1 from 2 to 7
move 25 from 3 to 7
move 7 from 9 to 7
move 1 from 2 to 5
move 1 from 1 to 4
move 3 from 8 to 1
move 3 from 1 to 8
move 3 from 7 to 8
move 15 from 7 to 3
move 10 from 8 to 3
move 1 from 5 to 7
move 1 from 8 to 5
move 3 from 9 to 2
move 1 from 6 to 4
move 2 from 2 to 7
move 1 from 2 to 5
move 14 from 7 to 9
move 1 from 6 to 2
move 1 from 7 to 1
move 1 from 5 to 4
move 3 from 4 to 3
move 1 from 7 to 6
move 1 from 2 to 7
move 1 from 1 to 2
move 3 from 9 to 1
move 1 from 6 to 2
move 2 from 2 to 6
move 17 from 3 to 6
move 1 from 8 to 3
move 1 from 5 to 4
move 2 from 7 to 2
move 9 from 9 to 8
move 1 from 9 to 3
move 16 from 3 to 2
move 1 from 7 to 5
move 5 from 6 to 5
move 1 from 1 to 6
move 1 from 4 to 1
move 1 from 9 to 3
move 9 from 8 to 6
move 3 from 1 to 5
move 1 from 9 to 1
move 16 from 2 to 1
move 2 from 2 to 7
move 2 from 3 to 9
move 2 from 7 to 4
move 2 from 9 to 3
move 3 from 3 to 5
move 1 from 4 to 5
move 1 from 4 to 2
move 1 from 1 to 7
move 1 from 7 to 1
move 1 from 3 to 6
move 2 from 5 to 1
move 3 from 6 to 2
move 2 from 5 to 8
move 8 from 5 to 4
move 1 from 5 to 3
move 1 from 3 to 2
move 1 from 8 to 3
move 1 from 3 to 8
move 4 from 1 to 7
move 9 from 1 to 7
move 6 from 1 to 8
move 3 from 7 to 4
move 7 from 6 to 7
move 11 from 4 to 3
move 2 from 3 to 8
move 8 from 3 to 8
move 4 from 6 to 1
move 1 from 7 to 4
move 2 from 1 to 2
move 8 from 7 to 2
move 1 from 4 to 8
move 10 from 8 to 2
move 2 from 6 to 1
move 1 from 1 to 4
move 1 from 4 to 8
move 2 from 1 to 4
move 6 from 6 to 5
move 1 from 1 to 9
move 2 from 6 to 8
move 1 from 4 to 5
move 1 from 6 to 9
move 4 from 8 to 9
move 1 from 7 to 1
move 6 from 8 to 6
move 1 from 6 to 1
move 1 from 4 to 9
move 2 from 9 to 5
move 5 from 5 to 9
move 8 from 9 to 5
move 2 from 8 to 5
move 3 from 6 to 9
move 8 from 5 to 7
move 5 from 5 to 6
move 1 from 9 to 2
move 1 from 3 to 1
move 1 from 6 to 7
move 1 from 5 to 6
move 24 from 2 to 4
move 3 from 9 to 7
move 16 from 4 to 5
move 2 from 1 to 3
move 12 from 5 to 6
move 1 from 9 to 5
move 4 from 5 to 9
move 1 from 1 to 6
move 1 from 5 to 2
move 2 from 9 to 8
move 1 from 8 to 1
move 5 from 4 to 5
move 2 from 3 to 5
move 1 from 8 to 3
move 1 from 1 to 6
move 3 from 5 to 7
move 1 from 9 to 1
move 1 from 2 to 8
"""

struct Crate {

//    init?(name: String) {
//        guard name != " " else { return nil }
//        self.name = name
//    }

    let name: String
}

struct Column {

//    init?(name: Int,
//         cratesData: String) {
//        var mutableCrateData = cratesData
//        mutableCrateData = mutableCrateData
//            .replacingOccurrences(of: "[", with: "")
//            .replacingOccurrences(of: "]", with: "")
//
//
//        let cratesToAdd = mutableCrateData
//            .split(separator: " ")
//            .map { String($0) }
//            .compactMap { Crate(name: $0) }
//        guard let cratesToAdd.count > 0 else { return nil }
//        self.name = name
//        self.crates = crates
//    }

    let name: Int
    var crates: [Crate]

    var topCrate: Crate {
        crates.first!
    }

    mutating func add(crate: Crate) {
        crates.append(crate)
    }
}

struct Storage {

    var columns: [Column]

    mutating func add(cratesData: String) {
        var mutableCrateData = cratesData
        mutableCrateData = mutableCrateData
            .replacingOccurrences(of: "[", with: " ")
            .replacingOccurrences(of: "]", with: " ")
//        print(mutableCrateData)
        let cratesToAdd = mutableCrateData
            .map { String($0) }

        var counter = 0
        let cratePositions = [1,5,9,13]
        while counter < cratesToAdd.count {
            if cratePositions.contains(counter) {
                if cratesToAdd[counter] == " " {
                    counter += 1
                    continue
                }
                if columns.first(where: { $0.name == cratePositions.firstIndex(of: counter)!+1} ) == nil {
//                    print("\(cratesToAdd[counter]), \(cratePositions.firstIndex(of: counter)!+1)")
                    let column = Column(name: cratePositions.firstIndex(of: counter)!+1, crates: [Crate(name: cratesToAdd[counter])])
                    print("Added column \(cratePositions.firstIndex(of: counter)!+1), crate \(Crate(name: cratesToAdd[counter]))")
                    columns.append(column)
                } else {
//                    print("\(cratesToAdd[counter]), \(cratePositions.firstIndex(of: counter))")
                    add(crate: Crate(name: cratesToAdd[counter]), to: cratePositions.firstIndex(of: counter)!+1)
//                    columns.first(where: { $0.name == counter+1})!.add(crate: Crate(name: cratesToAdd[counter]))
                }
            }
            counter += 1
        }
    }

    mutating func add(crate: Crate, to: Int) {
        print("Add \(crate.name) to \(to)")
        var copy = columns.first(where: { $0.name == to})!
        copy.add(crate: crate)

        let indexPath = columns.firstIndex(where: { $0.name == to })!
        columns.remove(at: indexPath)
        columns.insert(copy, at: indexPath)
    }
}



func fillColumns(data: String) -> String {
    let rows = data
        .split(separator: "\n")
        .map { String($0) }

    var currentRow = "["
    var counter = 0
    var storage = Storage(columns: [])
    while currentRow.contains("[") {
        currentRow = rows[counter]
//        print(currentRow)
        counter += 1
        if !currentRow.contains("[") { break }
        storage.add(cratesData: currentRow)
    }
    print(storage.columns.first!.crates.first!.name)
    print(storage.columns.count)
    return storage.columns.sorted(by: {$0.name < $1.name })
        .map { $0.topCrate.name }
        .joined()
}

fillColumns(data: sampleData)
// VVRHBGDW is wrong
