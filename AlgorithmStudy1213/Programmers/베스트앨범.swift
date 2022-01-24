//
//  베스트앨범.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/24.
//

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    struct Track {
        let index: Int
        let cnt: Int
    }
    
    if genres.count == plays.count {

        var dict: [String: Int] = [:]
        var ans: [Int] = []
        for i in 0..<genres.count {
            if var t = dict[genres[i]] {
                t += plays[i]
                dict[genres[i]] = t
            } else {
                dict[genres[i]] = plays[i]
            }
        }
        print(dict)
        dict.sorted { $0.1 > $1.1 }.forEach { (key, value) in
            var twoLimit = 2
            let arr = genres.enumerated()
                .filter{ $0.element == key }
                .map { plays[$0.offset] }
                .sorted(by: >)
            print(arr)
            for i in 0..<arr.count {
                if twoLimit > 0 {
                    var dummy: [Int] = []
                    for j in plays.enumerated() {
                        if arr[i] == plays[j.offset] {
                            dummy.append(j.offset)
                        }
                        if dummy.count >= 2 {
                            break
                        }
                    }
                    
                    if dummy.count > 1 {
                        dummy = dummy.sorted()
                        ans.append(contentsOf: dummy[dummy.startIndex...dummy.index(dummy.startIndex, offsetBy: 1)])
                        twoLimit = 0
                    } else {
                        ans.append(contentsOf: dummy)
                        twoLimit -= 1
                    }
        
                }

            }

        }
        return ans
    }

    
    return []
}
