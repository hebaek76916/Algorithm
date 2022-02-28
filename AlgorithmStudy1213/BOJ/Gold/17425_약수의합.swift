//
//  17427_약수의합2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/27.
//

import Foundation
//17425 약수의 합 - [ fail ] 시간 초과
class Solution {
    
    var ans = Array(repeating: 0, count: 1000001)
    let max = 1000000
    
    init() {
        sol()
        
        //print(Int.max)
    }
    
    func sol() {
        guard let tc = Int(readLine()!) else { return }
        var numbers = [Int]()
        for _ in 0..<tc {
            let num = Int(readLine()!)!
            numbers.append(num)
        }
        
        numbers.forEach{ num in
            var sum = 0
            for i in 1..<num + 1 {
                sum += (num / i) * i
            }
            print(sum)
        }

    }
    
}

Solution()
