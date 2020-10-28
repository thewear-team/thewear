//
//  Code&Colors.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit
struct Status {
    let code : String = ""
    let comment : String = ""
    var color : UIColor = UIColor.clear
    
    static func getColorcomponents(of code : String)->(Int,Int,Int){
        let codeValues = allStatuses[code]
        if codeValues != nil{
            return (codeValues!.1 , codeValues!.2, codeValues!.3)
        } else{
            return(0,0,0)
        }
    }
    static func changeColorForPartOfDay(color : (Int,Int,Int), partOfDay : Int)->(Int,Int,Int){
        switch partOfDay {
        case 0:
            return(color.0 + 10, color.1 + 10, color.2 + 10)
        case 1:
            return(color.0 , color.1 , color.2 )
        case 2:
            return(color.0 - 10, color.1 - 10, color.2 - 10)
        default:
            return color
        }
        
    }
    
    static func prepareSunsetAlpha(weathercode : String, partOfDay : Int)->Float{
        let code = Int(weathercode) ?? 000
        switch code {
        case  392, 374, 368, 362, 350, 335, 329, 326, 323, 317, 311, 281, 260, 248, 230, 227, 182, 185, 179:
            print("snow самый светлый")
            return 0.9
        case 395, 377, 371, 365, 338, 332, 320, 314, 284:
            print("snow потемнее")
            return 0.95
        default :
            return 1
            
        }
        
    }
    
    
    static var allStatuses : [String : (String, Int, Int, Int)] = ["395" : ("Snow with thunder", 115, 137, 158),
                                                                   "392" : ("Light snow with thunder", 115, 137, 158),
                                                                   "389" : ("Rain with thunder", 122, 127, 156), //
        "386" : ("Light rain with thunder", 115, 137, 158),
        "377" : ("Showers of ice pellets", 176, 197, 221),
        "374" : ("Light showers of ice pellets", 204, 211, 219),
        "371" : ("Snow showers", 185, 202, 220),
        "368" : ("Light snow showers", 204, 211, 219),
        "365" : ("Sleet showers", 185, 203, 218),
        "362" : ("Light sleet showers",  204, 211, 219),
        "359" : ("Torrential rain shower", 132, 148, 165),
        "356" : ("Rain shower", 162, 178, 195),
        "353" : ("Light rain shower", 177, 202, 230),
        "350" : ("Ice pellets",183, 201, 221),
        "338" : ("Heavy snow", 174, 191, 211),
        "335" : ("Patchy heavy snow", 185, 202, 220),
        "332" : ("Moderate snow", 183, 201, 221),
        "329" : ("Patchy moderate snow",183, 201, 221),
        "326" : ("Light snow", 185, 196, 208),
        "323" : ("Patchy light snow", 185, 196, 208),
        "320" : ("Sleet", 175, 184, 194),
        "317" : ("Light sleet", 204, 211, 219),
        "314" : ("Freezing rain", 155, 166, 179),
        "311" : ("Light freezing rain", 155, 171, 188),
        "308" : ("Heavy rain", 128, 144, 161),
        "305" : ("Heavy rain at times", 128, 144, 161),
        "302" : ("Moderate rain", 167, 177, 187),
        "299" : ("Moderate rain at times", 167, 177, 187),
        "296" : ("Light rain",177, 202,230),
        "293" : ("Patchy light rain", 177, 202,230),
        "284" : ("Heavy freezing drizzle", 143, 163,183),
        "281" : ("Freezing drizzle", 166, 187,210),
        "266" : ("Light drizzle",174,184,195),
        "263" : ("Patchy light drizzle",177,202,230),
        "260" : ("Freezing fog",188,210,216),
        "248" : ("Fog", 177, 202, 230),
        "230" : ("Blizzard",181,205,214),
        "227" : ("Blowing snow", 175,215,226),
        "200" : ("Thundery outbreaks", 122,127,156),
        "182" : ("Patchy sleet", 185, 203, 218),
        "185" : ("Patchy freezing drizzle", 166, 187,210),
        "179" : ("Patchy snow nearby",195,228,242),
        "176" : ("Patchy rain nearby", 125, 182, 217),
        "143" : ("Mist", 177, 202, 230),
        "122" : ("Overcast", 180, 203, 230),
        "119" : ("Cloudy", 179, 204, 230),
        "116" : ("Partly Cloudy", 145, 207, 236),
        "1160" : ("Partly Cloudy", 76, 88, 140),
        "113" : ("Sunny", 36, 158, 207),
        "1130" : ("Sunny", 46, 68, 130),
        "000" : ("Clear", 46, 68, 130),
        "001" : ("Late Evening||Early Morning", 76, 88, 140),
        "111" : ("Early Morning", 112, 141, 194),
        "999" : ("Sunset", 159, 171, 234),
    ]

    
    mutating func initColor (rValue : Int, gValue : Int, bValue : Int){
        self.color = UIColor(red: CGFloat(rValue / 255), green: CGFloat(gValue / 255), blue: CGFloat(bValue / 255), alpha: 1)
    }
    
}

