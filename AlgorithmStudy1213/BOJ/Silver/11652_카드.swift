//
//  11652_카드.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/21.
//
// 문제를 잘읽자;
import Foundation
//https://www.acmicpc.net/problem/11652
let N = Int(readLine()!)!

var dict = [Int64: Int]()
for _ in stride(from: 0, to: N, by: 1) {
    let input: Int64 = Int64(readLine()!)!
    dict[input, default: 0] += 1
}

let hasMax = dict.values.max() ?? 0
let mins = dict.filter { (key, value) -> Bool in
    return value == hasMax
}

print(mins.keys.min()!)
