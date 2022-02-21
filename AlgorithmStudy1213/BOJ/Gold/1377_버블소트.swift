//
//  1377_버블소트.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/21.
//
import Foundation
//https://www.acmicpc.net/problem/1377
//MARK: 문제
//var changed: Bool = false
//
//for i in stride(from: 1, through: N + 1, by: 1) {
//    changed = false
//    for j in stride(from: 1, through: N - i, by: 1) {
//        if A[j] > A[j+1] {
//            changed = true
//            A.swapAt(j, j+1)
//        }
//    }
//    if changed == false {
//        print(i) // 버블정렬이 i가 몇번 돌 때 완성됐는지 출력하는 코드이다.
//        break
//    }
//}

//[https://scarlettb.tistory.com/114] 참고
class Solution {
    struct Point {
        var index: Int
        var num: Int
    }
    
    init() {
        sol()
    }
    
    func sol() {
        let N = Int(readLine()!)!
        var pointArr = [Point]()
        for i in 0..<N {
            let num = Int(readLine()!)!
            
            let point = Point(index: i, num: num)
            pointArr.append(point)
        }
        
        let saver = pointArr
        let sortedArr = pointArr.sorted(by: { $0.num < $1.num })
        
        var max = Int.min
        for i in 0..<saver.count {
            let diff = sortedArr[i].index - saver[i].index
            if max < diff {
                max = diff
            }
        }
        print(max + 1)
    }
}

Solution()
