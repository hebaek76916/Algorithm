//
//  10990.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/07.
//

import Foundation

func sol(_ num: Int) {
    var firstSpace = num
    for i in 1...num {
        var temp = ""
        
        firstSpace = num - i
        while firstSpace > 0 {
            temp.append(" ")
            firstSpace -= 1
        }
        
        if i != 1 {
            temp.append("*")
            var term = (i - 1) * 2 - 1
            while term > 0 {
                temp.append(" ")
                term -= 1
            }
            temp.append("*")
            print(temp)
        } else {
            temp.append("*")
            print(temp)
            continue
        }
        
    }
}


if let input = readLine() {
    if let num = Int(input) {
        sol(num)
    }
}

