//
//  API Requests .swift
//  theWear
//
//  Created by Валентина on 17/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import Foundation


func loadData( currentCity : String, completion : @escaping (Data)->Void){
    var jsonUrlString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key=567c3548fe97464a9c1173812191603&q=\(currentCity)&format=json&num_of_days=7&mca=no&tp=1&quot"
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
func loadData( lattitude : String, longitude : String, completion : @escaping (Data)->Void){
    var jsonUrlString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key=567c3548fe97464a9c1173812191603&q=\(lattitude)\("%20")\(longitude)&format=json&num_of_days=5"
    
    jsonUrlString = jsonUrlString.replacingOccurrences(of: ",", with: "")
    let url = URL(string: jsonUrlString)
    if url != nil {
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
}



func autocomplete (cityTyped : String, completion : @escaping ([SearchResult])->Void){
    
    let jsonUrlString = "https://api.worldweatheronline.com/premium/v1/search.ashx?key=567c3548fe97464a9c1173812191603&q=\(cityTyped)&format=json"
    let url = URL(string: jsonUrlString)
    let task = URLSession.shared.dataTask(with: url!){ (data,
        response, err) in
        do {
            let alldata = try
                JSONDecoder().decode(AutocompleteResponse.self, from: data!)
            let result = alldata.search_api.result
            completion (result)
        } catch { print("Error deserializing JSON: \(error)")}
    }
    task.resume()
}
func autocomplete (lattitude : String, longitude : String, completion : @escaping ([SearchResult])->Void){
    
    let jsonUrlString = "https://api.worldweatheronline.com/premium/v1/search.ashx?key=567c3548fe97464a9c1173812191603&q=\(lattitude)\("%20")\(longitude)&format=json"
    let url = URL(string: jsonUrlString)
    if url != nil {
    let task = URLSession.shared.dataTask(with: url!){ (data,
        response, err) in
        do {
            let alldata = try
                JSONDecoder().decode(AutocompleteResponse.self, from: data!)
            let result = alldata.search_api.result
            completion (result)
        } catch { print("Error deserializing JSON: \(error)")}
    }
    task.resume()
}
}

func getWeather (currentGEO : String, completion : @escaping (Data)->Void){
    let urlString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key=567c3548fe97464a9c1173812191603&q=\(currentGEO)&format=json&num_of_days=7&mca=no&tp=1&quot"
    //    var jsonUrlString = currentURL
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


