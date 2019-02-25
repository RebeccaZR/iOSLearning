//
//  CorrectTheTimeString.swift
//  CodeWar
//
//  Created by Rebecca Zhang on 2019/2/26.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

class CorrectTheTimeString {
    static func correct(_ timeString: String?) -> String? {
//        Solution 2
        guard let time = timeString, time.isEmpty == false
            else { return timeString }
        
        let numbers = time.components(separatedBy: ":").flatMap({Int($0)})
        guard numbers.count == 3
            else { return nil }
        
        let timestamp = numbers[2] + numbers[1] * 60 + numbers[0] * 3600
        let hours = (timestamp / 3600) % 24
        let minutes = (timestamp / 60) % 60
        let seconds = timestamp % 60
        return "\(String(format: "%02d", hours)):\(String(format: "%02d",minutes)):\(String(format: "%02d",seconds))"
        
//        Solution 1
//        if timeString == nil {
//            return nil
//        }
//
//        if timeString == "" {
//            return ""
//        }
//
//        let array = timeString!.split(separator: ":")
//        if array.count != 3 {
//            return nil
//        }
//
//        var hour = Int(array[0]) ?? nil
//        var minute = Int(array[1]) ?? nil
//        var second = Int(array[2]) ?? nil
//        var addMinute = 0
//        var addHour = 0
//
//        if second == nil {
//            return nil
//        } else if second! >= 60 {
//            addMinute = second! / 60
//            second! %= 60
//        }
//        if minute == nil {
//            return nil
//        } else {
//            let totalMinute = minute! + addMinute
//            if totalMinute >= 60 {
//                addHour = totalMinute / 60
//                minute = totalMinute % 60
//            } else {
//                minute = totalMinute
//            }
//
//        }
//        if hour == nil {
//            return nil
//        } else {
//            let totalHour = hour! + addHour
//            if totalHour >= 24 {
//                hour = totalHour % 24
//            } else {
//                hour = totalHour
//            }
//        }
//
//        return (hour! < 10 ? "0\(hour!)" : "\(hour!)") + ":" + (minute! < 10 ? "0\(minute!)" : "\(minute!)") + ":" + (second! < 10 ? "0\(second!)" : "\(second!)")
    }
}
