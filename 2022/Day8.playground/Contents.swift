import UIKit

var greeting = "Hello, day 8"

let sampleData =
"""
30373
25512
65332
33549
35390
"""

struct Tree {

    let top: Int
    let bottom: Int
    let left: Int
    let Right: Int
}

class Grid {

//    init() {
//
//    }

    var rows: [Tree] = []
}

func load(data: String) {

    let rows = data
        .split(separator: "/n")
        .map { String($0) }

    rows.forEach { row in
        let numbers = Array(arrayLiteral: row).map { Int($0) }

    }
}
