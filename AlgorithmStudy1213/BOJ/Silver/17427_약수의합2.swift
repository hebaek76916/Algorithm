//
//  17427_약수의합2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/27.
//

import Foundation
// 17427 약수의합2
class Solution {
    init() {
        input()
    }
    
    func input() {
        guard let tc = Int(readLine()!) else { return }
        print(sol(tc))
    }
    
    func sol(_ N: Int) -> Int {
        var sum = 0
        for i in 1..<N + 1 {
            sum += (N / i) * i
        }
        
        return sum
    }
}

Solution()

/*
 sol))
    e.g) N = 12
    [ 1, 2, 3, 4, 6, 12 ]
      1  1  1  1  1   1
         2     2  2   2
            3     3   3
               4      4
                  6   6
                     12
 */
