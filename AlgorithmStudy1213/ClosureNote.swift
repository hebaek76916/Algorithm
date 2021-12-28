//
//  ClosureNote.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/20.
//

import Foundation

func biggerOne(_ a: Int, _ b: Int) -> Int? {
    if a == b {
        return nil
    } else if a > b {
        return a
    } else {
        return b
    }
}
//1
var someClosure: (Int, Int) -> Int? = biggerOne(_:_:)

someClosure = { (left: Int, right: Int) in
    someClosure(left, right) // 호출할때 뭐가 없잖아!
} // 클로저가 캡처할 대상을 클로저를 호출하는 시점에 결정하기 때문에 에러가 납니다.

//2
someClosure = { [someClosure] (left: Int, right: Int) in
    someClosure(left, right)
} // 클로저가 캡처할 대상을 클로저를 생성하는 시점에 결정하기 때문에 정상작동
print(someClosure(2,3)!)// 이 때 결정하는거지


