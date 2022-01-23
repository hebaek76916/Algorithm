//
//  신고결과받기_Lv.1.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/23.
//
// dictionary 로 firstIndex 찾으면 된다.
// firstIndex : O(n)
// dictionary : O(1)
import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var dict: [String: [String]] = [:]
    var arr: [Int] = Array(repeating: 0, count: id_list.count)
    var ids: [String: Int] = [:]
    
    for (index, id) in id_list.enumerated() {
        ids[id] = index
    }
    
    for repo in report {
        let arr = repo.split(separator: " ").compactMap { String($0) }
        let name = arr[1]
        let singo = arr[0]
        if dict[name] == nil {
            dict.updateValue([singo], forKey: name)
        } else {
            if !dict[name]!.contains(singo) {
                dict[name]!.append(singo)
            }
        }
    }

    for name in dict.keys {
        if dict[name]!.count >= k {
            for n in dict[name]! {
                arr[ids[n]!] += 1
            }
        }
    }
    
    return arr

}
