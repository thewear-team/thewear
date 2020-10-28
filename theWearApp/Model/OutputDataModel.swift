//
//  OutputDataModel.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation


struct OneDayDetails {
    let wind : String
    let humidity : String
    let sunrise : String
    let sunset : String
    let uv : String
    init(wind : String, humidity : String, sunrise : String, sunset : String, uv : String) {
        self.wind = wind
        self.humidity = humidity
        self.sunrise = sunrise
        self.sunset = sunset
        self.uv = uv
    }
}

struct OneWeatherDay {
    let date : String
    var morningtemp : String
    var daytemp : String
    var eveningtemp : String
    var nighttemp : String?
    
    var morningfeelslike : String
    var dayfeelslike : String
    var eveningfeelslike : String
    var nightfeelslike : String?
    
    let morningcode : String
    let daycode : String
    let eveningcode : String
    let nightcode : String?
    
    
    let pressure : String
    let humidity : String
    let wind : String
    let uv : String
    let sunrise : String
    let sunset : String
    
    
    
    init(
        date : String,
        morningtemp: String,
        daytemp: String,
        eveningtemp: String,
        nighttemp : String,
        
        morningfeelslike: String,
        dayfeelslike: String,
        eveningfeelslike: String,
        nightfeelslike: String,
        
        morningcode: String,
        daycode: String,
        eveningcode: String,
        nightcode: String,
        
        pressure : String,
        humidity : String,
        wind : String,
        uv: String,
        sunset: String,
        sunrise : String) {
        self.date = date
        self.morningtemp = morningtemp
        self.daytemp = daytemp
        self.eveningtemp = eveningtemp
        self.nighttemp = nighttemp
        
        self.morningfeelslike = morningfeelslike
        self.dayfeelslike = dayfeelslike
        self.eveningfeelslike = eveningfeelslike
        self.nightfeelslike = nightfeelslike
        
        self.morningcode = morningcode
        self.daycode = daycode
        self.eveningcode = eveningcode
        self.nightcode = nightcode
        
        self.pressure = pressure
        self.humidity = humidity
        self.wind = wind
        self.uv = uv
        self.sunset = sunset
        self.sunrise = sunrise
    }
    init(date : String,
         morningtemp: String,
         daytemp: String,
         eveningtemp: String,
         
         morningfeelslike: String,
         dayfeelslike: String,
         eveningfeelslike: String,
         
         morningcode: String,
         daycode: String,
         eveningcode: String,
         
         pressure : String,
         humidity : String,
         wind : String,
         uv: String,
         sunset: String,
         sunrise : String) {
        self.date = date
        self.morningtemp = morningtemp
        self.daytemp = daytemp
        self.eveningtemp = eveningtemp
        
        self.morningfeelslike = morningfeelslike
        self.dayfeelslike = dayfeelslike
        self.eveningfeelslike = eveningfeelslike
        
        self.morningcode = morningcode
        self.daycode = daycode
        self.eveningcode = eveningcode
        
        self.pressure = pressure
        self.humidity = humidity
        self.wind = wind
        
        self.nightcode = nil
        self.nighttemp = nil
        self.nightfeelslike = nil
        self.uv = uv
        self.sunset = sunset
        self.sunrise = sunrise
    }
    
    func getSunsetHour(day : OneWeatherDay)->Int{
        
        let sunsetHour = Int(day.sunset) ?? 0
        return sunsetHour + 12
    }
    func getRiseHour(day : OneWeatherDay)->Int{
        return Int(day.sunrise) ?? 0
    }
    
    
}
