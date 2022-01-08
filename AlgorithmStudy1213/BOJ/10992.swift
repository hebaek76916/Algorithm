//
//  10992.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/08.
//

import Foundation

func sol(_ num: Int) {
    var n = num
    
    for i in 1..<(num + 1) {
        var row = ""
        var n = num - i
        
        while n > 0 {
            row += " "
            n -= 1
        }
        
        if i == 1 {
            row += "*"
            print(row)
            continue
        } else if i == num {
            n = i * 2 - 1
            while n > 0 {
                row += "*"
                n -= 1
            }
            print(row)
            continue
        } else {
            n = (i - 1) * 2 - 1
            row += "*"
            while n > 0 {
                row += " "
                n -= 1
            }
            row += "*"
            print(row)
            continue
        }
        
    }
    
    
}


if let input = readLine() {
    if let num = Int(input) {
        sol(num)
    }
}

