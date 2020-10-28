//
//  Methods.swift
//  theWearApplication
//
//  Created by Валентина on 10/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import UIKit


func determinePartOfDay(){
    let time = Date()
    let calendar = Calendar(identifier: .gregorian)
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
    page = partOfDayNow
    print (partOfDayNow)
}
func determinePartOfDay(hourNowReceived : Int){
    
    switch hourNowReceived{
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
    page = partOfDayNow
    print (partOfDayNow)
}


func getCurrentHours()->Int{
    let currentDate = NSDate() // You can input the custom as well
    let calendar = NSCalendar.current
    return Int(calendar.component(.hour, from: currentDate as Date))
}

func getDateString(month : String, day : String)->String{
    var daterString = ""
    switch month{
    case "01":
        daterString = "January, \(day)"
    case "02":
        daterString = "February, \(day)"
    case "03":
        daterString = "March, \(day)"
    case "04":
        daterString = "April, \(day)"
    case "05":
        daterString = "May, \(day)"
    case "06":
        daterString = "June, \(day)"
    case "07":
        daterString = "July, \(day)"
    case "08":
        daterString = "August, \(day)"
    case "09":
        daterString = "September, \(day)"
    case "10":
        daterString = "October, \(day)"
    case "11":
        daterString = "November, \(day)"
    case "12":
        daterString = "December, \(day)"
    default :
        daterString = ""
    }
    return daterString
    
}
func getNameOfDay(dateString : String)->String?{
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyy-MM-dd"
    guard let newDate = dateFormatter.date(from: dateString) else {
        print("Error while converting the date")
        return nil
        
    }
    dateFormatter.dateFormat = "E, d MMM"
    return dateFormatter.string(from: newDate)
}

func createRelevantColor(fromm code : String, dayPart : Int)-> UIColor{
    let components = Status.allStatuses[code]
    let changedComponents  = Status.changeColorForPartOfDay(color: (components!.1, components!.2, components!.3), partOfDay: dayPart)
    
    return UIColor.createColor(r: changedComponents.0, g: changedComponents.1, b: changedComponents.2)
}


func convertToFarenheitIfNeeded(degree : String)->String{
    var correctedDegree = ""
    if degree == "-0"{
        correctedDegree = "0"
    }else{
        correctedDegree = degree
    }
    if SettingsModel.temp == SettingsSaver.tempF{
        let num = Int(correctedDegree)
        if num != nil{
            return String((num! * (9/5) + 32))
        }else{
            return ""
        }}
    else{
        return correctedDegree
    }
}
func convertToMpsIfNeeded(wind : String)->String{
    if SettingsModel.wind == SettingsSaver.windMPS{
        let num = Int(wind)
        if num != nil{
            return String(Int(round(Double(num!) / 3.6)))
        }else{
            return ""
        }
    }
    else{
        return wind
    }
}
func convertHpaToHhmmgIfNeeded(pressure : String)->String{
    if SettingsModel.pressure == SettingsSaver.pressureMMHG{
        let num = Int(pressure)
        if num != nil{
            return String(Int(round(Double(num!) / 1.333)))
        }else{
            return ""
        }
    }
    else{
        return pressure
    }
}
func convertSunset(sunset : String)->String{
    let parts = sunset.split(separator: ":")
    let hour = Int(Array(parts)[0]) ?? 0
    let secondPart = parts[1].split(separator: " ")
    let minute = Array(secondPart)[0]
    if Int(hour) < 12{
        let newHour = Int(hour) + 12
        return String(newHour) + ":" + minute
    }else{
        return sunset
    }
}
func convertSunrise(sunrise : String)->String{
    let parts = sunrise.split(separator: " ")
    return String(Array(parts)[0])
}
func clearAllHours(){
    allHours =  ["00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]
}
func removeAlerts(){
    if let alert = UIApplication.shared.keyWindow?.viewWithTag(0) {
        alert.removeFromSuperview()
    }
}









