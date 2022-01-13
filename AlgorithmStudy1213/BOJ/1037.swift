//
//  temp.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/09.
//

import Foundation

func sol(_ num: Int) {
    let arr = readLine()!
        .components(separatedBy: " ")
        .compactMap{ Int($0) }
        .sorted()
    var num = arr.first! * arr.last!
    print(num)
}
let input = Int(readLine()!)!
sol(input)
