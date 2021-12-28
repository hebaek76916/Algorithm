//
//  1308_fail.swift
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2021/12/27.
//

import Foundation

let totalYearOfDays: Int = 365
let months = [-1, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

func isLeapYear(_ year: Int) -> Bool {
    if ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)) { return true }
    else { return false }
}

func daysOfIncompleteYear(month: Int, day: Int) -> Int {
    var days = 0
    if month > 1 {
        var m: Int = 1
        while m != month {
            days += months[m]
            m += 1
        }
    }
    days += day
    return days
}

func sol(_ start: String, _ end: String) -> String {
    var restOfDays = 0
    let startDateArr = start.components(separatedBy: " ").compactMap{ Int($0) }
    var endDateArr = end.components(separatedBy: " ").compactMap{ Int($0) }
    
    if (endDateArr[0] - startDateArr[0] >= 1000) &&
        (endDateArr[1] >= startDateArr[1]) &&
        (endDateArr[2] >= startDateArr[2]) {
        return "gg"
    }
    
    var sDay = daysOfIncompleteYear(month: startDateArr[1], day: startDateArr[2])
    if sDay > 58 && isLeapYear(startDateArr[0]) {
        sDay += 1
    }
    var eDay = daysOfIncompleteYear(month: endDateArr[1], day: endDateArr[2])
    if eDay > 58 && isLeapYear(endDateArr[0]) {
        eDay += 1
    }
    
    if eDay >= sDay {
        restOfDays = eDay - sDay
    } else {
        let year = isLeapYear(endDateArr[0] - 1) ? totalYearOfDays + 1 : totalYearOfDays
        endDateArr[0] -= 1
        restOfDays = (eDay + year) - sDay
        
    }

    var sYear = startDateArr[0]
    let eYear = endDateArr[0]
    
    while sYear < eYear {
        print("\(sYear) \(eYear)")
        restOfDays += isLeapYear(sYear) ? 366 : 365
        sYear += 1
    }
    
    return "D-\(restOfDays)"
}

if let today = readLine() {
    if let end = readLine() {
        print(sol(today, end))
    }
}
//
//extension String {
//    func toDate() -> Date? { //"yyyy-MM-dd HH:mm:ss"
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd"
//        dateFormatter.timeZone = TimeZone(identifier: "UTC")
//        if let date = dateFormatter.date(from: self) { return date }
//            else { return nil }
//
//    }
//
//}
//
//extension Calendar {
//    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
//        let fromDate = startOfDay(for: from)
//        let toDate = startOfDay(for: to)
//        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
//
//        return numberOfDays.day!
//    }
//}
//
//if let today = readLine() {
//    if let end = readLine() {
//        let start = today.toDate()
//        let end = end.toDate()
//
//        let c = Calendar(identifier: .gregorian).numberOfDaysBetween(start!, and: end!)
//        if c > 365242 {
//            print("gg")
//        } else {
//            print("D-\(c)")
//        }
//
//    }
//}
//
//
//
