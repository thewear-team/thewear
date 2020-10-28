//
//  AutocompleteDataModel.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation

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
    
    static func getProperAreaName(item : SearchResult)->String{
        var newCityName = item.areaName[0].value
        if !item.region[0].value.isEmpty{
            newCityName = newCityName + ", " + item.region[0].value
        }
        
        if !item.country[0].value.isEmpty{
            newCityName = newCityName + ", " + item.country[0].value
        }
        return newCityName
    }
    static func getSearchAreaName(item : SearchResult)->String{
        var newCityName = item.areaName[0].value
        if !item.country[0].value.isEmpty{
            newCityName = newCityName + ", " + item.country[0].value
        }
        return newCityName
    }
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
