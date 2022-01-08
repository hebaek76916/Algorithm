//
//  11650.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/08.
//

import Foundation

func sol() {
    struct Point {
        let x: Int
        let y: Int
    }
    
    var a: [Point] = []
    
    if let input = readLine() {
        if var num = Int(input) {
            while num > 0 {
                let rawPoint = readLine()!.components(separatedBy: " ").compactMap{ Int($0) }
                let point = Point(x: rawPoint[0], y: rawPoint[1])
                a.append(point)
                num -= 1
            }
        }
    }
    
    a.sort{ ($0.x, $0.y) < ($1.x, $1.y) } // 핵심...
    
    a.forEach{
        print("\($0.x) \($0.y)")
    }
}

sol()
