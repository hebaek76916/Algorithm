//
//  2447.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/04.
//

import Foundation

func star(_ num: Int, _ pattern: [String]) {
    if num == 1 {
        pattern.forEach { print($0) }
        return
    }
    
    let row1: [String] = pattern.map { $0 + $0 + $0 }
    let row2: [String] = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }
    let newPattern: [String] = row1 + row2 + row1
    print("\(num)")
    newPattern.forEach {
        print($0)
    }
    print(newPattern)
    star(num / 3, newPattern)
}


star(81, ["*"])
