//
//  k진수에서 소수 개수 구하기_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/26.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let stringNum = String(n, radix: k)
    let nums = stringNum.split(separator: "0").compactMap { Int($0) }.sorted()
    
    var cnt = 0
    for num in nums {
        if isPrime(num) == true {
            cnt += 1
        }
    }
    
    return cnt
}

func isPrime(_ num: Int) -> Bool {
    if num <= 1 { return false }
    if num == 2 { return true }
    
    if num % 2 == 0 { return false }
    let sqrtn = Int(sqrt(Double(num)))
    for div in stride(from: 3, through: sqrtn, by: 2) {
        if num % div == 0 {
            return false
        }
    }
    return true
}
