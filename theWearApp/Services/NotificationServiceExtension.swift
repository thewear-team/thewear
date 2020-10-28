//
//  NotificationServiceExtention.swift
//  theWearApp
//
//  Created by Valentina Selezneva on 24.03.2020.
//  Copyright © 2020 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit

enum DayOfNotification {
    case today
    case tomorrow
    case afterTomorrow
}

extension  NotificationService {
    func prepareDate(hour : Int)->(Int, Int, Int){
        let dateComponents = NotificationService.shared.getDateOfNotification(day: NotificationService.shared.getDayOfNotification(hour: hour))
        print(dateComponents)
        guard dateComponents.0 != nil else {return (0,0,0)}
        guard dateComponents.1 != nil else {return (0,0,0)}
        guard dateComponents.2 != nil else {return (0,0,0)}
        return (dateComponents.0!, dateComponents.1!, dateComponents.2!)
    }
    
    func getDayOfNotification (hour : Int)-> DayOfNotification{
        var day = DayOfNotification.today
        let currentHour = getCurrentHours()
        if currentHour < hour{
            day = DayOfNotification.today
        } else{
            day = DayOfNotification.tomorrow
        }
        
        return day
    }
    
    func getDateOfNotification(day : DayOfNotification)-> (Int?, Int?, Int?){
        let dateCurrent = Date()
        
        let calendar = Calendar.current

        let components = calendar.dateComponents([Calendar.Component.day, Calendar.Component.month, Calendar.Component.year], from: dateCurrent)
        var dayInt = components.day
        print(dayInt)
        switch day {
        case .today:
            print("notification will be today")
        case .tomorrow:
            print("notification will be tomorrow")
            dayInt = (dayInt ?? 0) + 1
        default:
            print("notification will be after tomorrow")
            dayInt = (dayInt ?? 0) + 2
        }
        return (dayInt, components.month, components.year)
    }
    
    func genereatePush(hour: Int)->String?{
        var text = ""
        var dayOfNotification = DayOfNotification.today
        if  UserDefaults.standard.value(forKey: "daysParts") != nil{
            let currentHour = getCurrentHours()
            var wind = ""
            var uv = ""
            var tempForClothes = ""
            var tempForMessage = ""
            var dateString = ""
            var status = ""
            switch (hour){
            case 0...11:
                
                let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                var currentDay = ""
                if currentHour < hour{
                    currentDay = data[0] //values of today
                } else{
                    currentDay = data[1]//values of tomorrow
                }
                let parts = currentDay.split(separator: "/")
                dateString = NSLocalizedString("Today", comment: "")
                let partsOfDay = parts[1].split(separator: ",")
                let details = parts[2].split(separator: ",")
                status = Status.allStatuses[String(partsOfDay[5])]!.0
                wind = String(details[0])
                uv = String(details[5])
                tempForMessage = String(partsOfDay[3])
                tempForClothes = String(partsOfDay[4])
                
            case 12...24:
                let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                var currentDay = ""
                if currentHour < hour{
                    currentDay = data[1]
                }
                else{
                    currentDay = data[2]
                }
                let parts = currentDay.split(separator: "/")
                let dataComponents = parts[0].split(separator: "-")
                dateString = NSLocalizedString("Tomorrow", comment: "")
                let partsOfDay = parts[1].split(separator: ",")
                let details = parts[2].split(separator: ",")
                status = Status.allStatuses[String(partsOfDay[5])]!.0
                wind = String(details[0])
                uv = String(details[5])
                tempForMessage = String(partsOfDay[3])
                tempForClothes = String(partsOfDay[4])
                
            default:
                print("default in generate push")
            }
            var windAlert = ""
            var UVAlert = ""
            var dot = ""
            let clothes = getClothesComment(temp: Int(tempForClothes)!)
            if Int(wind)! > 20{
                windAlert = ", " +  NSLocalizedString("mind strong wind.", comment: "")
            }
            if Int(uv)! > 6 {
                UVAlert = ", " + NSLocalizedString("high UV.", comment: "")
            }
            if windAlert == "" && UVAlert == "" {
                dot = "."
            }
            
            if status != "Partly Cloudy" && status != "Sunny"{
                text = "\(dateString): " + NSLocalizedString(status, comment: "").lowercased() + ", "  + NSLocalizedString("possible, ", comment: "").lowercased()  + NSLocalizedString("the day temperature is", comment: "") + " \(tempForMessage)ºC\(dot)\(windAlert)\(UVAlert) \(clothes)"
                return text
            }
            else {
                text = "\(dateString): " + NSLocalizedString(status, comment: "").lowercased() + ", " + NSLocalizedString("the day temperature is", comment: "").lowercased() + " \(tempForMessage)ºC\(dot)\(windAlert)\(UVAlert) \(clothes)"
                return text}
        }
        return nil
    }
    
    
    func getClothesComment(temp : Int)->String{
        var clothesComment = ""
        switch(temp){
        case -60 ... -10:
            clothesComment = NSLocalizedString("Stay warm!", comment: "")
        case -10 ... 0:
            clothesComment = NSLocalizedString("Put on a scarf, gloves and a warm coat.", comment: "")
        case 0 ... 5:
            clothesComment = NSLocalizedString("Put on a coat and a scarf with gloves.", comment: "")
        case 5 ... 10:
            clothesComment = NSLocalizedString("Put on a coat.", comment: "")
        case 10 ... 15:
            clothesComment = NSLocalizedString("Put on a windbreaker.", comment: "")
        case 15 ... 22:
            clothesComment = NSLocalizedString("Put on a longsleeve.", comment: "")
        case 22 ... 30:
            clothesComment = NSLocalizedString("Put on a T-shirt.", comment: "")
        case 30 ... 600:
            clothesComment = NSLocalizedString("Put on your lightest clothes.", comment: "")
        default:
            clothesComment = ""
        }
        return clothesComment
    }
    
    
}
