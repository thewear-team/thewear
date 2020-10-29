//
//  NewNNetworkService.swift
//  theWearApp
//
//  Created by Валентина on 29.10.2020.
//  Copyright © 2020 Max Reshetov. All rights reserved.
//

import Foundation

class NewNetworkService{
    
    static let newService = "https://api.weatherapi.com/v1/"
    static let searchCurrentWeather = "current.json?"
    static let key = "key=96f9054226504d2f982182658200510&"
    
    static let shared  = NewNetworkService()
    
    func loadCurrentData(query : String){
        var jsonUrlString = "\(NewNetworkService.newService)\(NewNetworkService.searchCurrentWeather)\(NewNetworkService.key)q=\(currentCity)"
        jsonUrlString = jsonUrlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        var noDiacritics = jsonUrlString.folding(options: .diacriticInsensitive, locale: .current)
        noDiacritics = noDiacritics.replacingOccurrences(of: " ", with: "%20")
        print(noDiacritics)
        let url = URL(string: noDiacritics)
        print(url)
        if url != nil{
            let task = URLSession.shared.dataTask(with: url!){ (data,
                response, err) in
                do {
                    if data != nil{
                        let currentData = try
                            JSONDecoder().decode(CurrentWeather.self, from: data!)
                        let result = currentData.current
                        print(result)
                        print(currentData)
                    } else {
                    }
                } catch {
                    print(error)
                }
            }
            task.resume()
        }
    }
    
    func loadFutureData (query : String){
        let urlString = "\(NetworkService.weatherString)\(NetworkService.key)&q=\(query)\(NetworkService.weatherParameters)"
        
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
                } else {
                    DispatchQueue.main.async {
                        if alert == nil {
                            alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get current forecast. Please, check your internet connection.", comment: ""))
                        }
                    }
                    
                }
            } catch { print("Error deserializing JSON: \(error.localizedDescription)")

            }
        }
        task.resume()
    }
    
}
