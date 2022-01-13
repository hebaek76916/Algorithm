//
//  3대측정.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/10.
//

import Foundation

let conditions = readLine()!.components(separatedBy: " ").compactMap{ Int($0) }
let totalTeamNum = conditions[0]
let maxCondition = conditions[1]
let minCondition = conditions[2]

func sol() {
    var secondLineAns: [Int] = []
    var cnt = 0
    for _ in 0..<totalTeamNum {
        let teamInfo = readLine()!.components(separatedBy: " ").compactMap{ Int($0) }
        let total = teamInfo.reduce(0, +)
        let mins = teamInfo.filter{ $0 < minCondition }.count
        
        if total >= maxCondition && mins == 0 {
            secondLineAns += teamInfo
            cnt += 1
        }
    }
    print("\(cnt)\n\(secondLineAns.map{ String($0) }.joined(separator: " "))")
}

sol()
