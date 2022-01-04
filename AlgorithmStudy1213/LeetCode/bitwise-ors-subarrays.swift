//
//  bitwise-ors-subarrays.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/29.
//

import Foundation
//https://leetcode.com/problems/bitwise-ors-of-subarrays/

func sol(_ arr: [Int]) -> Int {
    
    for i in 0..<arr.count {
        var set = Set<Int>()
        
    }
    
    return 0
}

let arr = [0]


//func sol(_ arr: [Int]) -> Int {
//    if arr.count == 1 {
//        return 1
//    }
//
//    var subSet: [[Int]] = [[]]
//    var tempSaver: [Int: Int] = [:]
//
//    for i in 0..<arr.count {
//        for j in 0..<subSet.count {
//            subSet.append(subSet[j] + [arr[i]])
//        }
//    }
//
//    var set = Set<Int>()
//
//    subSet.forEach { sub in
//        var base = 0
//        print(sub)
//        sub.forEach { num in
//            print(num)
//            base |= num
//        }
//        set.insert(base)
//        print("BASE\(base)")
//    }
//    print(set)
//    return set.count - 1
//}
