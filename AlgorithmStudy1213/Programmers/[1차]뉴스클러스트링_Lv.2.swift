//
//  [1차]뉴스클러스트링.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/25.
//

import Foundation
/* 풀이
 UNION : 두 Dict Max int값 취함
 INTERSECTION : intersection set 에 저장해놓은 key들 중 두 DICT에 있는 min 값으로 취함
*/
func solution(_ str1:String, _ str2:String) -> Int {

    let temp1 = str1.map{ $0.lowercased() }
    let temp2 = str2.map{ $0.lowercased() }

    var str1Set = Set<String>()
    var str2Set = Set<String>()

    var str1Arr: [String] = []
    for i in 0..<temp1.count - 1 {
        let temp = "\(temp1[i])\(temp1[i + 1])"
        let letterCheck = temp.filter { $0.isLetter }
        if letterCheck.count == 2 {
            str1Arr.append(temp)
            str1Set.insert(temp)
        }
    }

    var str2Arr: [String] = []
    for i in 0..<temp2.count - 1 {
        let temp = "\(temp2[i])\(temp2[i + 1])"
        let letterCheck = temp.filter { $0.isLetter }
        if letterCheck.count == 2 {
            str2Arr.append(temp)
            str2Set.insert(temp)
        }
    }

    var str1Dict: [String: Int] = [:]
    var str2Dict: [String: Int] = [:]

    str1Arr.forEach {
        str1Dict[$0, default: 0] += 1
    }

    str2Arr.forEach {
        str2Dict[$0, default: 0] += 1
    }

    let unionSet = str1Set.union(str2Set)
    let intersectionSet = str1Set.intersection(str2Set)
    
    if unionSet.count == 0 {
        return 65536
    }

    var intersecCnt = 0
    for key in intersectionSet {
        intersecCnt += str1Dict[key]! > str2Dict[key]! ? str2Dict[key]! : str1Dict[key]!
    }

    var unionCnt = 0
    for key in unionSet {
        if let s1 = str1Dict[key], let s2 = str2Dict[key] {
            unionCnt += s1 > s2 ? s1 : s2
        } else if let s1 = str1Dict[key] {
            unionCnt += s1
        } else if let s2 = str2Dict[key] {
            unionCnt += s2
        }
    }

    return Int(Double(65536) * Double(intersecCnt) / Double(unionCnt))
}

