//
//  가장 큰 수_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/20.
//

import Foundation

let arr = [3, 30, 300, 5, 34, 9]//[6, 10, 2]
var len: [Int] = []
var a: [String] = []
//let a = arr.map{ num in
//    return Array(repeating: String(num), count: 4).joined().prefix(4)
//}.sorted()
func solution_1(_ numbers: [Int]) -> String {
    let sortedNumbers = numbers.sorted {
        print("\($0)", "\($1)")
        return Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }

    let answer = sortedNumbers.map { String($0) }.reduce("") { $0 + $1 }
    return sortedNumbers.first == 0 ? "0" : answer
}

solution_1(arr)
func solution(_ numbers:[Int]) -> String {

    var temp = numbers.map{ String($0) }.sorted()
    var ans = ""
    
    for j in 0..<temp.count - 1 {
        for i in 0..<j {
            if temp[i].first == temp[i + 1].first {
                var t = temp[i]
                while temp[i + 1].count > t.count {
                    t.append(contentsOf: "0")
                }
        
                if Int(temp[i + 1])! == Int(t)! {
                    let dummy = temp[i + 1]
                    temp[i + 1] = temp[i]
                    temp[i] = dummy
                }
            }
        }
    }
    
    print(temp)
    print(String(Int(temp.reversed().joined(separator: ""))!))
    return String(Int(temp.reversed().joined(separator: ""))!)
}

solution(arr)


func ㅇ(_ numbers:[Int]) -> String {

    var temp = numbers.map{ String($0) }.sorted()
    var ans = ""
    
    for j in 0..<temp.count {
        for i in 0..<temp.count - 1 {
            if temp[i].count != temp[i + 1].count && temp[i].first == temp[i + 1].first {
                var t = temp[i]
                
                while temp[i + 1].count > t.count {
                    t.append(contentsOf: "0")
                }
        
                if Int(temp[i + 1])! == Int(t)! {
                    let dummy = temp[i + 1]
                    temp[i + 1] = temp[i]
                    temp[i] = dummy
                }
            }
        }
    }

    temp.reversed().forEach { num in
        if ans == "" || ans == "0" {
            ans = num
        } else {
            ans += num
        }
    }
    //print(ans)
    return ans
}
