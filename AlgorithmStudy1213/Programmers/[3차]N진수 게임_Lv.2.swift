//
//  [3차]N진수 게임_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/24.
//

import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    
    let totTurns = t * m
    var str = ""
    var cnt = 0
    
    while totTurns > cnt {
        str += String(cnt, radix: n, uppercase: true)
        cnt += 1
    }
    
    let array = Array(str)
    var ans = ""
    var checkCnt = t
    for i in stride(from: p - 1, to: array.count, by: m) {
        if checkCnt > 0 {
            ans += String(array[i])
            checkCnt -= 1
        } else {
            break
        }
    }

    return ans
}
