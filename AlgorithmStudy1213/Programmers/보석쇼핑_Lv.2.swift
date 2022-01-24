//
//  보석쇼핑_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/22.
//
import Foundation

//func solution(_ gems:[String]) -> [Int] {
//
//    var compare = Set(gems)
//    var ansArr: [String] = []
//    var indexSave: [Int] = []
//    var minIndex = 100001
//    var maxIndex = 0
//    var min = 100001
//
//    for i in 0..<gems.count {
//        ansArr.append(gems[i])
//        indexSave.append(i)
//        var temp = Set(ansArr)
//        while compare == temp {
//            if min > ansArr.count || minIndex > indexSave.first! {
//                min = ansArr.count
//                minIndex = indexSave.first!
//                maxIndex = indexSave.last!
//            }
//            ansArr.removeFirst()
//            indexSave.removeFirst()
//            temp = Set(ansArr)
//        }
//    }
//
//    return [minIndex + 1, maxIndex + 1]
//}
func solution(_ gems:[String]) -> [Int] {
    
    var compare = Set(gems)
    var ansArr: [String] = []
    var indexSave: [Int] = []
    var setu: Set<String> = []
    
    var minIndex = 100001
    var maxIndex = 0
    var min = 100001
    
    var j = 0
    for i in 0..<gems.count {
        ansArr.append(gems[i])
        setu.insert(gems[i])
        while compare.count == setu.count {
            if min > ansArr.count || minIndex > j {
                min = ansArr.count
                minIndex = j
                maxIndex = i
            }
            ansArr.removeFirst()
            setu.remove(gems[j])
            j += 1
        }
    }
    
    return [minIndex + 1, maxIndex + 1]
}

print(solution(["A", "B", "B", "B", "B", "B", "B", "C", "B", "A"]))
