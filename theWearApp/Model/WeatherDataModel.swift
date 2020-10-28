//
//  WeatherDataModel.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit

enum PartsOfDay : Int{
    case morning = 0
    case day = 1
    case evening = 2
    case night = 3
    
}

struct Main : Decodable {
    var data : Data
}

struct Data : Decodable{
    
    let request : [Request]
    var current_condition : [CurrentCondition]
    let weather : [Weather] // all days
    let time_zone : [TimeZone]?
    
    static func convertTempsToFarenheit(){
        for i in 1...hoursTemps.count{
            var intTemp = Int(hoursTemps[i])!
            intTemp = intTemp.convertToFarenheit()
            hoursTemps[i] = String(intTemp)
        }
    }
    
    static func convertTempsToCelsius(){
        for i in 1...hoursTemps.count{
            var intTemp = Int(hoursTemps[i])!
            intTemp = intTemp.convertToCelsius()
            hoursTemps[i] = String(intTemp)
        }
    }
    static func prepareCurrentDateTimeFromData(_  data : Data)->Int{
        print(data.time_zone?[0].localtime )
        let recievedDateString = data.time_zone?[0].localtime ?? ""
        let parts = recievedDateString.split(separator: " ")
        let data = parts[0]
        let timeParts = parts[1].split(separator: ":")
        hourNow = Int(timeParts[0]) ?? getCurrentHours()
        print("current time for this city is \(hourNow)")
        print("current data is \(data)")
        return Int(timeParts[0]) ?? getCurrentHours()
    }
    
    static func doAllDataManipulations(data : Data) {
        Data.processDataAndSave(data: data, completion: {
            alldays in
            determinePartOfDay(hourNowReceived : Data.prepareCurrentDateTimeFromData(data))

            Data.prepareArraysToDisplay(data: data) {
                currentCondition = (data.current_condition[0].temp_C, data.current_condition[0].FeelsLikeC, data.current_condition[0].weatherCode)
                Data.prepareCurrentCondition(current: currentCondition)
            }
            Data.prepareFutureColorsDates(alldays: alldays)
        })
    }
    
    static func prepareArraysToDisplay(data : Data, _ completion : @escaping()->()) {
        
        sunset = 0
        sunrise = 0
        hoursTemps = []
        hoursIcons = []
        temperature = []
        feelsLike = []
        condition = []
        iconNames = []
        colors = []
        persons.removeAll()
        clearAllHours()
        
        let sunsetParts = data.weather[0].astronomy?[0].sunset.split(separator: ":")
        let sunriseParts = data.weather[0].astronomy?[0].sunrise.split(separator: ":")
        let hourSet = Array(sunsetParts!)[0]
        let minuteSet = Array(sunsetParts!)[1].split(separator: " ")[0]
        let hourRise = Array(sunriseParts!)[0]
        let minuteRise = Int(Array(sunriseParts!)[1].split(separator: " ")[0]) ?? 00
        sunset = Int(hourSet) ?? 0
        sunset = sunset + 12
        sunrise = Int(hourRise) ?? 0
        
        var k = 0
        print(sunset, sunrise)
        data.weather[0].hourly!.map{ //for today's hours
            if $0.tempC == "-0"{
                hoursTemps.append("0")
            }else{
                hoursTemps.append($0.tempC)}
            hoursIcons.append((($0.weatherCode == "113" || $0.weatherCode == "116") &&  (k > sunset  || k <= sunrise)) ? $0.weatherCode + "0" : $0.weatherCode )
            k = k + 1
        }
        k = 0
        data.weather[1].hourly!.map{ //for tomorrow's hours
            if $0.tempC == "-0"{
                hoursTemps.append("0")
            }else{
                hoursTemps.append($0.tempC)}
            hoursIcons.append((($0.weatherCode == "113" || $0.weatherCode == "116") &&  (k > sunset  || k <= sunrise )) ? $0.weatherCode + "0" : $0.weatherCode )
            k = k + 1
        }
        
        if Int(hourRise) != nil && Int(hourSet) != nil{
            allHours.insert(String(format: "%02d:%02d", sunrise, minuteRise), at: sunrise + 1)
            allHours.insert("\(sunset):\(minuteSet)", at: sunset + 2)
            hoursIcons.insert("sunrise", at: sunrise + 1)
            hoursIcons.insert("sunset", at: sunset + 2)
            hoursTemps.insert(hoursTemps[sunrise], at:  sunrise + 1)
            hoursTemps.insert(hoursTemps[sunset + 1], at:  sunset + 2)
            
            allHours.insert(String(format: "%02d:%02d", sunrise, minuteRise), at: sunrise + 27)
            hoursIcons.insert("sunrise", at: sunrise + 27)
            hoursTemps.insert(hoursTemps[sunrise + 24], at:  sunrise + 27)
            
            allHours.insert("\(sunset):\(minuteSet)", at: sunset + 28)
            hoursIcons.insert("sunset", at: sunset + 28)
            hoursTemps.insert(hoursTemps[sunset + 27], at:  sunset + 28)
        }
        hoursTemps.insert("", at: 24 + 2)
        allHours.insert("", at: 24 + 2)
        hoursIcons.insert("close", at: 24 + 2)
        
        
        
        iconNames.append(data.weather[selectedDay].hourly![9].weatherCode)
        iconNames.append(data.weather[selectedDay].hourly![15].weatherCode)
        iconNames.append((data.weather[selectedDay].hourly![21].weatherCode == "113" || data.weather[selectedDay].hourly![21].weatherCode == "116") ? data.weather[selectedDay].hourly![21].weatherCode + "0" : data.weather[selectedDay].hourly![21].weatherCode)
        
        let nightIconDefault = "1130"
        if selectedDay != allDays.count - 1{ // if selected not last
            iconNames.append((data.weather[selectedDay + 1].hourly![3].weatherCode == "113" || data.weather[selectedDay + 1].hourly![3].weatherCode == "116") ? data.weather[selectedDay + 1].hourly![3].weatherCode + "0" : data.weather[selectedDay + 1].hourly![3].weatherCode)
        }
        else{// if selected last day
            iconNames.append(nightIconDefault)
        }
        
        temperature = ["\(data.weather[selectedDay].hourly![9].tempC)",
            "\(data.weather[selectedDay].hourly![15].tempC)",
            "\(data.weather[selectedDay].hourly![21].tempC)",
            (selectedDay == 6) ? "\(data.weather[selectedDay].hourly![23].tempC)" : "\(data.weather[selectedDay + 1].hourly![3].tempC)"]
        
        
        
        feelsLike = ["\(data.weather[selectedDay].hourly![9].FeelsLikeC)",
            "\(data.weather[selectedDay].hourly![15].FeelsLikeC)",
            "\(data.weather[selectedDay].hourly![21].FeelsLikeC)",
            (selectedDay == 6) ? "\(data.weather[selectedDay].hourly![23].FeelsLikeC)" : "\(data.weather[selectedDay + 1].hourly![3].FeelsLikeC)"]
        
        condition = [(Status.allStatuses[data.weather[selectedDay].hourly![9].weatherCode]!.0) ,
                     (Status.allStatuses[data.weather[selectedDay].hourly![15].weatherCode]!.0) ,
                     ((Status.allStatuses[data.weather[selectedDay].hourly![21].weatherCode]!.0 == "Sunny") ? "Clear" : (Status.allStatuses[data.weather[selectedDay].hourly![21].weatherCode]!.0))
            
        ]
        
        var counter = 0
        
        for feelsLikeWeather in feelsLike {
            let person = determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: feelsLikeWeather, code: iconNames[counter])
            persons.append(person)
            counter += 1
        }

        if selectedDay == allDays.count - 1 {
            condition.append("Clear")
        }else{
            condition.append( ((Status.allStatuses[data.weather[selectedDay + 1].hourly![3].weatherCode]!.0 == "Sunny") ? "Clear" : (Status.allStatuses[data.weather[selectedDay + 1].hourly![3].weatherCode]!.0)))
        }
        
        var morningComp = Status.getColorcomponents(of: iconNames[0])
        morningComp = Status.changeColorForPartOfDay(color: morningComp, partOfDay: 0)
        let morningColor = UIColor(red: CGFloat(morningComp.0) / 255, green: CGFloat(morningComp.1) / 255, blue: CGFloat(morningComp.2) / 255, alpha: 1)
        
        var dayComp = Status.getColorcomponents(of: iconNames[1])
        dayComp = Status.changeColorForPartOfDay(color: dayComp, partOfDay: 1)
        let dayColor = UIColor(red: CGFloat(dayComp.0) / 255, green: CGFloat(dayComp.1) / 255, blue: CGFloat(dayComp.2) / 255, alpha: 1)
        
        let eveningComp = Status.getColorcomponents(of: "001") //always violet
        let eveningColor = UIColor(red: CGFloat(eveningComp.0) / 255, green: CGFloat(eveningComp.1) / 255, blue: CGFloat(eveningComp.2) / 255, alpha: 1)
        
        let nightColor = UIColor(red: 46/255, green: 68/255, blue: 130/255, alpha: 1)
        
        colors = [morningColor, dayColor, eveningColor, nightColor]

        completion()
    }
    
    static func prepareArraysForAnotherDay(selectedDay : Int){
        temperature = [allDays[selectedDay].morningtemp,
                       allDays[selectedDay].daytemp,
                       allDays[selectedDay].eveningtemp,
                       allDays[selectedDay].nighttemp ?? allDays[selectedDay].eveningtemp
        ]
        feelsLike = [allDays[selectedDay].morningfeelslike,
                     allDays[selectedDay].dayfeelslike,
                     allDays[selectedDay].eveningfeelslike,
                     allDays[selectedDay].nightfeelslike ?? allDays[selectedDay].eveningfeelslike
        ]
        
        iconNames = [allDays[selectedDay].morningcode,
                     allDays[selectedDay].daycode,
                     (allDays[selectedDay].eveningcode == "113" || allDays[selectedDay].eveningcode == "116") ? allDays[selectedDay].eveningcode  + "0" : allDays[selectedDay].eveningcode  ,
                     (allDays[selectedDay].nightcode == "113" || allDays[selectedDay].nightcode == "116") ? (allDays[selectedDay].nightcode ?? "00")  + "0" : (allDays[selectedDay].nightcode ?? "1130")  ]
        
        condition = [Status.allStatuses[allDays[selectedDay].morningcode]!.0 ,
                     Status.allStatuses[allDays[selectedDay].daycode]!.0 ,
                     ((Status.allStatuses[allDays[selectedDay].eveningcode]!.0 == "Sunny") ? "Clear" : (Status.allStatuses[allDays[selectedDay].eveningcode]!.0)) ,
                     (Status.allStatuses[allDays[selectedDay].nightcode ?? "000"]!.0 == "Sunny") ? "Clear" : (Status.allStatuses[allDays[selectedDay].nightcode ?? "000"]!.0)]
        
        parts = [ NSLocalizedString("Morning", comment: ""), NSLocalizedString("Day", comment: ""), NSLocalizedString("Evening", comment: ""), NSLocalizedString("Night", comment: "")]
        persons.removeAll()
        
        
        var k = 0
        for feel in feelsLike{
            persons.append(determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: feel, code: iconNames[k]))
            
            k = k + 1
        }
        
        var morningComp = Status.getColorcomponents(of: iconNames[0])
        morningComp = Status.changeColorForPartOfDay(color: morningComp, partOfDay: 0)
        let morningColor = UIColor(red: CGFloat(morningComp.0) / 255, green: CGFloat(morningComp.1) / 255, blue: CGFloat(morningComp.2) / 255, alpha: 1)
        
        var dayComp = Status.getColorcomponents(of: iconNames[1])
        dayComp = Status.changeColorForPartOfDay(color: dayComp, partOfDay: 1)
        let dayColor = UIColor(red: CGFloat(dayComp.0) / 255, green: CGFloat(dayComp.1) / 255, blue: CGFloat(dayComp.2) / 255, alpha: 1)
        
        let eveningComp = Status.getColorcomponents(of: "001")//always violet
        let eveningColor = UIColor(red: CGFloat(eveningComp.0) / 255, green: CGFloat(eveningComp.1) / 255, blue: CGFloat(eveningComp.2) / 255, alpha: 1)
        
        let nightColor = UIColor(red: 46/255, green: 68/255, blue: 130/255, alpha: 1) //always dark
        
        colors = [morningColor, dayColor, eveningColor, nightColor]
    }
    static func getSunsetHour(data : Data)->Int{
        let parts = (data.weather[0].astronomy?[0].sunset ?? "21:00 pm").split(separator: ":")
        let sunsetHour = Int(parts[0]) ?? 21
        return sunsetHour + 12
    }
    
    static func addToArraysOrdinaryCurrentCondition(partOfDayNow : Int){
        parts[partOfDayNow] = NSLocalizedString("Now", comment: "")
        temperature[partOfDayNow] = currentCondition.0
        feelsLike[partOfDayNow] = currentCondition.1
        condition[partOfDayNow] = (Status.allStatuses[currentCondition.2]?.0)!
        iconNames[partOfDayNow] = currentCondition.2
        persons[partOfDayNow] = determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: currentCondition.1, code: currentCondition.2)
        var newComp = Status.getColorcomponents(of: currentCondition.2)
        newComp = Status.changeColorForPartOfDay(color: newComp, partOfDay: partOfDayNow)
        colors[partOfDayNow] = UIColor(red: CGFloat(newComp.0) / 255, green: CGFloat(newComp.1) / 255, blue: CGFloat(newComp.2) / 255, alpha: 1)
    }
    
    static func addToArraysDarkCurrentCondition(partOfDayNow : Int){
        if hourNow == sunset {
            let newComp = Status.getColorcomponents(of: "999")
            colors[partOfDayNow] = UIColor(red: CGFloat(newComp.0) / 255, green: CGFloat(newComp.1) / 255, blue: CGFloat(newComp.2) / 255, alpha: CGFloat(Status.prepareSunsetAlpha(weathercode: currentCondition.2, partOfDay: partOfDayNow)))
        }else{
            let newComp = Status.getColorcomponents(of: "001")
            colors[partOfDayNow] = UIColor(red: CGFloat(newComp.0) / 255, green: CGFloat(newComp.1) / 255, blue: CGFloat(newComp.2) / 255, alpha: 1)
        }
        parts[partOfDayNow] = NSLocalizedString("Now", comment: "")
        temperature[partOfDayNow] = currentCondition.0
        feelsLike[partOfDayNow] = currentCondition.1
        persons[partOfDayNow] = determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: currentCondition.1, code: currentCondition.2)
        iconNames[partOfDayNow] = (currentCondition.2 == "113" || currentCondition.2 == "116" ) ? String(currentCondition.2 + "0")  : currentCondition.2
        condition[partOfDayNow] =  (currentCondition.2 == "113")  ? "Clear" : (Status.allStatuses[currentCondition.2]!.0)

    }
    
    static func addToArraysExtraMorningComponentDark(){
      
        page = 0
        let newComp = Status.getColorcomponents(of: "001")
        let extraColor = UIColor(red: CGFloat(newComp.0) / 255, green: CGFloat(newComp.1) / 255, blue: CGFloat(newComp.2) / 255, alpha: 1)
        
        parts.insert(NSLocalizedString("Now", comment: ""), at: 0)
        persons.insert(determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: currentCondition.1, code: currentCondition.2), at: 0)
        temperature.insert( currentCondition.0 , at: 0)
        feelsLike.insert( currentCondition.1, at: 0)
        iconNames.insert(((hourNow >= sunset + 2 || hourNow < sunrise ) && (currentCondition.2 == "113" || currentCondition.2 == "116" ) ? String(currentCondition.2 + "0")  : currentCondition.2), at: 0)
        condition.insert(((hourNow >= sunset + 2 || hourNow < sunrise ) && (currentCondition.2 == "113")) ? "Clear" : (Status.allStatuses[currentCondition.2]!.0) , at: 0)
        colors.insert(extraColor, at: 0)
        print(parts)
    }
    static func addToArraysExtraMorningComponentLight(){
    
        page = 0
        let newComp = Status.getColorcomponents(of: "111")
        let extraColor = UIColor(red: CGFloat(newComp.0) / 255, green: CGFloat(newComp.1) / 255, blue: CGFloat(newComp.2) / 255, alpha: 1)
        parts.insert(NSLocalizedString("Now", comment: ""), at: 0)
        temperature.insert( currentCondition.0 , at: 0)
        feelsLike.insert( currentCondition.1, at: 0)
        iconNames.insert(currentCondition.2, at: 0)
        condition.insert(Status.allStatuses[currentCondition.2]!.0, at: 0)
        colors.insert(extraColor, at: 0)
        persons.insert(determmineAppropriateClothes(for: SettingsModel.gender, feelsLike: currentCondition.1, code: currentCondition.2), at: 0) 
        print(parts)
    }
    
    
    static func prepareCurrentCondition(current : (String, String, String)){
        
        parts = [ NSLocalizedString("Morning", comment: ""), NSLocalizedString("Day", comment: ""), NSLocalizedString("Evening", comment: ""), NSLocalizedString("Night", comment: "")]
        var insertingIndex = 0
        
        
        if hourNow < sunrise {
            insertingIndex = hourNow
        } else if hourNow >= sunrise && hourNow < sunset{
            insertingIndex = hourNow + 1
        } else if hourNow >= sunset {
            insertingIndex = hourNow + 2
        }
        hoursTemps[insertingIndex] = currentCondition.0
        hoursIcons[insertingIndex] = ((hourNow > sunset  || hourNow < sunrise + 1) && (currentCondition.2 == "113" || currentCondition.2 == "116" )) ? String(currentCondition.2 + "0")  : currentCondition.2
        if hourNow == sunset {
            hoursIcons[insertingIndex] = "sunset"
        }else if hourNow == sunrise {
            hoursIcons[insertingIndex] = "sunrise"
        }
        
        switch (partOfDayNow){
        case 0 :
            if hourNow < sunrise{ //still night
                addToArraysDarkCurrentCondition(partOfDayNow: 0)
            }
            else{
                addToArraysOrdinaryCurrentCondition(partOfDayNow: 0)
            }
        case 1:
            if hourNow >= sunset{ //dark time begins
                addToArraysDarkCurrentCondition(partOfDayNow: 1)
            }
            else{ //just ordinary day
                addToArraysOrdinaryCurrentCondition(partOfDayNow: 1)
            }
        case 2 :
            if hourNow >= sunset{ //dark time begins
                addToArraysDarkCurrentCondition(partOfDayNow: 2)
            }
            else{ //just ordinary day
                addToArraysOrdinaryCurrentCondition(partOfDayNow: 2)
            }
        case 3 :
            if hourNow < sunrise{ //still night
                addToArraysExtraMorningComponentDark()
            }else{
                addToArraysExtraMorningComponentLight()
            }
            
        default :
            print("no way to be here")
            
        }
        
    }
    
    
    static func processDataAndSave(data : Data, completion : @escaping(([OneWeatherDay])->())){
        
        let currentConditionString = data.current_condition[0].temp_C + "," + data.current_condition[0].FeelsLikeC  + "," + data.current_condition[0].weatherCode
        currentCondition = (data.current_condition[0].temp_C ,  data.current_condition[0].FeelsLikeC,data.current_condition[0].weatherCode )
        
        
        var parts : [String] = []
        var details : [String] = []
        var bound = 0
        allDays = []
        while bound < data.weather.count {
            let sunInfo = data.weather[bound].astronomy![0].sunrise + "," + data.weather[bound].astronomy![0].sunset + ","
            let detailsLine  = data.weather[bound].hourly![15].windspeedKmph + "," + data.weather[bound].hourly![15].humidity + ","  + data.weather[bound].hourly![15].pressure + "," + sunInfo + data.weather[bound].uvIndex!
            //            print(detailsLine)
            details.append(detailsLine)
            let date = data.weather[bound].date! + "/"
            let morningLine = data.weather[bound].hourly![9].tempC + "," + data.weather[bound].hourly![9].FeelsLikeC + "," + data.weather[bound].hourly![9].weatherCode + ","
            
            let dayLine = data.weather[bound].hourly![15].tempC + "," + data.weather[bound].hourly![15].FeelsLikeC + "," + data.weather[bound].hourly![15].weatherCode + ","
            
            let eveningLine = data.weather[bound].hourly![21].tempC + "," + data.weather[bound].hourly![21].FeelsLikeC + "," + data.weather[bound].hourly![21].weatherCode + ","
            
            var nightLine = "/"
            
            if bound < data.weather.count - 1 {
     
                nightLine = data.weather[bound + 1].hourly![3].tempC + "," + data.weather[bound + 1].hourly![3].FeelsLikeC + "," + data.weather[bound + 1].hourly![3].weatherCode + "/"
                let oneDay = OneWeatherDay(date: data.weather[bound].date!, morningtemp: data.weather[bound].hourly![9].tempC , daytemp: data.weather[bound].hourly![15].tempC, eveningtemp: data.weather[bound].hourly![21].tempC , nighttemp: data.weather[bound + 1].hourly![3].tempC, morningfeelslike: data.weather[bound].hourly![9].FeelsLikeC , dayfeelslike: data.weather[bound].hourly![15].FeelsLikeC, eveningfeelslike: data.weather[bound].hourly![21].FeelsLikeC , nightfeelslike: data.weather[bound + 1].hourly![3].FeelsLikeC, morningcode: data.weather[bound].hourly![9].weatherCode, daycode: data.weather[bound].hourly![15].weatherCode , eveningcode: data.weather[bound].hourly![21].weatherCode, nightcode: data.weather[bound + 1].hourly![3].weatherCode , pressure: data.weather[bound].hourly![15].pressure, humidity: data.weather[bound].hourly![15].humidity , wind: data.weather[bound].hourly![15].windspeedKmph, uv: data.weather[bound].uvIndex!, sunset: data.weather[bound].astronomy![0].sunset, sunrise: data.weather[bound].astronomy![0].sunrise)
                allDays.append(oneDay)
            }
            else{
                let oneDay = OneWeatherDay(date: data.weather[bound].date!, morningtemp: data.weather[bound].hourly![9].tempC , daytemp: data.weather[bound].hourly![15].tempC, eveningtemp: data.weather[bound].hourly![21].tempC ,morningfeelslike: data.weather[bound].hourly![9].FeelsLikeC , dayfeelslike: data.weather[bound].hourly![15].FeelsLikeC, eveningfeelslike: data.weather[bound].hourly![21].FeelsLikeC , morningcode: data.weather[bound].hourly![9].weatherCode, daycode: data.weather[bound].hourly![15].weatherCode , eveningcode: data.weather[bound].hourly![21].weatherCode , pressure: data.weather[bound].hourly![15].pressure, humidity: data.weather[bound].hourly![15].humidity , wind: data.weather[bound].hourly![15].windspeedKmph, uv: data.weather[bound].uvIndex!, sunset: data.weather[bound].astronomy![0].sunset, sunrise: data.weather[bound].astronomy![0].sunrise)
                allDays.append(oneDay)
            }
            
            parts.append( date + morningLine + dayLine + eveningLine + nightLine + detailsLine)
            bound += 1
            
            
        }
        
        var hoursString = ""
        
        data.weather[0].hourly!.map{ //for today's hours
            hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
        }
        data.weather[1].hourly!.map{ //for tomorrow's hours
            hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
        }
        
        UserDefaultsService.saveTodaysHours(string : hoursString)
        
        UserDefaultsService.saveCurrentCondition(string: currentConditionString)
        
        UserDefaultsService.saveDayParts(strings: parts)
        
        
        print(allDays.count)
        completion(allDays) //preparing colors of cells here
    }
    
    static func prepareFutureColorsDates(alldays : [OneWeatherDay]){
        futureDaysColors = []
        allDates = []
        for day in alldays{
            let components = Status.getColorcomponents(of: day.daycode)
            let newColor =  UIColor(red: CGFloat(components.0) / 255, green: CGFloat(components.1) / 255, blue: CGFloat(components.2) / 255, alpha: 1)
            futureDaysColors.append(newColor)
            allDates.append(getNameOfDay(dateString: day.date) ?? day.date)
        }
        print("Total ammount of colors \(futureDaysColors.count)")
        print(allDates)
    }
    
    
}

struct Request: Decodable {
    let query: String?
    let query2: String?
}

struct CurrentCondition: Decodable {
    let temp_C : String//
    let temp_F : String//
    let weatherCode : String//
    let windspeedMiles : String//
    let windspeedKmph : String//
    let winddir16Point : String//
    let humidity : String//
    let pressure : String//
    let cloudcover : String//
    var FeelsLikeC : String//
    let FeelsLikeF : String//
    let weatherDesc : [WeatherDesc]//
    let weatherIconUrl : [WeatherIconUrl]//
}

struct Weather: Decodable { //one day
    let date : String?//
    let astronomy : [Astronomy]?//
    let maxtempC : String?//
    let maxtempF : String?//
    let mintempC : String?//
    let mintempF : String?//
    let totalSnow_cm : String?
    let sunHour : String?//
    let uvIndex : String?//
    let hourly : [Hourly]?
}

struct Astronomy: Decodable {
    let sunrise: String
    let sunset : String
    let moonrise : String
    let moonset: String
    let moon_phase: String
    let moon_illumination : String
}

struct Hourly : Decodable{
    let time : String//
    let tempC : String//
    let tempF: String//
    let windspeedMiles: String//
    let windspeedKmph: String//
    let weatherCode: String//
    let weatherDesc : [WeatherDesc]//
    let weatherIconUrl : [WeatherIconUrl]//
    let precipMM: String//
    let humidity: String//
    let visibility: String//
    let pressure: String//
    let cloudcover:String//
    let FeelsLikeC: String//
    let FeelsLikeF: String//
    let chanceofrain: String//
}

struct WeatherDesc : Decodable{
    let value : String
}

struct WeatherIconUrl: Decodable {
    let value : String
}
struct TimeZone: Decodable{
    let localtime : String?
    let zone : String?
}





