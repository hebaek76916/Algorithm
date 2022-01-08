//
//  10991.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/08.
//

import Foundation

func sol(_ num: Int) {
    for i in 1..<(num + 1) {
        var n = num - i
        var temp = ""
        
        while n > 0 {
            temp.append(" ")
            n -= 1
        }
        
        if i == 1 {
            temp.append("*")
            print(temp)
            continue
        } else {
            let arr = Array(repeating: "*", count: i)
            temp.append(arr.joined(separator: " "))
            print(temp)
        }
    }
}

if let input = readLine() {
    if let num = Int(input) {
        sol(num)
    }
}

