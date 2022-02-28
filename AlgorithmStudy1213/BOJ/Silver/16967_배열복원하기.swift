//
//  16967_배열복원하기.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/25.
//

import Foundation
// 16967
class Solution {
    
    var B = [[Int]]()
    
    init() {
        input()
    }
    
    func input() {
        let condition = readLine()!.split(separator: " ").map{ Int($0)! }
        for _ in 0..<condition[0] + condition[2] {
            let line = readLine()!.split(separator: " ").compactMap{ Int($0) }
            B.append(line)
        }
        sol(H: condition[0], W: condition[1], X: condition[2], Y: condition[3])
    }
    
    func sol(H: Int, W: Int, X: Int, Y: Int) {
        var A = Array(repeating: Array(repeating: 0, count: W), count: H)

        for i in 0..<H {
            for j in 0..<W {
                if (i >= X && j >= Y) {
                    A[i][j] = B[i][j] - A[i - X][j - Y];
                } else {
                    A[i][j] = B[i][j];
                }
            }
        }
        

        A.forEach{ arr in
            let str = arr.map{ String($0) }.joined(separator: " ")
            print(str)
        }
    }
}

Solution()

