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

extension String {
    func split() -> [Substring] {
        stride(from: 0, to: count, by: count / 2)
            .map { self[self.index(self.startIndex, offsetBy: $0) ..< self.index(self.startIndex, offsetBy: min($0 + count / 2, self.count))] }
    }
}

func getDuplicates(data: String) {
    let rows = data.split(separator: "\n")
        .map({ String($0).split() })
}

getDuplicates(data: sampleData)
