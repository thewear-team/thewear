//
//  LocalNotifications.swift
//  theWearApplication
//
//  Created by Валентина on 20/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import UserNotifications

var notificationCenter : UNUserNotificationCenter?
//var hourOfNotification : Int = 23
//var minuteOfNotification : Int = 14
//var secondOfNotification : Int = 0

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


//func createNotificationForNow(for city : String){
//    let content = UNMutableNotificationContent()
//    content.sound = UNNotificationSound.default
//
//    let date = Date()
//    let calendar = Calendar.current
//    let hour = calendar.component(.hour, from: date)
//    let minutes = calendar.component(.minute, from: date)
//    let seconds = calendar.component(.second, from: date)
//
//    var dateComponents = DateComponents()
//    dateComponents.hour = hour
//    dateComponents.minute = minutes
//    dateComponents.second = seconds + 10
//
//    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
//    content.body = generatePushForNow(for: city)
//    print(content.body)
//    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
//    notificationCenter!.add(request)
//}
//
//func generatePushForNow(for city : String)->String{
//    if UserDefaults.standard.value(forKey: "currentCondition") != nil{
//        let data = UserDefaults.standard.value(forKey: "currentCondition") as! String
//        let parts = data.split(separator: ",")
//        let weatherCodeInfo = statuses[String(parts[2])]
//        let text = "Now it's \(weatherCodeInfo!.0.lowercased()) in \(city), \(parts[0])ºC, feels like \(parts[1])ºC"
//        return text
//    }
//    return ""
//
//}
func genereatePush()->String?{
    var text = ""
   
    switch hourOfPush {
    case 12...23:
        if UserDefaults.standard.value(forKey: "daysParts") != nil{
            
            let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
            let currentDay = data[1]
            let parts = currentDay.split(separator: "/")
            let partsOfDay = parts[1].split(separator: ",")
            let details = parts[2].split(separator: ",")
            var status = statuses[String(partsOfDay[5])]!.0
            status = status.lowercased()
            var windAlert = ""
            if Int(details[0])! > 30 {
                windAlert = "High UV."
            }
            var UVAlert = ""
            if Int(details[5])! > 6 {
                UVAlert = "High UV."
            }
            print(status)
            let clothes = getClothesComment(temp: Int(String(partsOfDay[4]))!)
            let temp = String(partsOfDay[4])
            if status != "partly cloudy"{
                text = "Tomorrow: \(status) possible, the average temperature is \(temp)ºC.\(windAlert) \(UVAlert) \(clothes)"}
            else {
                text = "Tomorrow: \(status), the average temperature is \(temp).\(windAlert) \(UVAlert) \(clothes)"
            }
            return text
        }
    default:
        if UserDefaults.standard.value(forKey: "daysParts") != nil{
           
            let data = UserDefaults.standard.value(forKey: "daysParts") as! [String]
            let currentDay = data[0]
            let parts = currentDay.split(separator: "/")
            let partsOfDay = parts[1].split(separator: ",")
            let details = parts[2].split(separator: ",")
            var status = statuses[String(partsOfDay[5])]!.0
            status = status.lowercased()
            var windAlert = ""
            if Int(details[0])! > 30 {
                windAlert = "High UV."
            }
            var UVAlert = ""
            if Int(details[5])! > 6 {
                UVAlert = "High UV."
            }
            print(status)
            let clothes = getClothesComment(temp: Int(String(partsOfDay[4]))!)
            let temp = String(partsOfDay[4])
            if status != "partly cloudy"{
                text = "Today: \(status) possible, the average temperature is \(temp)ºC.\(windAlert) \(UVAlert) \(clothes)"}
            else {
                text = "Today: \(status), the average temperature is \(temp).\(windAlert) \(UVAlert) \(clothes)"
            }
             return text
    }
    }
   return nil
}


func getClothesComment(temp : Int)->String{
    var clothesComment = ""
    switch(temp){
    case -60 ... -10:
        clothesComment = "Stay warm!"
    case -10 ... 0:
        clothesComment = "Put on a scarf and a warm coat."
    case 0 ... 5:
        clothesComment = "Put on a coat and a scarf with gloves."
    case 5 ... 10:
        clothesComment = "Put on a coat."
    case 10 ... 15:
        clothesComment = "Put on a windbreaker."
    case 15 ... 20:
        clothesComment = "Put on a longsleeve."
    case 20 ... 30:
        clothesComment = "Put on a T-shirt."
    case 30 ... 600:
        clothesComment = "Put on your lightest clothes."
    default:
        clothesComment = ""
    }
    return clothesComment
    
}
