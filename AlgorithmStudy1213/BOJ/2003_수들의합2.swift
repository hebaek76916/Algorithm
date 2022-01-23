//
//  2003_수들의합2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/23.
//

import Foundation

func sol(N: Int, num: Int) {
    let arr = readLine()!.split(separator: " ").compactMap{ Int($0) }
    var sum = 0
    var j = 0
    var cnt = 0
    for i in 0..<N {
        sum += arr[i]
        if sum == num {
            cnt += 1
        }
        while sum >= num && j < N {
            sum -= arr[j]
            j += 1
            if sum == num {
                cnt += 1
            }
        }
    }
    print(cnt)
}
if let input = readLine() {
    let arr = input.split(separator: " ").compactMap{ Int($0)! }
    sol(N: arr[0], num: arr[1])
}
