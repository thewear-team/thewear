//
//  SettingsModel.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation

class SettingsModel{
    static let shared = SettingsModel()
    var tempUnit = "ºC"
    var windUnit = "km/h"
    var pressureUnit = "hPa"
    var gender = "man"
    
    func saveUnitForDetails(){
        UserDefaults.standard.set("ºC", forKey: "temperature")
        UserDefaults.standard.set("hPa", forKey: "pressure")
        UserDefaults.standard.set("km/h", forKey: "wind")
        UserDefaults.standard.set("man", forKey: "gender")
        UserDefaults.standard.set(true, forKey: "notifications")
        UserDefaults.standard.set(22, forKey: "hour")
        UserDefaults.standard.set(00, forKey: "minute")
        tempUnit = "ºC"
        pressureUnit = "hPa"
        windUnit = "km/h"
        gender = "man"
        notificationEnabled = true
        NotificationService.shared.hourOfPush = 22
        NotificationService.shared.minuteOfPush = 00
       
    }
    func retrieveSettings(){
        tempUnit = (UserDefaults.standard.value(forKey: "temperature") as? String) ?? "ºC"
        pressureUnit = (UserDefaults.standard.value(forKey: "pressure") as? String) ?? "hPa"
        windUnit = ( UserDefaults.standard.value(forKey: "wind") as? String) ?? "km/h"
        gender = (UserDefaults.standard.value(forKey: "gender") as? String) ?? "man"
        notificationEnabled = (UserDefaults.standard.value(forKey: "notifications") as? Bool) ?? false
        NotificationService.shared.hourOfPush  = (UserDefaults.standard.value(forKey: "hour") as? Int) ?? 22
        NotificationService.shared.minuteOfPush = (UserDefaults.standard.value(forKey: "minute") as? Int) ?? 00
    }
    
}
