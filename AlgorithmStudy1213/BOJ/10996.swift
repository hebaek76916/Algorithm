//
//  10996.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/08.
//

import Foundation

func sol(_ num: Int) {
    
    let n = num / 2
    let r = num % 2
    
    let firstStarsNum = r == 1 ? n + r : n
    var f = Array(repeating: "*", count: firstStarsNum)
    var s = Array(repeating: "*", count: n)

    let stringA = f.joined(separator: " ")
    let stringB = s.joined(separator: " ")
    
    for i in 0..<num * 2 {
        if i % 2 == 0 {
            print(stringA)
        } else {
            print(" \(stringB)")
        }
    }
}


if let input = readLine() {
    if let num = Int(input) {
        sol(num)
    }
}
