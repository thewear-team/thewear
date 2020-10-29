//
//  NewWeatherDataModel.swift
//  theWearApp
//
//  Created by Валентина on 29.10.2020.
//  Copyright © 2020 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit

struct MainCurrentWeather : Codable{
    let data : CurrentWeather
}
struct CurrentWeather : Codable{
    
    let current : Current
    let location : Location
}

struct Current : Codable{
    let temp_c : Decimal
    let temp_f : Decimal
    let is_day : Int
    let wind_dir : String
    let wind_mph : Decimal
    let wind_kph : Decimal
    let pressure_mb : Decimal
    let pressure_in : Decimal
    let humidity : Int
    let cloud : Int
    let feelslike_c : Decimal
    let feelslike_f : Decimal
    let uv : Decimal
    let condition : Condition
}

struct Location : Codable{
    let name : String
    let country : String
    let lat : Decimal
    let lon : Decimal
}

struct Condition : Codable{
    let text : String
    let code : Int
}

struct Forecast : Codable{
    let forecastday : [Forecastday]
}
struct Forecastday : Codable{
    let date : String
    let day : Day
    let astro : Astro
    let hour : [Hour]
}

struct Day: Codable{

}

struct Astro : Codable{
    
}

struct Hour : Codable{
    
}
