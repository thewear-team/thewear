//
//  GlobalVariables.swift
//  theWearApp
//
//  Created by Max Reshetov on 04/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

let lock = NSLock()

var alert: Alert?

var page = 0
var selectedDay = 0 
var currentCondition = ("", "", "") //for output/ current (temp, feelslike, code)

var parts = [ NSLocalizedString("Morning", comment: ""), NSLocalizedString("Day", comment: ""), NSLocalizedString("Evening", comment: ""), NSLocalizedString("Night", comment: "")]


var currentCity  = "Moscow"
var lastLocation = ""

var hourNow = 0
var partOfDayNow = 0
var hoursTemps = [String]()
var hoursIcons = [String]()
var iconNames = ["113", "116", "000", "333"]
var temperature = ["-", "-", "-", "-"]
var feelsLike = ["-", "-", "-", "-"]
var condition = ["--", "--", "--", "--"]
var colors = [UIColor(red: 37/255, green: 158/255, blue: 217/255, alpha: 1), UIColor(red: 19/255, green: 88/255, blue: 177/255, alpha: 1), UIColor(red: 45/255, green: 67/255, blue: 130/255, alpha: 1), UIColor(red: 37/255, green: 158/255, blue: 217/255, alpha: 1)]
var lastShownColor : UIColor? = nil 

var persons = [UIView(), UIView(), UIView(), UIView()]
var sunset : Int = 0
var sunrise : Int = 0

var extraDayComponent : (String, String, String, String)?  //temp feels icon condition
var extraColor : UIColor?

var allHours : [String] = ["00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]
var allDays : [OneWeatherDay] = [] //contain 7 days by parts + details
var futureDaysColors : [UIColor] = Array(repeating: UIColor(red: 37/255, green: 158/255, blue: 217/255, alpha: 1), count : 7)
var allDates : [String] = Array(repeating: "June 21, Friday", count: 7)

var hourOfPush = 18

var notificationEnabled = "disabled"
var notificationSelected = false

var cities = [String]()



