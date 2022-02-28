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

///////////////////////////////////
//RunTime Error
func sol2(_ start: String, _ end: String) {
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy MM dd"
    let startDate = dateFormatter.date(from: start)!
    let endDate = dateFormatter.date(from: end)!
    let startCalendar = calendar.dateComponents([.year, .month, .day], from: startDate)
    let endCalendar = calendar.dateComponents([.year, .month, .day], from: endDate)

    let d = calendar.dateComponents([.day], from: startCalendar, to: endCalendar).day
    print("D-\(d!)")
}

func input() {
    
    guard let start = readLine() else { return }
    guard let end = readLine() else { return }

    let temp1 = start.components(separatedBy: " ").compactMap { Int($0)}
    let temp2 = end.components(separatedBy: " ").compactMap { Int($0) }
    if temp1[0] + 1000 <= temp2[0] && temp1[1] <= temp2[1] && temp1[2] <= temp2[2] {
        print("gg")
    } else {
        sol2(start, end)
    }
}
input()


