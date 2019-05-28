//
//  Helpers.swift
//  theWearApplication
//
//  Created by Валентина on 17/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import UIKit

func getCurrentHours()->Int{
    let currentDate = NSDate() // You can input the custom as well
    let calendar = NSCalendar.current
    let hour = calendar.component(.hour, from: currentDate as Date)
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

