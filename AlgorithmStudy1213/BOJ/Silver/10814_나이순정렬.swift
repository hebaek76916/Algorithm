//
//  10814_나이순정렬.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/21.
//
//https://www.acmicpc.net/problem/10814
import Foundation
let N = Int(readLine()!)!
struct Info {
    let order: Int //order가 핵심. 1순위 age, 2순위(이름이 같을경우) 순서대로 정렬이기때문
    let age: Int
    let name: String
}

var arr = [Info]()
for i in stride(from: 0, to: N, by: 1) {
    let input = readLine()!.split(separator: " ")
    let info = Info(order: i, age: Int(input[0])!, name: String(input[1]))
    arr.append(info)
}

arr.sorted(by: {(($0.age, $0.order) < ($1.age, $1.order))}).forEach{ info in
    print(info.age, info.name)
}
