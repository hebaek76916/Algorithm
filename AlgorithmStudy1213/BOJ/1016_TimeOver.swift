//
//  1016_TimeOver.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/09.
//

import Foundation

func sol() {
    let input = readLine()!.components(separatedBy: " ").map { UInt64($0)! }
    
    let min = input[0]
    let max = input[1]
    
    let total = Int(max - min) + 1
    var ans = total
    
    var arr = Array(repeating: false, count: total)
    for i in UInt(ceil(sqrt(Double(min))))...UInt(sqrt(Double(max))) {
        var divider: Double = Double(i) * Double(i)
        var index = divider
        while index <= Double(max) {
            let idx = Int(index - Double(min))
            if idx < 0 {
                index += divider
                continue
            } else {
                if arr[idx] == false {
                    arr[idx] = true
                    ans -= 1
                }
            }
            index += divider
        }
    }
    print(ans)
}

sol()

//tq..
var primeArr = Array(repeating: true, count: 1000001)
var primes: [Int] = []
func prime(max: Int) {
    for start in 2..<max + 1 {
        if primeArr[start] == true {
            for i in 2...  {
                let idx = i * start
                if idx > max {
                    break
                } else {
                    if primeArr[idx] == true {
                        primeArr[idx] = false
                    }
                }
            }
        }
    }
    primes = primeArr.enumerated().filter{ $0.offset < max + 1 }.filter{ $0.element == true }.map { $0.offset}
    print(primes)
}

func sol() {
    let input = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
    
    let min = input[0]
    let max = input[1]
    
    prime(max: Int(sqrt(Double(max))))
    let total = Int(max - min) + 1
    var ans = total
    
    for prime in primes {
        if prime == 0 || prime == 1 {
            continue
        }
        let divider = prime * prime
        for i in min..<max + 1 {
            if i % divider == 0 {
                ans -= 1
            }
        }
    }
    print(ans)
}

//sol()
func clone() {
    let input = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
    
    let min = input[0]
    let max = input[1]
    
    let total = Int(max - min) + 1
    var ans = total
    var arr = Array(repeating: false, count: total)
    var i = 2
    while i * i <= max {
        let sq = i * i
        
        var remain = min % sq == 0 ? 0 : 1
        var j = min / sq + 1
        while sq * j <= max {
            let idx = sq * j - min
            if arr[idx] == false {
                arr[idx] = true
                ans -= 1
            }
            j += 1
        }
        i += 1
    }
    print(ans)
}
