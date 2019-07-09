//
//  Code&Colors.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation

import Foundation
import UIKit
struct Status {
    let code : String = ""
    let comment : String = ""
    var color : UIColor = UIColor.clear
    
   static var allStatuses : [String : (String, Int, Int, Int)] = ["395" : ("Snow with thunder", 115, 137, 158),
                                                         "392" : ("Light snow with thunder", 115, 137, 158),
                                                         "389" : ("Rain with thunder", 122, 127, 156),
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
                                                         "179" : ("Patchy snow nearby",195,228,242),
                                                         "176" : ("Patchy rain nearby", 125, 182, 217),
                                                         "143" : ("Mist", 177, 202, 230),
                                                         "122" : ("Overcast", 180, 203, 230),
                                                         "119" : ("Cloudy", 179, 204, 230),
                                                         "116" : ("Partly Cloudy", 145, 207, 236),
                                                         "113" : ("Sunny", 36, 158, 207),
                                                         "000" : ("Night", 46, 68, 130),
                                                         "001" : ("Late Evening||Early Morning", 76, 98, 160)
    ]

    
    mutating func initColor (rValue : Int, gValue : Int, bValue : Int){
        let newColor = UIColor(red: CGFloat(rValue / 255), green: CGFloat(gValue / 255), blue: CGFloat(bValue / 255), alpha: 1)
        self.color = newColor
    }
}
//MARK : stored statuses
