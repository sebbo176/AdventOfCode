import Foundation

var greeting = "Hello, day 3"

let sampleData =
"""
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw
"""

let lowerCase = (97...122).map({Character(UnicodeScalar($0))})
let upperCase = lowerCase.map( { Character($0.uppercased()) })
let allLetters = lowerCase + upperCase

struct Rucksack {
    var firstPart: String
    var lastPart: String

    var duplicate: Character {
        for char in firstPart {
            if let duplicate = lastPart.first(where: { $0 == char }) {
                return duplicate
            }
         }
        fatalError()
    }

    var valueOfDuplicate: Int {
        print(duplicate)
        let value = allLetters.firstIndex(of: duplicate)!
        print(value)
        return value + 1 // 1 based count
    }
}

extension String {
    func split() -> Rucksack {
        let data = stride(from: 0, to: count, by: count / 2)
            .map { self[self.index(self.startIndex, offsetBy: $0) ..< self.index(self.startIndex, offsetBy: min($0 + count / 2, self.count))] }
        return Rucksack(firstPart: String(data[0]), lastPart: String(data[1]))
    }
}

func getDuplicateValue(data: String) -> Int {
    data.split(separator: "\n")
        .map({ String($0).split().valueOfDuplicate})
        .reduce(0, +)
}

let partOne = getDuplicateValue(data: sampleData)
