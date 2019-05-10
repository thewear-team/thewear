//
//  WeatherCodes&Statuses.swift
//  theWearApplication
//
//  Created by Валентина on 22/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import UIKit
struct Status {
    let code : String = ""
    let comment : String = ""
    var color : UIColor = UIColor.clear

    mutating func initColor (rValue : Int, gValue : Int, bValue : Int){
        let newColor = UIColor(red: CGFloat(rValue / 255), green: CGFloat(gValue / 255), blue: CGFloat(bValue / 255), alpha: 1)
        self.color = newColor
    }
}
func initAllColors (){
    
}
var statuses : [String : (String, Int, Int, Int)] = ["395" : ("Snow with thunder", 185, 199, 220),
                                    "392" : ("Light snow with thunder", 115, 137, 158),
                                    "389" : ("Rain with thunder", 122, 127, 156),
                                    "386" : ("Light rain with thunder", 115, 137, 158),
                                    "377" : ("Showers of ice pellets", 176, 197, 221),
                                    "374" : ("Light showers of ice pellets", 219, 230, 241),
                                    "371" : ("Snow showers", 185, 202, 220),
                                    "368" : ("Light snow showers", 215, 226, 238),
                                    "365" : ("Sleet showers", 185, 203, 218),
                                    "362" : ("Light sleet showers", 208, 223, 237),
                                    "359" : ("Torrential rain shower", 132, 148, 165),
                                    "356" : ("Rain shower", 162, 178, 195),
                                    "353" : ("Light rain shower", 177, 202, 230),
                                    "350" : ("Ice pellets", 224, 236, 250),
                                    "338" : ("Heavy snow", 174, 191, 211),
                                    "335" : ("Patchy heavy snow", 185, 202, 220),
                                    "332" : ("Moderate snow", 194, 212, 233),
                                    "329" : ("Patchy moderate snow", 203, 221, 241),
                                    "326" : ("Light snow", 215, 226, 238),
                                    "323" : ("Patchy light snow", 222, 233, 246),
                                    "320" : ("Sleet", 195, 204, 214),
                                    "317" : ("Light sleet", 214, 221, 229),
                                    "314" : ("Freezing rain", 155, 166, 179),
                                    "311" : ("Light freezing rain", 155, 171, 188),
                                    "308" : ("Heavy rain", 107, 126, 146),
                                    "305" : ("Heavy rain at times", 128, 144, 161),
                                    "302" : ("Moderate rain", 169, 180, 190),
                                    "299" : ("Moderate rain at times", 177, 187, 197),
                                    "296" : ("Light rain",177, 202,230),
                                    "293" : ("Patchy light rain", 177, 202,230),
                                    "284" : ("Heavy freezing drizzle", 143, 163,183),
                                    "281" : ("Freezing drizzle", 166, 187,210),
                                    "266" : ("Light drizzle",204,214,225),
                                    "263" : ("Patchy light drizzle",177,202,230),
                                    "260" : ("Freezing fog",208,210,216),
                                    "248" : ("Fog",209,208,216),
                                    "230" : ("Blizzard",181,205,214),
                                    "227" : ("Blowing snow", 195,215,226),
                                    "200" : ("Thundery outbreaks", 122,127,156),
                                    "185" : ("Freezing drizzle",179,179,230),
                                    "182" : ("Patchy sleet nearby",179,197,230),
                                    "179" : ("Patchy snow nearby",195,228,242),
                                    "176" : ("Patchy rain nearby", 125, 182, 217),
                                    "143" : ("Mist", 227, 226, 233),
                                    "122" : ("Overcast", 180, 203, 230),
                                    "119" : ("Cloudy", 195, 228, 243),
                                    "116" : ("Partly Cloudy", 145, 207, 236),
                                    "113" : ("Sunny", 36, 158, 217)]
