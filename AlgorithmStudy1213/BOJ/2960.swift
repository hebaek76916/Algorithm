//
//  temp3.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/12.
//

import Foundation

if let input = readLine() {
    let arr = input
        .split(separator: " ")
        .compactMap{ Int($0)! }
    let num = arr.first!
    var cnt = arr.last!
    var ans = -1
    
    var check = Array(repeating: true, count: num + 1)
    
    for i in 2..<num + 1 {
        var j = 1
        while j * i <= num && cnt > 0 {
            if check[i * j] == true {
                check[i * j] = false
                ans = i * j
                cnt -= 1
            }
            j += 1
        }
    }
    
    print(ans)
}
