//
//  temp1.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/12.
//

import Foundation

func sol(_ arr: [Int]) {
    guard let f = arr.first else { return }
    guard let s = arr.last else { return }
    let dt = arr[1] - arr[0]
    let root = Int(ceil(sqrt(Double(dt))))

    if root == 1 {
        print(1)
        return
    }
    
    let firstMetSqrRoot_0 = (root - 1) * (root - 1)
    let firstMetSqrRoot_1 = root * root
    
    let a = Double(firstMetSqrRoot_0 + firstMetSqrRoot_1) / 2
    if Double(dt) >= a {
        print(root * 2 - 1)
    } else {
        print((root-1) * 2 )
    }
    
}

if let inputN = readLine() {
    let N = Int(inputN)!
    for _ in 0..<N {
        let arr = readLine()!
        let nums = arr.split(separator: " ").map{ Int($0)! }
        print(sol(nums))
    }
}
