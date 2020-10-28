//
//  SettingsModel.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation

class SettingsModel{
    
    static var hairNumber = 0
    static var beardnumber = 0 
    static var hairColorNumber = 0
    static var skinColorNumber = 0
    static var wind = SettingsSaver.windKMPH
    static var pressure = SettingsSaver.pressureHPA
    static var temp = SettingsSaver.tempC
    static var gender = SettingsSaver.man
    
    static func saveUnitForDetails(){
        UserDefaults.standard.set(SettingsSaver.tempC, forKey: SettingsSaver.temmperatureKey)
        UserDefaults.standard.set(SettingsSaver.pressureHPA, forKey: SettingsSaver.pressureKey)
        UserDefaults.standard.set(SettingsSaver.windKMPH, forKey: SettingsSaver.windKey)
        UserDefaults.standard.set(SettingsSaver.man, forKey: SettingsSaver.genderKey)
        UserDefaults.standard.set(true, forKey: "notifications")
        UserDefaults.standard.set(18, forKey: SettingsSaver.timeKey)
        SettingsModel.temp  = SettingsSaver.tempC
        SettingsModel.pressure = SettingsSaver.pressureHPA
        SettingsModel.wind = SettingsSaver.windKMPH
        SettingsModel.gender = SettingsSaver.man
        notificationEnabled = "disabled"
        
        
    }
    
    static func retrieveSettings(){
        SettingsModel.temp = (UserDefaults.standard.value(forKey: SettingsSaver.temmperatureKey) as? String) ?? SettingsSaver.tempC
        SettingsModel.pressure = (UserDefaults.standard.value(forKey: SettingsSaver.pressureKey) as? String) ?? SettingsSaver.pressureHPA
        SettingsModel.wind = ( UserDefaults.standard.value(forKey: SettingsSaver.windKey) as? String) ?? SettingsSaver.windKMPH
        SettingsModel.gender = (UserDefaults.standard.value(forKey: SettingsSaver.genderKey) as? String) ?? SettingsSaver.man
        notificationEnabled = (UserDefaults.standard.value(forKey: "notifications") as? String) ?? SettingsSaver.disabled
        hourOfPush  = (UserDefaults.standard.value(forKey: "time") as? Int) ?? 22
        SettingsModel.hairNumber = (UserDefaults.standard.value(forKey: SettingsSaver.hairKey) as? Int) ?? 0
        SettingsModel.hairColorNumber = (UserDefaults.standard.value(forKey: SettingsSaver.hairColorKey) as? Int) ?? 2
        SettingsModel.beardnumber = (UserDefaults.standard.value(forKey: SettingsSaver.beardKey) as? Int) ?? 0
        SettingsModel.skinColorNumber = (UserDefaults.standard.value(forKey: SettingsSaver.skinColorKey) as? Int) ?? 0
        notificationEnabled = (UserDefaults.standard.value(forKey: SettingsSaver.notificationsEnabled) as? String) ?? SettingsSaver.disabled
        notificationSelected = (UserDefaults.standard.value(forKey: SettingsSaver.notificationSelected) as? Bool) ?? false
    }
    
}
