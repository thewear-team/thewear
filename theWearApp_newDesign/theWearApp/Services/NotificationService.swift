////
//  LocalNotifications.swift
//  theWearApplication
//
//  Created by Валентина on 20/05/2019.
//  Copyright © 2019 Selezneva Valentina. All rights reserved.
//

import Foundation
import UserNotifications


class NotificationService {
    let dayChangedName = Notification.Name("dayChanged")
    let afterInactive = Notification.Name("afterInactive")
    var hourOfPush = 22
    var minuteOfPush = 00
    var notificationCenter : UNUserNotificationCenter?
    
    static let shared = NotificationService()
    
    func configureNotifications(){
        notificationCenter = UNUserNotificationCenter.current()
        let options: UNAuthorizationOptions = [.alert, .sound]
        notificationCenter!.requestAuthorization(options: options) { (granted, error) in
            if !granted {
                print("Something went wrong")
            }
        }
    }
    
    func createnoticreateNotificationAtTime(hour : Int, minute : Int, city : String, text : String){
        let content = UNMutableNotificationContent()
        content.sound = UNNotificationSound.default
        
        var dateComponents = DateComponents()
        dateComponents.hour = hour
        dateComponents.minute = minute
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        content.body = text
        
        content.title = "Weather in \(city)"
        
        print(content.body)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        notificationCenter!.add(request)
    }
    
    
    func genereatePush(hour: Int)->String?{
        var text = ""
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
                if currentHour <= hour{ //today
                    let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                    let currentDay = data[0]
                    let parts = currentDay.split(separator: "/")
                    let dataComponents = parts[0].split(separator: "-")
                    dateString =  getDateString(month: String(dataComponents[1]), day: String(dataComponents[2]))
                    let partsOfDay = parts[1].split(separator: ",")
                    let details = parts[2].split(separator: ",")
                    status = Status.allStatuses[String(partsOfDay[5])]!.0
                    status = status.lowercased()
                    wind = String(details[0])
                    uv = String(details[5])
                    tempForMessage = String(partsOfDay[3])
                    tempForClothes = String(partsOfDay[4])}
                else{//tomorrow
                    let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                    let currentDay = data[1]
                    let parts = currentDay.split(separator: "/")
                    let dataComponents = parts[0].split(separator: "-")
                    dateString =  getDateString(month: String(dataComponents[1]), day: String(dataComponents[2]))
                    let partsOfDay = parts[1].split(separator: ",")
                    let details = parts[2].split(separator: ",")
                    status = Status.allStatuses[String(partsOfDay[5])]!.0
                    status = status.lowercased()
                    wind = String(details[0])
                    uv = String(details[5])
                    tempForMessage = String(partsOfDay[3])
                    tempForClothes = String(partsOfDay[4])
                }
            //        return ""
            case 12...24:
                if currentHour <= hour{//tomorrow
                    let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                    let currentDay = data[1]
                    let parts = currentDay.split(separator: "/")
                    let dataComponents = parts[0].split(separator: "-")
                    dateString =  getDateString(month: String(dataComponents[1]), day: String(dataComponents[2]))
                    let partsOfDay = parts[1].split(separator: ",")
                    let details = parts[2].split(separator: ",")
                    status = Status.allStatuses[String(partsOfDay[5])]!.0
                    status = status.lowercased()
                    wind = String(details[0])
                    uv = String(details[5])
                    tempForMessage = String(partsOfDay[3])
                    tempForClothes = String(partsOfDay[4])
                }
                else{//after tomorrow
                    let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                    let currentDay = data[2]
                    let parts = currentDay.split(separator: "/")
                    let dataComponents = parts[0].split(separator: "-")
                    dateString =  getDateString(month: String(dataComponents[1]), day: String(dataComponents[2]))
                    let partsOfDay = parts[1].split(separator: ",")
                    let details = parts[2].split(separator: ",")
                    status = Status.allStatuses[String(partsOfDay[5])]!.0
                    status = status.lowercased()
                    wind = String(details[0])
                    uv = String(details[5])
                    tempForMessage = String(partsOfDay[3])
                    tempForClothes = String(partsOfDay[4])
                }
            default:
                print("default in generate push")
            }
            var windAlert = ""
            var UVAlert = ""
            var dot = ""
            let clothes = getClothesComment(temp: Int(tempForClothes)!)
            if Int(wind)! > 20{
                windAlert = ", mind strong wind"
            }
            if Int(uv)! > 6 {
                UVAlert = ", highh UV."
            }
            if windAlert == "" && UVAlert == "" {
                dot = "."
            }
            if status != "partly cloudy" && status != "suuny"{
                text = "\(dateString): \(status) possible, the day temperature is \(tempForMessage)ºC\(dot)\(windAlert)\(UVAlert) \(clothes)"
                return text
            }
            else {
                text = "\(dateString): \(status), the day temperature is \(tempForMessage)ºC\(dot)\(windAlert)\(UVAlert) \(clothes)"
                return text}
        }
        return nil
    }
}


