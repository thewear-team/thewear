//
//  Methods.swift
//  theWearApplication
//
//  Created by Валентина on 10/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import UIKit
 let dayChangedName = Notification.Name("dayChanged")

var currentCity  = "Moscow"
var hourNow : Int = 0
var partOfDayNow : Int = 0
var demoCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]
var standartCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]

var demoHours : [String] = ["00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]

var demoTemp  : [String] = [] // for output /temps by hours
var codesHours  : [String] = [] //for output /codes by hours
var currentCondition = ("", "", "") //for output/ current (temp, feelslike, code)
var allDays : [OneWeatherDay] = [] //contain 7 days by parts + details
var demoDays : [String] = [] // for output
var lastCity = ""
var allCities : [String] = []
// 000 - night code
func determinePartOfDay(){
    let time = Date()
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: time)
    print(hour)
    hourNow = hour
    switch hour{
    case 6...11:
        partOfDayNow = 0
    case 12...17:
        partOfDayNow = 1
    case 18...23:
        partOfDayNow = 2
    case 0...5:
        partOfDayNow = 3
    default:
        partOfDayNow = 0
    }
    print (partOfDayNow)
}

func retrieveDataAndUpdate(){
    if (UserDefaults.standard.value(forKey: "todayHours") != nil ){
        let allhours = UserDefaults.standard.value(forKey: "todayHours") as! String
        //            print (allhours)
        demoTemp = []
        let hours  = (allhours.split(separator: ";"))
        for hour in hours {
            
            let parts = hour.split(separator: " ")
            print(parts)
            demoTemp.append(String(parts[0]) + "°С" )
            codesHours.append(String(parts[1]))
        }
    }
    if (UserDefaults.standard.value(forKey: "daysParts") != nil){
        let alldays = UserDefaults.standard.value(forKey: "daysParts") as! [String]
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
    
    if (UserDefaults.standard.value(forKey: "currentCondition") != nil){
        let currentString = UserDefaults.standard.value(forKey: "currentCondition") as! String
        let items = currentString.split(separator: ",")
        currentCondition.0 = String(items[0])
        currentCondition.1 = String(items[1])
        currentCondition.2 = String(items[2])
    }
    
}
func processData(data : Data){
     var hoursString = ""
    let currentConditionString = data.current_condition[0].temp_C + "," + data.current_condition[0].FeelsLikeC  + "," + data.current_condition[0].weatherCode //for saving
    currentCondition = (data.current_condition[0].temp_C ,  data.current_condition[0].FeelsLikeC,data.current_condition[0].weatherCode ) //for displaying now
    data.weather[0].hourly!.map{
        hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
    }
    data.weather[1].hourly!.map{
        hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
    }
    var parts : [String] = []
    var details : [String] = []
    var bound = 0
    allDays = []
    while bound < 7 {
        let sunInfo = data.weather[bound].astronomy![0].sunrise + "," + data.weather[bound].astronomy![0].sunset + ","
        let detailsLine  = data.weather[bound].hourly![15].windspeedKmph + "," + data.weather[bound].hourly![15].humidity + ","  + data.weather[bound].hourly![15].pressure + "," + sunInfo + data.weather[bound].uvIndex!
        print(detailsLine)
        details.append(detailsLine)
        let date = data.weather[bound].date! + "/"
        let morningLine = data.weather[bound].hourly![9].tempC + "," + data.weather[bound].hourly![9].FeelsLikeC + "," + data.weather[bound].hourly![9].weatherCode + ","
        
        let dayLine = data.weather[bound].hourly![15].tempC + "," + data.weather[bound].hourly![15].FeelsLikeC + "," + data.weather[bound].hourly![15].weatherCode + ","
        
        let eveningLine = data.weather[bound].hourly![21].tempC + "," + data.weather[bound].hourly![21].FeelsLikeC + "," + data.weather[bound].hourly![21].weatherCode + ","
        
        var nightLine = "/"
        
        if bound < 6 {
            nightLine = data.weather[bound + 1].hourly![3].tempC + "," + data.weather[bound + 1].hourly![3].FeelsLikeC + "," + data.weather[bound + 1].hourly![3].weatherCode + "/"
            let oneDay = OneWeatherDay(date: data.weather[bound].date!, morningtemp: data.weather[bound].hourly![9].tempC , daytemp: data.weather[bound].hourly![15].tempC, eveningtemp: data.weather[bound].hourly![21].tempC , nighttemp: data.weather[bound + 1].hourly![3].tempC, morningfeelslike: data.weather[bound].hourly![9].FeelsLikeC , dayfeelslike: data.weather[bound].hourly![15].FeelsLikeC, eveningfeelslike: data.weather[bound].hourly![21].FeelsLikeC , nightfeelslike: data.weather[bound + 1].hourly![3].FeelsLikeC, morningcode: data.weather[bound].hourly![9].weatherCode, daycode: data.weather[bound].hourly![15].weatherCode , eveningcode: data.weather[bound].hourly![21].weatherCode, nightcode: data.weather[bound + 1].hourly![3].weatherCode , pressure: data.weather[bound].hourly![15].pressure, humidity: data.weather[bound].hourly![15].humidity , wind: data.weather[bound].hourly![15].windspeedKmph, uv: data.weather[bound].uvIndex!, sunset: data.weather[bound].astronomy![0].sunset, sunrise: data.weather[bound].astronomy![0].sunrise)
            allDays.append(oneDay)
        }
        else{
            let oneDay = OneWeatherDay(date: data.weather[bound].date!, morningtemp: data.weather[bound].hourly![9].tempC , daytemp: data.weather[bound].hourly![15].tempC, eveningtemp: data.weather[bound].hourly![21].tempC ,morningfeelslike: data.weather[bound].hourly![9].FeelsLikeC , dayfeelslike: data.weather[bound].hourly![15].FeelsLikeC, eveningfeelslike: data.weather[bound].hourly![21].FeelsLikeC , morningcode: data.weather[bound].hourly![9].weatherCode, daycode: data.weather[bound].hourly![15].weatherCode , eveningcode: data.weather[bound].hourly![21].weatherCode , pressure: data.weather[bound].hourly![15].pressure, humidity: data.weather[bound].hourly![15].humidity , wind: data.weather[bound].hourly![15].windspeedKmph, uv: data.weather[bound].uvIndex!, sunset: data.weather[bound].astronomy![0].sunset, sunrise: data.weather[bound].astronomy![0].sunrise)
            allDays.append(oneDay)
        }
        
        let finalLine =  date + morningLine + dayLine + eveningLine + nightLine + detailsLine
        parts.append(finalLine)
        bound += 1
    }
    //            print("HERE ARE NEW FETCHED DAYS \(allDays)")
    print(parts)
    UserDefaults.standard.set(currentConditionString, forKey: "currentCondition")//here is string
    UserDefaults.standard.set(parts, forKey: "daysParts")//here is an array == allDays in vc
    demoTemp = []
    //fill current values
    let hours  = (hoursString.split(separator: ";"))
    codesHours = []
    for hour in hours {
        var parts = hour.split(separator: " ")
        demoTemp.append(String(parts[0]) + "°С" )
        codesHours.append(String(parts[1]))
    }
    print(codesHours)
    print(demoTemp)
     UserDefaults.standard.set(hoursString, forKey: "todayHours")
}
