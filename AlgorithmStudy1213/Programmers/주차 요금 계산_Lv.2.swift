//
//  주차 요금 계산_Lv.2.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/01/24.
//

import Foundation

func timeGap(_ start: String,_ end: String) -> Int {
    let startTimeArr = start.split(separator: ":").compactMap { Int($0) }
    var endTimeArr = end.split(separator: ":").compactMap { Int($0) }
    
    var min = 0
    if endTimeArr[1] < startTimeArr[1] {
        min = 60 + endTimeArr[1] - startTimeArr[1]
        endTimeArr[0] -= 1
    } else {
        min = endTimeArr[1] - startTimeArr[1]
    }
    let time = endTimeArr[0] - startTimeArr[0]
    return time * 60 + min
}

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let freeTime = fees[0]
    let baseRate = fees[1]
    let unitTime = fees[2]
    let unitTimeFee = fees[3]
    
//    enum InOut: String {
//        case In = "IN"
//        case Out = "OUT"
//    }
    
    struct Record {
        let time: String
        let carNum: String
        //let inoutCheck: InOut
    }
    
    let recordsArr = records.map { (string) -> Record in
        let arr = string.split(separator: " ").compactMap { String($0) }
        return Record(time: arr[0], carNum: arr[1])//,inoutCheck: InOut(rawValue: arr[2])!)
    }.sorted{ $0.carNum < $1.carNum }
    
    var ans: [Int] = []
    let carNumSet = Array(Set(recordsArr.map{ $0.carNum })).sorted()
    for carNum in carNumSet {
        let record = recordsArr.filter { $0.carNum == carNum }
        var totalMinute = 0
        var i = 0
        if record.count % 2 == 0 {
            while i < record.count {
                totalMinute += timeGap(record[i].time, record[i+1].time)
                i += 2
            }
        } else {
            while i < record.count - 1 {
                totalMinute += timeGap(record[i].time, record[i+1].time)
                i += 2
            }
            totalMinute += timeGap(record.last!.time, "23:59")
        }
        if totalMinute <= freeTime {
            ans.append(baseRate)
        } else {
            let fee = baseRate + Int(ceil(Double(totalMinute - freeTime) / Double(unitTime))) * unitTimeFee
            ans.append(fee)
        }
    }
    
    return ans
}
