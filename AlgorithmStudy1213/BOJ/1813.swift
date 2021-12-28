//
//  1813.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/19.
//

import Foundation

//1813
func sol(_ testCase: Int) {
    for _ in stride(from: 0, to: testCase, by: 1) {
        
        let inputArr = readLine()!.components(separatedBy: " ").compactMap{ Int($0) }.sorted()
        let max = inputArr.last!
        
        var arr: [Int] = Array(repeating: 0, count: 51)
        
        inputArr.forEach { sentence in
            arr[sentence] += 1
        }
        print(inputArr)
        print(arr)
        var answer = -1
        for i in stride(from: max, to: -1, by: -1) {
            if i == arr[i]  {
                answer = i
                print(answer)
                return
            }
        }
        print(answer)
        return
    }
}

if let tc = readLine() {
    if let testCase = Int(tc) {
        sol(testCase)
    }
}
