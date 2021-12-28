//
//  main.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/13.
//

import Foundation
// 1157
func sol(_ input: String) -> String {
    var tempSaver: [String : Int] = [:]
    
    input.forEach { char in
        if tempSaver[String(char)] == nil {
            let cnt = input.filter({ $0.uppercased() == String(char).uppercased() }).count
            tempSaver.updateValue(cnt, forKey: char.uppercased())
        }
            
    }
    
    let maxCnt = tempSaver.values.max() ?? 0

    if tempSaver.values.filter{ ($0 == maxCnt) }.count > 1 {
        return "?"
    } else {
        if let key = tempSaver.first(where: { $0.value == maxCnt })?.key {
            return key
        }
    }
    
    return ""
}

if let input = readLine() {
    print(sol(input))
}

