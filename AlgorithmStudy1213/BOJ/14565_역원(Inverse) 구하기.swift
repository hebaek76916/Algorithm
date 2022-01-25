//
//  14565_역원(Inverse) 구하기.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/25.
//

import Foundation

func gcd(_ p: Int, _ q: Int) -> Int {
    if q == 0 { return p }
    return gcd(q, p % q)
}

func modInverse(_ N: Int, _ a: Int) -> Int {
    var tempN = N
    var tempA = a
    
    var y = 0, x = 1

    if  a == 1 { return 0 }
    
    while tempA > 1 {
        let q = tempA / tempN
        
        var t = tempN
        
        tempN = tempA % tempN
        tempA = t
        t = y
        
        y = x - q * y
        x = t
    }
    
    if x < 0 {
        x += N
    }
    
    return x
}

func sol() {
    let input = readLine()!.split(separator: " ").compactMap{ Int(String($0)) }
    if gcd(input[0], input[1]) != 1 {
        print("\(input[0] - input[1]) -1")
    } else {
        print("\(input[0] - input[1]) \(modInverse(input[0], input[1]))")
    }
}

sol()
//32760247633 22801763489
//9958484144 12390598440
