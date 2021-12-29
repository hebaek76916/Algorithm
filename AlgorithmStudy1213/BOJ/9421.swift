//
//  9421.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/29.
//

import Foundation

func primeNum(_ range: Int) {
    var numSet: [Bool] = Array(repeating: false, count: range + 1)
    
    numSet.enumerated().forEach{ set in
        
        let index = set.offset
        let element = set.element
        
        if index == 1 || index == 0 {
            return
        }
        
        if element == false {
            for i in 2... {
                if index * i <= range {
                    if numSet[index * i] == false {
                        numSet[index * i] = true
                    }
                } else {
                    return
                }
            }
        }
    }
    

    var primeSet = numSet.enumerated().filter{ $0.element == false }.map{ $0.offset }
    primeSet.removeSubrange(0...1)
//    print(primeSet)
    
    
    primeSet.forEach{ num in
        var dict: [Int: Bool] = [:]
        let stringNum = String(num)
        var arr = stringNum.compactMap{ Int(String($0)) }
        
        var sum = 0
        while sum != 1 {
            arr.forEach {
                sum += ($0)*($0)
            }
            if dict[sum] == nil {
                dict[sum] = true
                arr = String(sum).compactMap{ Int(String($0)) }
                sum = 0
            } else if sum == 1 {
                print(num)
                return
            } else {
                return
            }
        }
        
    }
    

}

if let input = readLine() {
    
    primeNum(Int(input)!)
}

