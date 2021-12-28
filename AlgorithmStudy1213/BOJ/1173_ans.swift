//
//  1173_Ans.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/21.
//

import Foundation
// NOTE - FAIL : Too complicated
struct Index {
    let idx: Int
    var right: Int?
    var left: Int?
    
    init(idx: Int) {
        self.idx = idx
    }
    
    mutating func excercise(_ excercise: Int) {
        if right != nil {
            right = idx + excercise
        }// else?
    }
    
    mutating func rest(_ rest: Int) {
        if left != nil {
            left = idx - rest
        }
    }
    
    mutating func set(_ rest: Int, _ excercise: Int) {
        self.right = idx + excercise
        self.left = idx - rest
    }
}
struct Idx {
    var right: Int?
    var left: Int?
}
var t = false
var count = 0
func teemp(index: Int) {
    count += 1; print(count)

    print("🪀\(index)")
    
    if index == max {
        print("BYE\(index)")
        if t == false {
            t = true
        
        } else {
            print("🥏\(index)")
            return
        }
    }
    
    
    if index <= max && index + excercise <= max {
        if dict[index + excercise] != nil {
            return
        }
        
        let idx = index + excercise
        dict[idx] = Idx(right: idx + excercise, left: idx - rest)
        teemp(index: idx)
        
    } else { return }
    
    if min <= index && min <= index - rest {
        if dict[index - rest] == nil {
            return
        }
        let idx = index - rest
        dict[idx] = Idx(right: idx + excercise, left: idx - rest)
        teemp(index: idx)
    } else { return }
    
}

var dict: [Int: Idx] = [:]
var array: [Index] = []
var min: Int = 0
var max: Int = 0
var excercise: Int = 0
var rest: Int = 0
if let input = readLine() {
    let values = input.components(separatedBy: " ")
    
    let minute = Int(values[0])!
    min = Int(values[1])!
    max = Int(values[2])!
    
    excercise = Int(values[3])!
    rest = Int(values[4])!
    
    let answer = max
    let start = min
    
    dict[start] = Idx(right: start + excercise, left: start - rest)
    teemp(index: start)
}

func temp(tempo: Index) {
    
    if tempo.idx == max {
        return
    }
    if tempo.idx < max {
        let e = Index(idx: tempo.idx + excercise)
        
        array.append(e)
    }
    
    if tempo.idx < min {
        
    }
}
