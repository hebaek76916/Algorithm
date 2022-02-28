//
//  20437_문자열게임2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/03/01.
//

import Foundation

class Solution {
    
    var testCase = [(W: String, K: Int)]()
    
    init() {
        input()
    }
    
    func input() {
        guard let T = Int(readLine()!) else { return }
        for _ in 0..<T {
            guard let WInput = readLine() else { return }
            guard let KInput = Int(readLine()!) else { return }
            let (W, K) = (WInput, KInput)
            self.testCase.append((W, K))
        }
        
        for testCase in self.testCase {
            print(sol(testCase.W, testCase.K))
        }
    }
    
    func sol(_ W: String, _ K: Int) -> String {
        
        var max = -1
        var min = 10000
        
        var maxLen = -1
        var minLen = 10000
        
        var dict = [String: Int]()
        var indexDict = [String: [Int]]()
        
        for (index, char) in W.enumerated() {
            dict[String(char), default: 0] += 1
            indexDict[String(char), default: []].append(index)
            if let num = dict[String(char)] {
                if num > max {
                    max = num
                }
                if num < min {
                    min = num
                }
            }
        }
        
        if max < K {
            return "-1"
        } else {
            for indexArr in indexDict.values {
                if indexArr.count < K {
                    continue
                } else {
                    //MARK: Key point!
                    //K갯수 이후부터 index 차이 계산
                    for i in (K-1)..<indexArr.count {
                        let len = indexArr[i] - indexArr[i - (K-1)] + 1

                        if len > maxLen {
                            maxLen = len
                        }
                        
                        if len < minLen {
                            minLen = len
                        }
                    }
                }
            }
            return "\(minLen) \(maxLen)"
        }
    }
}

Solution()
