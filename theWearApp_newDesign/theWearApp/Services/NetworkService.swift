//
//  NetworkService.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation

class NetworkService{

    static let key = "108a6709f18a4c2b873191450191805" // to network service
    
    static let shared  = NetworkService()
    
    func loadData(currentCity : String, completion : @escaping (Data)->Void){
        var jsonUrlString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key=\(NetworkService.key)&q=\(currentCity)&format=json&num_of_days=7&mca=no&tp=1&quot"
        print(jsonUrlString)
        //    jsonUrlString = jsonUrlString.removingPercentEncoding!
        jsonUrlString = jsonUrlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        var noDiacritics = jsonUrlString.folding(options: .diacriticInsensitive, locale: .current)
        noDiacritics = noDiacritics.replacingOccurrences(of: " ", with: "%20")
        print(noDiacritics)
        let url = URL(string: noDiacritics)
        if url != nil{
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
        //%20TÅ%C2%8DkyÅ%C2%8D,%20
    }
    func autocomplete (cityTyped : String, completion : @escaping ([SearchResult]?)->Void){
        
        var newcity = cityTyped.folding(options: .diacriticInsensitive, locale: .current)
        
        print(newcity)
        newcity = cityTyped.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let jsonUrlString = "https://api.worldweatheronline.com/premium/v1/search.ashx?key=\(NetworkService.key)&q=\(newcity)&format=json"
        let str = jsonUrlString.replacingOccurrences(of: " ", with: "%20")
        let url = URL(string: str)
        if url != nil{
            let task = URLSession.shared.dataTask(with: url!){ (data,
                response, err) in
                do {
                    let alldata = try
                        JSONDecoder().decode(AutocompleteResponse.self, from: data!)
                    let result = alldata.search_api.result
                    completion (result)
                } catch { print("Error deserializing JSON: \(error)")
                    completion(nil)
                    
                }
            }
            task.resume()
        }
    }
    func autocomplete (latitude : String, longitude : String, completion : @escaping ([SearchResult]?)->Void){
        
        let jsonUrlString = "https://api.worldweatheronline.com/premium/v1/search.ashx?key=\(NetworkService.key)&q=\(latitude)%20\(longitude)&format=json"
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
                completion(nil)
            }
        }
        task.resume()
    }
    
    func getWeather (currentGEO : String, completion : @escaping (Data)->Void){
        let urlString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key=\(NetworkService.key)&q=\(currentGEO)&format=json&num_of_days=7&mca=no&tp=1&quot"
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
}
