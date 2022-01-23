//
//  main.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/13.
//
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    struct Print {
        let location: Int
        let priority: Int
    }
    
    var printList = priorities.enumerated().map { (priority) -> Print in
        return Print(location: priority.offset, priority: priority.element)
    }
    return 0
}

let a = [1,2,3]
let d = a.contains(<#T##element: Int##Int#>)
