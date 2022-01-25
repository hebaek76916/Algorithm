////
////  main.swift
////  AlgorithmStudy1213
////
////  Created by 현은백 on 2021/12/13.
////
import Foundation
////a = 11
////n = 26
////ny + 1 = a * c
////(26y + 1) / 11 = c
////(26y + 1) % 11 == 0
////(a * c) % n = 1
//
//
//func sol(N: UInt, a: UInt) -> String {
//
//    var multiplicationInverse: UInt = 1
//
//    if N % a == 0 {
//        return ""
//    } else {
//        var j: UInt = 2
//        var A: UInt = a
//        while (A * j) % N != 1 {
//            A %= N
//            print(A)
//            j += 1
//        }
//        multiplicationInverse = j
//    }
//
//    return ""
//}
//
//
//if let input = readLine() {
//    let arr = input.split(separator: " ").compactMap{ UInt($0) }
//    let ans = sol(N: arr[0], a: arr[1])
//    print(ans)
//}
////32760247633 22801763489
protocol Serializer {

    func serialize(data: AnyObject) -> Int?

}

class RequestSerializer: Serializer {

    func serialize(data: AnyObject) -> Int? {return nil}

}

class DataManager {
    var serializer: Serializer? = RequestSerializer()
}
let a = ["a", "p", "p", "l", "e"]
var dict: [String: Int] = [:]

a.forEach{ str in
    dict[str, default: 0] += 1
}

print(dict)
print("\n\n\n\n")
