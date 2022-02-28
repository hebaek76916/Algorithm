//
//  6588_골드바흐의추측.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/23.
//
import Foundation

class Solution {
    
    init() {
        input()
    }
    
    var primes: [Bool] = Array(repeating: false, count: 1000001)
    var max: Int = -1
    var nums = [Int]()
    
    
    func input() {
        while let input = readLine() {
            if let num = Int(input),
               num != 0 {
                if max < num {
                    max = num
                }
                nums.append(num)
            } else {
                setPrime()
                sol()
                return
            }
        }
        return
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
    
    func setPrime() {
        for i in 1..<max + 1 {
            primes[i] = isPrime(i)
        }
    }
    
    func sol() {
        for num in nums {
            var flag = false
            for i in stride(from: num, through: 2, by: -1) {
                if primes[i] && primes[num - i] {
                    flag = true
                    print("\(num) = \(num - i) + \(i)")
                    break
                }
            }
            if flag == false {
                print("Goldbach's conjecture is wrong.")
            }
        }
    }
}

Solution()
