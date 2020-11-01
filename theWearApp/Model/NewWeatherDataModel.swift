//
//  NewWeatherDataModel.swift
//  theWearApp
//
//  Created by Валентина on 29.10.2020.
//  Copyright © 2020 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit


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

struct ForecastData : Codable{
    let forecast : Forecast
    let current : Current
    let location : Location
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
    let maxtemp_c :  Decimal
    let maxtemp_f: Decimal
    let mintemp_c: Decimal
    let mintemp_f: Decimal
    let avgtemp_c: Decimal
    let avgtemp_f: Decimal
    let maxwind_mph: Decimal
    let maxwind_kph: Decimal
    let avgvis_km: Decimal
    let avgvis_miles: Decimal
    let avghumidity: Decimal
    let daily_will_it_rain: Int
    let daily_chance_of_rain: String
    let daily_chance_of_snow: String
    let condition : Condition
}

struct Astro : Codable{
    let sunrise : String
    let sunset : String
    let moonrise : String
    let moonset : String
    let moon_phase : String
}

struct Hour : Codable{
    let time : String
    let condition : Condition
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
    let will_it_rain: Int
    let will_it_snow: Int
}
struct AutocompleteSearch : Codable{
    let name : String
    let region : String
    let country : String
    let lat : Decimal
    let lon : Decimal
    let url : String
    
}
