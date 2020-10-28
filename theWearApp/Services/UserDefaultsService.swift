//
//  UserDefaultsService.swift
//  theWearApp
//
//  Created by Валентина on 10.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation

class SearchSaver{
    static let citiesKey = "cities"
    
    func saveCities(cities : [String]){
        UserDefaults.standard.set(cities, forKey: SearchSaver.citiesKey)
    }
    func getPreviousCities (){ 
        cities = UserDefaults.standard.value(forKey: SearchSaver.citiesKey) as? [String] ?? []

    }
}

class SettingsSaver{
    
    static let windKey = "wind"
    static let pressureKey = "pressure"
    static let temmperatureKey = "temp"
    static let genderKey = "gender"
    static let timeKey = "time"
    
    static let notificationsEnabled = "notifications"
    static let notificationSelected = "notificationsSelection"
    static let enabled = "enabled"
    static let disabled = "disabled"
    
    static let hairKey = "hair"
    static let hairColorKey = "hairColor"
    static let skinColorKey = "skinColorKey"
    static let beardKey = "beardKey"
    
    static let man = "man"
    static let woman = "woman"
    static let windMPS = "mPs"
    static let windKMPH = "kmPh"
    static let tempC = "°C"
    static let tempF = "°F"
    static let pressureMMHG = "mmHg"
    static let pressureHPA = "hPa" 
    
    
  
    func saveNotificationPermission(enabled : String){
        UserDefaults.standard.set(enabled, forKey: SettingsSaver.notificationsEnabled)
    }
    func saveNotificationSelection(enabled : Bool){
        UserDefaults.standard.set(enabled, forKey: SettingsSaver.notificationSelected)
    }
    func saveWindUnit(wind : String){
        UserDefaults.standard.set(wind, forKey: SettingsSaver.windKey)
    }
    func savePressureUnit(pressure : String){
        UserDefaults.standard.set(pressure, forKey: SettingsSaver.pressureKey)
    }
    func saveGender(gender : String){
        UserDefaults.standard.set(gender, forKey: SettingsSaver.genderKey)
    }
    
    func saveTemperatureUnit(temp : String){
        UserDefaults.standard.set(temp, forKey: SettingsSaver.temmperatureKey)
    }
    func saveTime (time : Int){
        UserDefaults.standard.set(time, forKey: SettingsSaver.timeKey)
    }
    
    func saveHairStyle(number : Int){
        UserDefaults.standard.set(number, forKey: SettingsSaver.hairKey)
    }
    func saveSkinColor(color : Int){
         UserDefaults.standard.set(color, forKey: SettingsSaver.skinColorKey)
    }
    func saveHairColor(color : Int){
        UserDefaults.standard.set(color, forKey: SettingsSaver.hairColorKey)
    }
    func saveBeardNumber(color : Int){
        UserDefaults.standard.set(color, forKey: SettingsSaver.beardKey)
    }
}

class UserDefaultsService {
    
    static let todayHoursKey = "todayHours"
    static let daysPartsKey = "daysParts"
    static let currentConditionKey = "currentCondition"
    static var latitude = "latitude"
    static var longitude = "longitude"
    static var lastCity = "lastCity"
    static var lastlocation = "lastLocation"
    
    static let SettingSaver = SettingsSaver()
    
    static let SearchingSaver = SearchSaver()

    
    static func getPreviousData(completion : @escaping()->()){
        self.getLatLong()
        self.getPreviousTodayHours()
        self.getPreviousCurrentCondition()
        self.getPreviousDaysParts(){
            allDays in
            self.prepareArraysWithPreviousData(previousDays: allDays)
            Data.prepareFutureColorsDates(alldays: allDays)
        }
        print(self.getLastCityAndLocation())
       
        completion()
        
    }

    static func getPreviousTodayHours (){
        if (UserDefaults.standard.value(forKey: "todayHours") != nil ){
            let allhours = UserDefaults.standard.value(forKey: "todayHours") as! String
            hoursIcons = []
            hoursTemps = []
            let hours  = (allhours.split(separator: ";"))
            for hour in hours {
                let parts = hour.split(separator: " ")
                
                hoursTemps.append(String(parts[0])  )
                hoursIcons.append(String(parts[1]))
            }
        }
    }
    
    static func getPreviousDaysParts(completion : @escaping(_ previousDays : [OneWeatherDay])->()){
        if (UserDefaults.standard.value(forKey: "daysParts") != nil){
            let alldays = UserDefaults.standard.value(forKey: "daysParts") as! [String]
            allDays = []
            
            for day in alldays {
                let splitedString = day.split(separator: "/")
                let date = splitedString[0]
                let parts = splitedString[1].split(separator: ",")
                let detais = splitedString[2].split(separator: ",")
                if parts.count > 9{
                    let oneFutureDay = OneWeatherDay(date : String(date), morningtemp:  String(parts[0]), daytemp:  String(parts[3]), eveningtemp:  String(parts[6]), nighttemp:  String(parts[9]), morningfeelslike:  String(parts[1]), dayfeelslike:  String(parts[4]), eveningfeelslike:  String(parts[7]), nightfeelslike:  String(parts[10]), morningcode:  String(parts[2]), daycode:  String(parts[5]), eveningcode:  String(parts[8]), nightcode:  String(parts[11]), pressure:  String(detais[2]), humidity:  String(detais[1]), wind:  String(detais[0]), uv:  String(detais[5]), sunset:  String(detais[4]), sunrise:  String(detais[3]))
                    allDays.append(oneFutureDay)
                }
                else {
                    let oneFutureDay = OneWeatherDay(date : String(date), morningtemp:  String(parts[0]), daytemp:  String(parts[3]), eveningtemp:  String(parts[6]), morningfeelslike:  String(parts[1]), dayfeelslike:  String(parts[4]), eveningfeelslike:  String(parts[7]), morningcode:  String(parts[2]), daycode:  String(parts[5]), eveningcode:  String(parts[8]), pressure:  String(detais[2]), humidity:  String(detais[1]), wind:  String(detais[0]), uv:  String(detais[5]), sunset:  String(detais[4]), sunrise:  String(detais[3]))
                    allDays.append(oneFutureDay)
                }
            }
            completion(allDays)
        }
    }
    
    static func prepareArraysWithPreviousData(previousDays : [OneWeatherDay]){
        //filling current arrays to display
        
        parts = [ NSLocalizedString("Morning", comment: ""), NSLocalizedString("Day", comment: ""), NSLocalizedString("Evening", comment: ""), NSLocalizedString("Night", comment: "")]
        
        iconNames = [previousDays[0].morningcode, previousDays[0].daycode, previousDays[0].eveningcode, previousDays[0].nightcode ?? "1130"]
        temperature = [previousDays[0].morningtemp, previousDays[0].daytemp , previousDays[0].eveningtemp , (previousDays[0].nighttemp ?? previousDays[0].eveningtemp) ]
        feelsLike = ["\(previousDays[0].morningfeelslike)", "\(previousDays[0].dayfeelslike)", "\(previousDays[0].eveningfeelslike)", "\(previousDays[0].nightfeelslike ?? previousDays[0].eveningfeelslike)"]
        condition = [Status.allStatuses[previousDays[0].morningcode]?.0, Status.allStatuses[previousDays[0].daycode]?.0, Status.allStatuses[previousDays[0].eveningcode]?.0, Status.allStatuses[previousDays[0].nightcode ?? previousDays[0].eveningcode]?.0] as! [String]
        
        colors = []
        colors = [createRelevantColor(fromm: previousDays[0].morningcode, dayPart: 0), createRelevantColor(fromm: previousDays[0].daycode, dayPart: 1), createRelevantColor(fromm: previousDays[0].eveningcode, dayPart: 2), createRelevantColor(fromm: "000", dayPart: 3)]
        sunset = previousDays[0].getSunsetHour(day: previousDays[0])
        sunrise = previousDays[0].getRiseHour(day: previousDays[0])
        persons = []
        for i in 0...3{
            persons.append(determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: feelsLike[i], code: iconNames[i]))
        }
       
    }
    
    static func getPreviousCurrentCondition(){
        if (UserDefaults.standard.value(forKey: "currentCondition") != nil){
            let currentString = UserDefaults.standard.value(forKey: "currentCondition") as! String
            let items = currentString.split(separator: ",")
            currentCondition.0 = String(items[0])
            currentCondition.1 = String(items[1])
            currentCondition.2 = String(items[2])
        }
    }
    static func getLatLong()->(String, String)?{
        if self.checkLatLong(){
            DispatchQueue.global().sync {
                ViewController.latitude = UserDefaults.standard.value(forKey: "latitude") as! String
                ViewController.longitude = UserDefaults.standard.value(forKey: "longitude") as! String
            }
            return (String(latitude), String(longitude))
        }
        return nil
    }
    static func getLastCityAndLocation()->String{
        if checkLastLocation(){
            lastlocation = UserDefaults.standard.value(forKey: UserDefaultsService.lastlocation) as? String ?? "unknown city"
        }
        if checkLastCity(){
            currentCity = UserDefaults.standard.value(forKey: UserDefaultsService.lastCity) as? String ?? "unknown city"
            return currentCity
        }else{return ""}
        
    }
    
    static func checkLastCity()->Bool{
        if UserDefaults.standard.value(forKey: UserDefaultsService.lastCity) != nil && UserDefaults.standard.value(forKey: UserDefaultsService.lastCity) as? String != "" {
             return true
        }else{return false}
    }
    
    static func checkLastLocation()->Bool{
        if UserDefaults.standard.value(forKey: UserDefaultsService.lastlocation) != nil && UserDefaults.standard.value(forKey: UserDefaultsService.lastlocation) as? String != "" {
            return true
        }else{return false}

    }

    static func checkLatLong()->Bool{
        if UserDefaults.standard.value(forKey: UserDefaultsService.latitude) != nil && UserDefaults.standard.value(forKey: UserDefaultsService.longitude) != nil &&
            UserDefaults.standard.value(forKey: UserDefaultsService.latitude) as! String? != "" && UserDefaults.standard.value(forKey: UserDefaultsService.longitude) as! String != "" { 
            return true}
        else {return false}
        }
    
    
    static func saveCurrentCondition (string : String){
        UserDefaults.standard.set(string, forKey: UserDefaultsService.currentConditionKey)
    }
    
    static func saveDayParts (strings : [String]){
        UserDefaults.standard.set(strings, forKey: UserDefaultsService.daysPartsKey)
    }
    
    static func saveTodaysHours (string : String){
        UserDefaults.standard.set(string, forKey: UserDefaultsService.todayHoursKey)
    }
    
    static func saveLatLong(coordinates  :(String, String)){
        UserDefaults.standard.set(coordinates.0, forKey: UserDefaultsService.latitude)
        UserDefaults.standard.set(coordinates.1, forKey: UserDefaultsService.longitude)
    }
    static func saveLastCity(city : String){
        UserDefaults.standard.set(city, forKey: UserDefaultsService.lastCity)
    }
    static func saveLastLocation(location : String){
        UserDefaults.standard.set(location, forKey: UserDefaultsService.lastlocation)
    }
 
 
    
}

