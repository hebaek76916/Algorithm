//
//  GCD.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/25.
//

import Foundation

//gcd(6, 15)
func gcd(_  p: Int, _ q: Int) -> Int {
    let a = p < q ? q : p
    let b = p < q ? p : q
    if b == 0 { return a }
    return gcd(a - b, b)
}
print(gcd(10, 20))


func GCD(_ p: Int, _ q: Int) -> Int {
    if q == 0 { return p }
    return GCD(q, p % q)
}
print(GCD(1024, 6))
