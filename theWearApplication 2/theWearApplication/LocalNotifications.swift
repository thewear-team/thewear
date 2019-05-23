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
var hourOfNotification : Int = 19
var minuteOfNotification : Int = 56

func configureNotifications(){
    notificationCenter = UNUserNotificationCenter.current()
    let options: UNAuthorizationOptions = [.alert, .sound]
    notificationCenter!.requestAuthorization(options: options) { (granted, error) in
        if !granted {
            print("Something went wrong")
        }
    }
}
func createNotificationAtTime(){
    let content = UNMutableNotificationContent()
    content.sound = UNNotificationSound.default
    
    var dateComponents = DateComponents()
    dateComponents.hour = 19
    dateComponents.minute = 56
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
    content.body = genereatePush() ?? "Don't forget to check the forecast!"
    print(content.body)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    notificationCenter!.add(request)
}
func createNotificationForNow(){
    let content = UNMutableNotificationContent()
    content.sound = UNNotificationSound.default
    
    let date = Date()
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)
    
    var dateComponents = DateComponents()
    dateComponents.hour = hour
    dateComponents.minute = minutes
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
    content.body = generatePushForNow()
    print(content.body)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    notificationCenter!.add(request)
}

func generatePushForNow()->String{
    if UserDefaults.standard.value(forKey: "currentCondition") != nil{
        let data = UserDefaults.standard.value(forKey: "currentCondition") as! String
        let parts = data.split(separator: ",")
        let weatherCodeInfo = statuses[String(parts[2])]
        let text = "Now it's \(weatherCodeInfo!.0.lowercased()), \(parts[0]), feels like \(parts[1])"
        return text
    }
    return ""
    
}
func genereatePush()->String?{
    var text = ""
   
    switch hourOfNotification {
    default:
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
                text = "Tomorrow: \(status) possible, the average temperature is \(temp).\(windAlert) \(UVAlert) \(clothes)"}
            else {
                text = "Tomorrow: \(status), the average temperature is \(temp).\(windAlert) \(UVAlert) \(clothes)"
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
