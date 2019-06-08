
import Foundation
import UIKit
//MARK : GLOBAL VARIABLES HERE
var tempUnit = "ºC"{
    didSet{
        
    }
}
var windUnit = "km/h"
var pressureUnit = "hPa"
var gender = "man"
var notificationEnabled = true
//
var selectedPartOfDay : Int = partOfDayNow
var hourOfPush = 22
var minuteOfPush = 00
var selectedCity = ""
var selectedDay :Int = 0  {
    willSet(newvalue){
        NotificationCenter.default.post(Notification(name: dayChangedName))
        print("SELECTED DAY NOW IS \(newvalue)")
        
    }
}
let dayChangedName = Notification.Name("dayChanged")
let afterInactive = Notification.Name("afterInactive")

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
//

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
    func saveUnitForDetails(){
        UserDefaults.standard.set("ºC", forKey: "temperature")
        UserDefaults.standard.set("hPa", forKey: "pressure")
        UserDefaults.standard.set("km/h", forKey: "wind")
        UserDefaults.standard.set("man", forKey: "gender")
        UserDefaults.standard.set(true, forKey: "notifications")
        UserDefaults.standard.set(22, forKey: "hour")
        UserDefaults.standard.set(00, forKey: "minute")
        tempUnit = "ºC"
        pressureUnit = "hPa"
        windUnit = "km/h"
        gender = "man"
        notificationEnabled = true
        hourOfPush = 22
        minuteOfPush = 00
}
func retrieveSettings(){
    tempUnit = UserDefaults.standard.value(forKey: "temperature") as! String
    pressureUnit = UserDefaults.standard.value(forKey: "pressure") as! String
    windUnit = UserDefaults.standard.value(forKey: "wind") as! String
    gender = UserDefaults.standard.value(forKey: "gender") as! String
    notificationEnabled = UserDefaults.standard.value(forKey: "notifications") as! Bool
    hourOfPush = UserDefaults.standard.value(forKey: "hour") as! Int
    minuteOfPush = UserDefaults.standard.value(forKey: "minute") as! Int
    
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


