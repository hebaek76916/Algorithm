//
//  bitwise-ors-subarrays.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/29.
//

import Foundation
//https://leetcode.com/problems/bitwise-ors-of-subarrays/

class Solution {
    func subarrayBitwiseORs(_ arr: [Int]) -> Int {
        var res: [Int] = []
        var left = 0
        var right = 0
        
        for num in arr {
            right = res.count
            res.append(num)
            for i in left..<right {
                if res.last! != (res[i] | num) {
                    res.append(res[i] | num)
                }
            }
            print("\(left) \(right),res : \(res)")
            left = right
        }
        return Set(res).count
    }
}
