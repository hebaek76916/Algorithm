//
//  11053.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/11.
//

import Foundation

let N = Int(readLine()!)!
var max = 0
func sol() {
    let arr = readLine()!
        .split(separator: " ")
        .compactMap{ Int($0) }
    print(arr)
    var dp = Array(repeating: 1, count: N)
    var temp: [Int] = []

    for i in 0..<N {
        dp[i] = 1
        var j = i - 1
        while j >= 0 {
            if arr[i] > arr[j] {
                dp[i] = dp[i] > dp[j] ? dp[i] : dp[j] + 1
            }
            j -= 1
        }

        max = dp[i] > max ? dp[i] : max
    
    }
    print(dp)
    print(dp.max()!)
}

sol()
//16
//277 730 790 994 242 185 633 545 830 557 194 994 44 28 755 661

//6
//1 5 6 2 3 4
func sol() {
    let arr = readLine()!.split(separator: " ").map{ UInt($0)! }
    
    let dt = arr[1] - arr[0]

    var n = 0
    while 1 != 0 {
        if dt <= n * (n + 1) {
            break
        }
        n += 1
    }
    
    if dt <= n * n {
        print(n * 2 - 1)
    } else {
        print(n * 2)
    }
}
