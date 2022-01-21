//
//  기능개발_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/21.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var remains: [Int] = []
    var ans: [Int] = []
    for (progress, speed) in zip(progresses, speeds) {
        if (100 - progress) % speed != 0 {
            remains.append((100 - progress) / speed + 1)
        } else {
            remains.append((100 - progress) / speed)
        }
    }
    
    var i = 0
    while i < remains.count {
        var j = i + 1
        var cnt = 1
        while j < remains.count && remains[i] > remains[j] {
            cnt += 1
            j += 1
        }
        i = j
        ans.append(cnt)
    }
    return ans
}
