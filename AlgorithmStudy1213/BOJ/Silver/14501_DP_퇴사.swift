//
//  퇴사.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/09.
//

import Foundation
//DP
var N = 0
var termArr: [Int] = []
var costArr: [Int] = []
var ans: [Int] = []
var maxArr: [Int] = []

func sol(date: Int, before: Int) {
    if date >= N || date + termArr[date] >= N {
        return
    } else {
        ans[date] = ans[before] + costArr[date]
        sol(date: date + termArr[date], before: date)
    }
}

if let input = readLine() {
    N = Int(input)!

    for _ in 0..<N {
        let save = readLine()!.components(separatedBy: " ").compactMap{ Int($0) }
        termArr.append(save[0])
        costArr.append(save[1])
    }

    for i in 0..<N {
        ans = Array(repeating: 0, count: N)
        sol(date: i, before: 0)
        print(ans)
        maxArr.append(ans.max()!)
    }

    print(maxArr.max()!)
}
