//
//  1110.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/26.
//

import Foundation

func sol(_ input: Int) -> Int {
    var count = 0
    var compare = input
    repeat {
        let tenDigit = compare % 10
        let oneDigit = ((compare / 10) + (compare % 10 )) % 10
        compare = 10 * tenDigit + oneDigit
        count += 1
    } while compare != input
    return count
}


if let input = readLine() {
    if let num = Int(input) {
        print(sol(num))
        
    }
}
