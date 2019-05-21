//
//  Requests.swift
//  coreDataEx
//
//  Created by Валентина on 19/04/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import Foundation
import UIKit

let key = "108a6709f18a4c2b873191450191805"
enum PartsOfDay : Int{
    case morning = 0
    case day = 1
    case evening = 2
    case night = 3
    
}

struct Main : Decodable {
    var data : Data
}
//  все для выведения на главный экран готово
// оба комента - в методах
//// температура по часам в методе
struct Data : Decodable{
    let request : [Request]
    var current_condition : [Current_condition]
    let weather : [Weather] // all days
}

struct Request: Decodable {
    let query: String?
    let query2: String?
}

struct Current_condition: Decodable {
    let temp_C : String
    let temp_F : String
    let weatherCode : String
    let windspeedMiles : String
    let windspeedKmph : String
    let winddir16Point : String
    let humidity : String
    let pressure : String
    let cloudcover : String
    var FeelsLikeC : String
    let FeelsLikeF : String
    let weatherDesc : [WeatherDesc]
    let weatherIconUrl : [WeatherIconUrl]
}

struct Weather: Decodable { //one day
    let date : String?
    let astronomy : [Astronomy]?
    let maxtempC : String?
    let maxtempF : String?
    let mintempC : String?
    let mintempF : String?
    let totalSnow_cm : String?
    let sunHour : String?
    let uvIndex : String?
    let hourly : [Hourly]?
}

struct Astronomy: Decodable {
    let sunrise: String
    let sunset : String
    let moonrise : String
    let moonset: String
    let moon_phase: String
    let moon_illumination : String
}

struct Hourly : Decodable{
    let time : String
    let tempC : String
    let tempF: String
    let windspeedMiles: String
    let windspeedKmph: String
    let weatherCode: String
    let weatherDesc : [WeatherDesc]
    let weatherIconUrl : [WeatherIconUrl]
    let precipMM: String
    let humidity: String
    let visibility: String
    let pressure: String
    let cloudcover:String
    let HeatIndexC: String
    let HeatIndexF: String
    let WindChillC: String
    let WindChillF: String
    let WindGustMiles: String
    let WindGustKmph: String
    let FeelsLikeC: String
    let FeelsLikeF: String
//    let chanceofrain: String
//    let chanceofremdry:String
//    let chanceofwindy: String
//    let chanceofovercast: String
//    let chanceofsunshine: String
//    let chanceoffrost: String
//    let chanceofhightemp: String
//    let chanceoffog: String
//    let chanceofsnow: String
//    let chanceofthunder: String
}

struct WeatherDesc : Decodable{
    let value : String
}

struct WeatherIconUrl: Decodable {
    let value : String
}

//MARK : autocomplete search results
struct AutocompleteResponse: Decodable {
    let search_api : SearchApi
}
struct SearchApi: Decodable {
    let result : [SearchResult]
}
struct SearchResult : Decodable{
    let areaName : [AreaName]
    let country : [Country]
    let region : [Region]
    let latitude :String
    let longitude : String
    let weatherUrl : [WeatherUrl]
}
struct AreaName : Decodable{
    let value : String
}
struct Country : Decodable{
    let value : String
}
struct Region : Decodable{
    let value : String
}
struct WeatherUrl : Decodable{
    let value : String?
}
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

//MARK : requests

func loadData(currentCity : String, completion : @escaping (Data)->Void){
    var jsonUrlString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key=\(key)&q=\(currentCity)&format=json&num_of_days=7&mca=no&tp=1&quot"
    print(jsonUrlString)
    jsonUrlString = jsonUrlString.replacingOccurrences(of: ",", with: "")
    let url = URL(string: jsonUrlString)
    let task = URLSession.shared.dataTask(with: url!){ (data,
        response, err) in
        do {
            let alldata = try
                JSONDecoder().decode(Main.self, from: data!)
            let result = alldata.data
            completion (result)
        } catch { print("Error deserializing JSON: \(error)")}
    }
    task.resume()
    
}
func autocomplete (cityTyped : String, completion : @escaping ([SearchResult])->Void){
    
    let jsonUrlString = "https://api.worldweatheronline.com/premium/v1/search.ashx?key=\(key)&q=\(cityTyped)&format=json"
    let str = jsonUrlString.replacingOccurrences(of: " ", with: "%20")
    let url = URL(string: str)
    let task = URLSession.shared.dataTask(with: url!){ (data,
        response, err) in
        do {
            let alldata = try
                JSONDecoder().decode(AutocompleteResponse.self, from: data!)
            let result = alldata.search_api.result
            completion (result)
        } catch { print("Error deserializing JSON: \(error)")
    
        }
    }
    task.resume()
}

func getWeather (currentGEO : String, completion : @escaping (Data)->Void){
    let urlString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key=\(key)&q=\(currentGEO)&format=json&num_of_days=7&mca=no&tp=1&quot"
    print("geo request \(urlString)")
    let url = URL(string: urlString)
    let task = URLSession.shared.dataTask(with: url!){ (data,
        response, err) in
        do {
            let alldata = try
                JSONDecoder().decode(Main.self, from: data!)
            let result = alldata.data
            completion (result)
        } catch { print("Error deserializing JSON: \(error)")}
    }
    task.resume()
    
}
