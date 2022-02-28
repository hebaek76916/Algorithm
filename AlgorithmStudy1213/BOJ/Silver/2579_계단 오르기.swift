//
//  temp.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/07.
//

import Foundation
// 재귀로 풀기
var arr: [Int] = []
var max = 0
func recurrence() {
    var num = 0
    if let input = readLine() {
        num = Int(input) ?? 0
    }
    
    for _ in stride(from: 0, to: num, by: 1) {
        if let input = readLine() {
            arr.append(Int(input)!)
        }
    }
    
   sol(bools: [], cost: 0, index: 0)
    print(max)

}


func sol(bools: [Bool], cost: Int, index: Int) {
    if index < arr.count {
        if bools.filter({ $0 == true }).count == 2 {
            sol(bools: [], cost: cost + arr[index], index: index + 2)
        } else {
            var temp = bools
            temp.append(true)
            sol(bools: temp, cost: cost + arr[index], index: index + 1)
            sol(bools: bools, cost: cost + arr[index], index: index + 2)
        }
    } else {
        if max < cost {
            max = cost
        }
    }
}

recurrence()
// 다이나믹으로 풀기
func answer() {
    var arr: [Int] = []
    var num = 0
    
    if let input = readLine() {
        num = Int(input) ?? 0
    }
    
    for _ in stride(from: 0, to: num, by: 1) {
        if let input = readLine() {
            arr.append(Int(input)!)
        }
    }
    var ans: [Int] = Array(repeating: 0, count: num)
    for i in 1..<(num + 1) {
        if i == 1 {
            ans[i - 1] = arr[i - 1]
        } else if i == 2 {
            ans[1] = arr[0] + arr[1]
        } else if i == 3 {
            ans[i - 1] = arr[0] > arr[1] ? arr[0]  + arr[2] : arr[1] + arr[2]
        } else {
            if ans[i - 3] > arr[i - 2] + ans[i - 4] {
                ans[i - 1] = ans[i - 3] + arr[i - 1]
            } else {
                ans[i - 1] = arr[i - 2] + ans[i - 4] + arr[i - 1]
            }
        }
    }
    print(ans[num - 1])
}

answer()
