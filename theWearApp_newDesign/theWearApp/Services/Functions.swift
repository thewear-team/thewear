//
//  Methods.swift
//  theWearApplication
//
//  Created by Валентина on 10/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
//import UIKit

//разобрать 
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

//func retrieveData(){
//    UserDefaultsService.getLatLong()
//    UserDefaultsService.getPreviousDaysParts()
//    UserDefaultsService.getPreviousTodayHours()
//    UserDefaultsService.getPreviousCurrentCondition()
//}


func getCurrentHours()->Int{
    let currentDate = NSDate() // You can input the custom as well
    let calendar = NSCalendar.current
    let hour = calendar.component(.hour, from: currentDate as Date)
    hourNow = hour
    print(hour)
    return Int(hour)
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
    let date = Date()
    let parts = dateString.split(separator: "-")
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyy-MM-dd"
    guard let newDate = dateFormatter.date(from: dateString) else {
        print("Error while converting the date")
        return nil
        
    }
    dateFormatter.dateFormat = "E, d MMM"
    let currentDateString: String = dateFormatter.string(from: newDate)
    return currentDateString
}


func celciumToFIfNeeded(measure : String, tempC : Int)->String{
    if measure == "ºF"{
        let fTemp = (tempC * (9/5)) + 32
        return String(fTemp)
    }
    else{
        return String(tempC)
    }
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
    case 15 ... 22:
        clothesComment = "Put on a longsleeve."
    case 22 ... 30:
        clothesComment = "Put on a T-shirt."
    case 30 ... 600:
        clothesComment = "Put on your lightest clothes."
    default:
        clothesComment = ""
    }
    return clothesComment
    
}



