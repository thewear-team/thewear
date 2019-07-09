//
//  OutputDataModel.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
//MARK : data for main screen output


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
    let morningtemp : String
    let daytemp : String
    let eveningtemp : String
    let nighttemp : String?
    
    let morningfeelslike : String
    let dayfeelslike : String
    let eveningfeelslike : String
    let nightfeelslike : String?
    
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
    
}
