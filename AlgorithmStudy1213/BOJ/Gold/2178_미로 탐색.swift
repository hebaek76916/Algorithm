//
//  2178_미로 탐색.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/20.
//

import Foundation
https://www.acmicpc.net/problem/2178
//class Solution {
//    var grid: [[Int]] = []
//    var N: Int = 0
//    var M: Int = 0
//    var path: [Point] = []
//
//    struct Point {
//        var row: Int
//        var col: Int
//    }
//
//    init() {
//        sol()?.forEach{ point in
//            print(point.row, point.col, " -> ")
//        }
//    }
//
//    func sol() -> [Point]? {
//        if let input = readLine()?.split(separator: " "){
//            N = Int(input[0])!
//            M = Int(input[1])!
//            for _ in stride(from: 0, to: N, by: 1) {
//                let road = readLine()!.compactMap { Int(String($0)) }
//                grid.append(road)
//            }
//
//            if findPath(row: N - 1, col: M - 1, path: self.path) {
//                return self.path
//            } else { return nil }
//
//        }
//
//        return nil
//    }
//
//    func findPath(row: Int, col: Int, path: [Point]) -> Bool {
//        print("row \(row) , col \(col)")
//        if !isRange(grid: grid, row: row, col: col) || grid[row][col] == 0 { return false }
//        if isRange(grid: grid, row: row, col: col)
//            && ( (row == 0 && col == 0 )
//            || findPath(row: row, col: col - 1, path: path)
//            || findPath(row: row - 1, col: col, path: path)
//            || findPath(row: row, col: col + 1, path: path)
//            || findPath(row: row + 1, col: col, path: path)) {
//            let point = Point(row: row, col: col)
//            self.path.append(point)
//            return true
//        }
//        return false
//    }
//
//    private func isRange(grid: [[Int]], row: Int, col: Int) -> Bool {
//        return row >= 0 && row <= grid.count - 1 && col >= 0 && col <= grid[row].count - 1
//
//    }
//}
//
//Solution()
