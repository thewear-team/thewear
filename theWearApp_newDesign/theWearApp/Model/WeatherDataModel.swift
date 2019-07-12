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
//  все для выведения на главный экран готово
// оба комента - в методах
//// температура по часам в методе
struct Data : Decodable{
    let request : [Request]
    var current_condition : [CurrentCondition]
    let weather : [Weather] // all days
    
    
    //
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
    
    static func prepareArraysToDisplay(data : Data){
        
        temperature = []
        feelsLike = []
        condition = []
        iconNames = []
        colors = []
        var  hoursString = ""
        
        data.weather[0].hourly!.map{ //for today's hours
            hoursTemps.append($0.tempC)
            hoursIcons.append($0.weatherCode)
            hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
        }
        data.weather[1].hourly!.map{ //for tomorrow's hours
            hoursTemps.append($0.tempC)
            hoursIcons.append($0.weatherCode)
            hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
        }
        UserDefaultsService.saveTodaysHours(string : hoursString)
        
        iconNames = [data.weather[0].hourly![9].weatherCode,
                     data.weather[0].hourly![15].weatherCode,
                     data.weather[0].hourly![21].weatherCode,
                     data.weather[1].hourly![3].weatherCode]
        
        temperature = ["\(data.weather[0].hourly![9].tempC)°C",
            "\(data.weather[0].hourly![15].tempC)°C",
            "\(data.weather[0].hourly![21].tempC)°C",
            "\(data.weather[1].hourly![3].tempC)°C"]
        
        feelsLike = ["Feels like \(data.weather[0].hourly![9].FeelsLikeC)°C",
            "Feels like \(data.weather[0].hourly![15].FeelsLikeC)°C",
            "Feels like \(data.weather[0].hourly![21].FeelsLikeC)°C",
            "Feels like \(data.weather[1].hourly![3].FeelsLikeC)°C"]
        
        condition = [(Status.allStatuses[data.weather[0].hourly![9].weatherCode]!.0) ,
                     (Status.allStatuses[data.weather[0].hourly![15].weatherCode]!.0) ,
                     (Status.allStatuses[data.weather[0].hourly![21].weatherCode]!.0) ,
                     (Status.allStatuses[data.weather[1].hourly![3].weatherCode]!.0) ]
        
        var morningComp = Status.getColorcomponents(of: iconNames[0])
        morningComp = Status.changeColorForPartOfDay(color: morningComp, partOfDay: 0)
        let morningColor = UIColor(red: CGFloat(morningComp.0) / 255, green: CGFloat(morningComp.1) / 255, blue: CGFloat(morningComp.2) / 255, alpha: 1)
        
        var dayComp = Status.getColorcomponents(of: iconNames[1])
        dayComp = Status.changeColorForPartOfDay(color: dayComp, partOfDay: 1)
        let dayColor = UIColor(red: CGFloat(dayComp.0) / 255, green: CGFloat(dayComp.1) / 255, blue: CGFloat(dayComp.2) / 255, alpha: 1)
        
        var eveningComp = Status.getColorcomponents(of: iconNames[2])
        eveningComp = Status.changeColorForPartOfDay(color: eveningComp, partOfDay: 2)
        let eveningColor = UIColor(red: CGFloat(eveningComp.0) / 255, green: CGFloat(eveningComp.1) / 255, blue: CGFloat(eveningComp.2) / 255, alpha: 1)
        
        let nightColor = UIColor(red: 46/255, green: 68/255, blue: 130/255, alpha: 1)
        
        colors = [morningColor, dayColor, eveningColor, nightColor]
    }
    
    
    static func processDataAndSave(data : Data){
        
        var hoursString = ""
        let currentConditionString = data.current_condition[0].temp_C + "," + data.current_condition[0].FeelsLikeC  + "," + data.current_condition[0].weatherCode //for saving
        currentCondition = (data.current_condition[0].temp_C ,  data.current_condition[0].FeelsLikeC,data.current_condition[0].weatherCode )
        
        
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
        
        //        print(parts)
        
        UserDefaultsService.saveCurrentCondition(string: currentConditionString)
        
        UserDefaultsService.saveDayParts(strings: parts)
        demoTemp = []
        //fill current values
        let hours  = (hoursString.split(separator: ";"))
        codesHours = []
        for hour in hours {
            var parts = hour.split(separator: " ")
            demoTemp.append(String(parts[0]))
            codesHours.append(String(parts[1]))
            
        }
        
        
    }
}

struct Request: Decodable {
    let query: String?
    let query2: String?
}

struct CurrentCondition: Decodable {
    let temp_C : String
    let temp_F : String
    let weatherCode : String
    let windspeedMiles : String
    let windspeedKmph : String
    let winddir16Point : String
    let humidity : String
    let pressure : String
    let cloudcover : String
    var FeelsLikeC : String
    let FeelsLikeF : String
    let weatherDesc : [WeatherDesc]
    let weatherIconUrl : [WeatherIconUrl]
}

struct Weather: Decodable { //one day
    let date : String?
    let astronomy : [Astronomy]?
    let maxtempC : String?
    let maxtempF : String?
    let mintempC : String?
    let mintempF : String?
    let totalSnow_cm : String?
    let sunHour : String?
    let uvIndex : String?
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
    let time : String
    let tempC : String
    let tempF: String
    let windspeedMiles: String
    let windspeedKmph: String
    let weatherCode: String
    let weatherDesc : [WeatherDesc]
    let weatherIconUrl : [WeatherIconUrl]
    let precipMM: String
    let humidity: String
    let visibility: String
    let pressure: String
    let cloudcover:String
    let HeatIndexC: String
    let HeatIndexF: String
    let WindChillC: String
    let WindChillF: String
    let WindGustMiles: String
    let WindGustKmph: String
    let FeelsLikeC: String
    let FeelsLikeF: String
    let chanceofrain: String
    //    let chanceofremdry:String
    //    let chanceofwindy: String
    //    let chanceofovercast: String
    //    let chanceofsunshine: String
    //    let chanceoffrost: String
    //    let chanceofhightemp: String
    //    let chanceoffog: String
    let chanceofsnow: String
    let chanceofthunder: String
}

struct WeatherDesc : Decodable{
    let value : String
}

struct WeatherIconUrl: Decodable {
    let value : String
}


