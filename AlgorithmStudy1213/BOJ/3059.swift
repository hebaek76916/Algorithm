//
//  3059.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/18.
//

import Foundation

func sol(testCase: Int) {

    for _ in 0..<testCase {
        if let input = readLine() {
            var total = 65 * 26 + (25 * 26) / 2
            var flag: [Bool] = Array(repeating: false, count: 26)
            
            let arr = input.map { Character(String($0)) }
            arr.forEach { char in
                guard let charAsciiVal = char.asciiValue else { return }
                let index = Int(charAsciiVal) - 65
                if flag[ index ] == false {
                    flag[ index ] = true
                }
            }
            for i in 0..<flag.count {
                if flag[i] == true {
                    total -= (65 + i)
                }
            }
            print(total)
        }
    }
    return
}

if let testCase = readLine() {
    if let tc = Int(testCase) {
        sol(testCase: tc)
    }
}

