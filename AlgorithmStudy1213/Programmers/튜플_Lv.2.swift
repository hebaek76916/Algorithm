//
//  튜플_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/11.
//

import Foundation

// Temp
func solution(_ s:String) -> [Int] {
    var tempInput = Array(s).compactMap { String($0) }
    tempInput.popLast()
    tempInput.removeFirst()
    let str = tempInput
    var saver = [[Int]]()
    
    var i = 0
    print(tempInput)
    while i < str.count {
        if str[i] == "{" {
            var j = i + 1
            var temp = [Int]()
            var strNum = ""
            while str[j] != "}"{
                if let num = Int(str[j]) {
                    temp.append(num)
                }
                strNum += str[j]
                j += 1
            }

            i = j
            saver.append(temp)
            continue
        }
        i += 1
    }
    print(saver)
    saver.sort{ $0.count < $1.count }
    var answer = [Int]()
    for arr in saver {
        for num in arr {
            if !answer.contains(num) {
                answer.append(num)
            } else {
                continue
            }
        }
    }
    print(answer)
    return []
}
