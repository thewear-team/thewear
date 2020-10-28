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
    
    var notificationCenter : UNUserNotificationCenter?
    
    static let shared = NotificationService()
    
    func checkPermission(completion : @escaping ()->()){
        notificationCenter?.getNotificationSettings(completionHandler: {
            settings in
            if settings.authorizationStatus == .authorized {
                notificationEnabled = SettingsSaver.enabled
            } else{
                notificationEnabled = SettingsSaver.disabled
            }
            completion()
        })
        
    }
    func configureNotifications(){
        notificationCenter = UNUserNotificationCenter.current()
        let options: UNAuthorizationOptions = [.alert, .sound]
        notificationCenter!.requestAuthorization(options: options) { (granted, error) in
            if !granted {
                print("notifications not allowed")
                notificationEnabled = SettingsSaver.disabled
            }else if granted {
                notificationEnabled = SettingsSaver.enabled
            }
        }
    }
    
    func createnoticreateNotificationAt(hour : Int,day : Int, month : Int, year : Int, city : String, text : String){
        let content = UNMutableNotificationContent()
        content.sound = UNNotificationSound.default
        
        var dateComponents = DateComponents()
        dateComponents.hour = hour
        dateComponents.minute = 00
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        content.body = text
        
        content.title = (city != "") ? NSLocalizedString("Weather in", comment: "") + " \(city)" : NSLocalizedString("Weather forecast", comment: "")

        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        notificationCenter!.add(request)
    }
    
    
   
    
    func performAllNotificationTasks(){
        NotificationService.shared.configureNotifications()
        NotificationService.shared.notificationCenter?.removeAllDeliveredNotifications()
        NotificationService.shared.notificationCenter?.removeAllPendingNotificationRequests()
        let components = NotificationService.shared.prepareDate(hour: hourOfPush)
        NotificationService.shared.createnoticreateNotificationAt(hour: hourOfPush, day: components.0, month: components.1, year: components.2, city: lastLocation, text: NotificationService.shared.genereatePush(hour: hourOfPush) ?? "")
    }
}


