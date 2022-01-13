//
//  temp2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/12.
//

import Foundation


var dp: [Int] = []
let intMax = Int.max
func min(_ a: Int = intMax, _ b: Int = intMax, _ c: Int = intMax) -> Int {
    if a > b {
        if b > c {
            return c
        } else {
            return b
        }
    } else {
        if a < c {
            return a
        } else {
            return c
        }
    }
}

if let input = readLine() {
    let n = Int(input)!
    dp = Array(repeating: 0, count: n + 4)

    dp[1] = 0
    dp[2] = 1
    dp[3] = 1
    
    if n < 4 {
        print(dp[n])
    } else {
        for i in 2..<n + 1 {

            let twoFlag = i % 2 == 0 ? true : false
            let threeFlag = i % 3 == 0 ? true : false
            
            if twoFlag && threeFlag {
                dp[i] = min(dp[i / 3], dp[i / 2], dp[i - 1]) + 1
            } else if twoFlag == false && threeFlag == true {
                dp[i] = min(dp[i / 3], dp[i - 1]) + 1
            } else if twoFlag == true && threeFlag == false {
                dp[i] = min(dp[i / 2], dp[i - 1]) + 1
            } else {
                dp[i] = min(dp[i - 1]) + 1
            }
        }
        print(dp[n])
    }
}
