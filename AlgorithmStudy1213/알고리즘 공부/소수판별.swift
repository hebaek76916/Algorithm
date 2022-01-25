//
//  소수판별.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/25.
//

import Foundation

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

print(isPrime(433))
