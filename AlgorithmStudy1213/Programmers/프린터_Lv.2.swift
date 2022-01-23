//
//  프린터_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/23.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var dict: [Int: Int] = [:]
    priorities.forEach { priority in
        if dict[priority] == nil {
            dict.updateValue(1, forKey: priority)
        } else {
            dict[priority]! += 1
        }
    }
    
    let keys = Array(Set(priorities)).sorted(by: >)
    
    struct Print {
        let location: Int
        let priority: Int
    }
    
    var printList = priorities.enumerated().map { (priority) -> Print in
        return Print(location: priority.offset, priority: priority.element)
    }
    
    var cnt = 0
    
    loop: for key in keys {
        if dict[key]! != 0 {
            while dict[key]! != 0 {
                if key == printList[0].priority {
                    cnt += 1
                    dict[key]! -= 1
                    if printList[0].location == location {
                        break loop
                    }
                    printList.removeFirst()
                } else {
                    let temp = printList[0]
                    printList.append(temp)
                    printList.removeFirst()
                }
            }
        }
    }

    return cnt
}
