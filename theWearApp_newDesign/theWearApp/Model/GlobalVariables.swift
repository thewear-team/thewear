//
//  GlobalVariables.swift
//  theWearApp
//
//  Created by Max Reshetov on 04/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

var currentCity  = "Moscow"
var hourNow = 0
var partOfDayNow = 0

let iconNames = ["113", "116", "000"]
let temperature = ["23°", "20°", "17°"]
let feelsLike = ["Feels like 24°", "Feels like 20°", "Feels like 15°"]
let condition = ["Sunny", "Partly cloudy", "Clear"]

let persons = ["man1", "man2", "man3"]
let weatherIcons = ["113", "116", "000"]
let weather = ["23°", "20°", "17°"]
let weatherDescription = ["Sunny", "Partly Cloudy", "Clear"]
let colors = [UIColor(red: 37/255, green: 158/255, blue: 217/255, alpha: 1), UIColor(red: 19/255, green: 88/255, blue: 177/255, alpha: 1), UIColor(red: 45/255, green: 67/255, blue: 130/255, alpha: 1)]
var page = 0

//FOR SETTINGS
var notificationEnabled = true

// разобрать по классам



var demoCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]
//var standartCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]

var demoHours : [String] = ["00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]

var demoTemp  : [String] = [] // for output /temps by hours
var codesHours  : [String] = [] //for output /codes by hours
var currentCondition = ("", "", "") //for output/ current (temp, feelslike, code)
var allDays : [OneWeatherDay] = [] //contain 7 days by parts + details
var demoDays : [String] = [] // for output
var lastCity = ""
var allCities : [String] = []
//
