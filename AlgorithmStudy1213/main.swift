////
////  main.swift
////  AlgorithmStudy1213
////
////  Created by 현은백 on 2021/12/13.
////
import Foundation
protocol Serializer {
    func serialize(data: AnyObject) -> Int?
}

class RequestSerializer: Serializer {

    func serialize(data: AnyObject) -> Int? {return nil}

}

class DataManager {
    var serializer: Serializer? = RequestSerializer()
}

func isPrime(_ num: Int) -> Bool {
    if num <= 1 { return false }
    if num == 2 { return true }
    
    if num % 2 == 0 { return false }
    let sqrtn = Int(sqrt(Double(num)))
    for div in stride(from: 3, through: sqrtn, by: 2) {
        if num % div == 0 {
            return false
        }
    }
    return true
}

print(isPrime(433))
