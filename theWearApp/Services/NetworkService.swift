//
//  NetworkService.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit

class NetworkService{
    
    static let weatherString = "https://api.worldweatheronline.com/premium/v1/weather.ashx?key="
    static let weatherParameters = "&format=json&num_of_days=7&mca=no&tp=1&quot&showlocaltime=yes"
    static let searchString = "https://api.worldweatheronline.com/premium/v1/search.ashx?key="
    static let key = "bf1f9585bf5b4f4e9ce83954192209"
    
    static let shared  = NetworkService()
    
    func loadData(currentCity : String, completion : @escaping (Data)->Void){
        var jsonUrlString = "\(NetworkService.weatherString)\(NetworkService.key)&q=\(currentCity)\(NetworkService.weatherParameters)"
        jsonUrlString = jsonUrlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        var noDiacritics = jsonUrlString.folding(options: .diacriticInsensitive, locale: .current)
        noDiacritics = noDiacritics.replacingOccurrences(of: " ", with: "%20")
        print(noDiacritics)
        let url = URL(string: noDiacritics)
        if url != nil{
            let task = URLSession.shared.dataTask(with: url!){ (data,
                response, err) in
                do {
                    if data != nil{
                        let alldata = try
                            JSONDecoder().decode(Main.self, from: data!)
                        let result = alldata.data
                        completion (result)
                    } else {
                        DispatchQueue.main.async {
                            if alert == nil {
                                alert = Alert(frame: .zero, alert: "Please, try again later or contact us.")
                                if let window = UIApplication.shared.keyWindow {
                                    window.addSubview(alert!)
                                }
                            }
                        }
                        
                    }
                } catch { print("Error deserializing JSON: \(error.localizedDescription)")

                }
            }
            task.resume()
        }
        
    }
    func autocomplete (cityTyped : String, completion : @escaping ([SearchResult]?)->Void){
        
        var newcity = cityTyped.folding(options: .diacriticInsensitive, locale: .current)
        
        print(newcity)
        newcity = cityTyped.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let jsonUrlString = "\(NetworkService.searchString)\(NetworkService.key)&q=\(newcity)&format=json&popular=yes"
        
        let str = jsonUrlString.replacingOccurrences(of: " ", with: "%20")
        let url = URL(string: str)
        if url != nil{
            let task = URLSession.shared.dataTask(with: url!){ (data,
                response, err) in
                do {
                    if data != nil{
                        let alldata = try
                            JSONDecoder().decode(AutocompleteResponse.self, from: data!)
                        let result = alldata.search_api.result
                        completion (result)
                    }else{
                        DispatchQueue.main.async {
                            if alert == nil {
                                alert = Alert(frame: .zero, alert: "Please, try again later or contact us.")
                                if let window = UIApplication.shared.keyWindow {
                                    window.addSubview(alert!)
                                }
                            }
                        }
                        
                    }
                } catch { print("Error deserializing JSON: \(error.localizedDescription)")

                    completion(nil)
                    
                }
            }
            task.resume()
        }
    }
    func autocomplete (latitude : String, longitude : String, completion : @escaping ([SearchResult]?)->Void){
        
        let jsonUrlString = "\(NetworkService.searchString)\(NetworkService.key)&q=\(latitude)%20\(longitude)&format=json&popular=yes"
        let str = jsonUrlString.replacingOccurrences(of: " ", with: "%20")
        let url = URL(string: str)
        let task = URLSession.shared.dataTask(with: url!){ (data,
            response, err) in
            do {
                if data != nil{
                    let alldata = try
                        JSONDecoder().decode(AutocompleteResponse.self, from: data!)
                    let result = alldata.search_api.result
                    completion(result)
                } else {
                    DispatchQueue.main.async {
                        if alert == nil {
                            alert = Alert(frame: .zero, alert: "Please, try again later or contact us.")
                            if let window = UIApplication.shared.keyWindow {
                                window.addSubview(alert!)
                            }
                        }
                    }
                    
                }
            } catch {
                print("Error deserializing JSON: \(error.localizedDescription)")

                completion(nil)
            }
        }
        task.resume()
    }
    
    func getWeather (currentGEO : String, completion : @escaping (Data)->Void){
        let urlString = "\(NetworkService.weatherString)\(NetworkService.key)&q=\(currentGEO)\(NetworkService.weatherParameters)"
        
        print("geo ret \(urlString)")
        let url = URL(string: urlString)
        print(url)
        let task = URLSession.shared.dataTask(with: url!){ (data,
            response, err) in
            do {
                if data != nil{
                    let alldata = try
                        JSONDecoder().decode(Main.self, from: data!)
                    let result = alldata.data
                    completion (result)
                } else {
                    DispatchQueue.main.async {
                        if alert == nil {
                            alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get current forecast. Please, check your internet connection.", comment: ""))
                            if let window = UIApplication.shared.keyWindow {
                                window.addSubview(alert!)
                            }
                        }
                    }
                    
                }
            } catch { print("Error deserializing JSON: \(error.localizedDescription)")

            }
        }
        task.resume()
    }
}
