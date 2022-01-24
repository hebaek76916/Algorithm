//
//  실패율.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/25.
//

import Foundation
//O(N)
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var arr: [(Int, Double)] = []
    var saver = Array(repeating: 0, count: N + 2)
    
    for i in 0..<stages.count {
        saver[stages[i]] += 1
    }

    var total = stages.count
    for i in 1..<N + 1{
        arr.append((i, (Double(saver[i])/Double(total))))
        total -= saver[i]
    }
    arr.sort { $0.1 > $1.1 }
    var ans = [Int]()
    arr.forEach {
        ans.append($0.0)
    }
    
    return ans
}

// O(N^2)
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var arr: [(Int, Double)] = []
    var temp = stages
    for i in 1..<(N+1) {
        let m = Double(stages.filter { $0 >= i }.count)
        let n = Double(stages.filter { $0 == i }.count)
        arr.append((i, n/m))
    }
    arr.sort {($0.1 > $1.1)}
    var ans = [Int]()
    
    arr.forEach {
        let num = $0.0
        ans.append(num)
    }
    return ans
}
