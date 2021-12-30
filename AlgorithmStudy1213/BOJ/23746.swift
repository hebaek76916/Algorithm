//
//  23746.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/30.
//

import Foundation
// 23746
var dict: [String: String] = [:]

func sol(_ num : Int) {
    
    for _ in 0..<num {
        if let string = readLine() {
            let arr = string.components(separatedBy: " ")
            dict[arr[1]] = arr[0]
        }
    }
    var uncompressedString = ""
    if let compressedString = readLine() {
        let arr = compressedString.map{ String($0) }
        arr.forEach {
            if let pattern = dict[$0] {
                uncompressedString += pattern
            }
        }
    }
    
    if let rangeString = readLine() {
        let rangeArr = rangeString.components(separatedBy: " ").compactMap{ Int($0) }
        let start = uncompressedString.index(uncompressedString.startIndex, offsetBy: rangeArr[0] - 1)
        let end = uncompressedString.index(uncompressedString.startIndex, offsetBy: rangeArr[1] - 1)
        print(uncompressedString[start...end])
        
    }
    
}

if let input = readLine() {
    sol(Int(input)!)
}

