//
//  1225.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/18.
//

import Foundation

func sol(_ A: String, _ B: String) {
    let arrA = A.compactMap { Int(String($0)) }
    let arrB = B.compactMap { Int(String($0)) }

    var total = 0
    
    for i in 0..<arrA.count{//arrA.count {
        let aComponent = arrA[i]
        for j in 0..<arrB.count {
            total += aComponent * arrB[j]
        }
    }
    print(total)

}


if let input = readLine() {
    let a = input.components(separatedBy: " ")
    sol(a[0], a[1])
}
