//
//  UserDefaultsService.swift
//  theWearApp
//
//  Created by Валентина on 10.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation

class UserDefaultsService {
    static let todayHoursKey = "todayHours"
    static let daysPartsKey = "daysParts"
    static let currentConditionKey = "currentCondition"
    static var latitude = "latitude"
    static var longitude = "longitude"
    
    static func getPreviousData(){
        self.getLatLong()
        self.getPreviousTodayHours()
        self.getPreviousCurrentCondition()
        self.getPreviousDaysParts()
    }

    static func getPreviousTodayHours (){
        if (UserDefaults.standard.value(forKey: "todayHours") != nil ){
            let allhours = UserDefaults.standard.value(forKey: "todayHours") as! String
    
            hoursIcons = []
            hoursTemps = []
            let hours  = (allhours.split(separator: ";"))
            for hour in hours {
                
                let parts = hour.split(separator: " ")
                print(parts)
                hoursTemps.append(String(parts[0])  )
                hoursIcons.append(String(parts[1]))
            }
        }
    }
    
    static func getPreviousDaysParts(){
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
            print(allDays)
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
    static func getLatLong(){
        if (UserDefaults.standard.value(forKey: UserDefaultsService.latitude) != nil && UserDefaults.standard.value(forKey: UserDefaultsService.longitude) != nil){
            latitude = UserDefaults.standard.value(forKey: "latitude") as! String
            longitude = UserDefaults.standard.value(forKey: "longitude") as! String
        }
    }
    static func checkLatLong()->Bool{
        if UserDefaults.standard.value(forKey: UserDefaultsService.latitude) != nil && UserDefaults.standard.value(forKey: UserDefaultsService.longitude) != nil{
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
    
}
