//
//  [1차]캐시_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/10.
//

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache = [String]()
    var count = 0
    
    for cityName in cities {
        let city = cityName.lowercased()
        if cache.count < cacheSize {
            if cache.contains(city) {
                count += 1
                if let idx = cache.firstIndex(of: city) {
                    cache.remove(at: idx)
                    cache.append(city)
                }
                continue
            }
            cache.append(city)
            count += 5
        } else {
            if cache.contains(city) {
                count += 1
                if let idx = cache.firstIndex(of: city) {
                    cache.remove(at: idx)
                    cache.append(city)
                }
            } else {
                count += 5
                cache.append(city)
                cache.removeFirst()
            }
            
        }
    }
    
    return count
}
