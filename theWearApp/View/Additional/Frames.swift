//
//  Frames.swift
//  theWearApp
//
//  Created by Max Reshetov on 05/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

final class Frames {
    
    static let shared = Frames()
    
    // Frames
    lazy var width = UIApplication.shared.keyWindow!.frame.width
    lazy var height = UIApplication.shared.keyWindow!.frame.height
    lazy var top = UIApplication.shared.keyWindow!.safeAreaInsets.top
    lazy var bottom = UIApplication.shared.keyWindow!.safeAreaInsets.bottom
    var keyboard: CGFloat = 343
    var personScale: CGFloat = 0.95
    
    // Layers
    lazy var newY = UIApplication.shared.keyWindow!.frame.height - 220
    var topForStart: CGFloat = 0
    var bottomForStart: CGFloat = 0
    var translationPump4: CGFloat = 0
    var translationPump2: CGFloat = 0
    var topVector: CGFloat = 0
    var bottomVector: CGFloat = 0
    
    // Fonts
    var cityFont: UIFont!
    var dateFont: UIFont!
    var partFont: UIFont!
    var mediumFont: UIFont!
    var mediumSmallFont: UIFont!
    var regularFont: UIFont!
    var regularSmallFont: UIFont!
    var tempFont: UIFont!
    var paddingBetweenWind: CGFloat!
    
    var mainAlertFont: UIFont!
    var descriptionAlertFont: UIFont!
    
    var expansion: CGFloat!
    
    func configureShared() {
        
        var city: CGFloat = 0
        var date: CGFloat = 0
        var part: CGFloat = 0
        var medium: CGFloat = 0
        var mediumSmall: CGFloat = 0
        var regular: CGFloat = 0
        var regularSmall: CGFloat = 0
        var temp: CGFloat = 0
        
        var malert: CGFloat = 0
        var dalert: CGFloat = 0
        
        if height == 896 {
            
            personScale = 0.95
            city = 38
            date = 18
            part = 154
            medium = 22
            mediumSmall = 18
            regular = 18
            regularSmall = 14
            temp = 50
            paddingBetweenWind = 30
            expansion = 30
            
            malert = 18
            dalert = 14
            
        } else if height == 812 {
            
            personScale = 0.8
            city = 36
            date = 16
            part = 124
            medium = 20
            mediumSmall = 16
            regular = 16
            regularSmall = 12
            temp = 48
            paddingBetweenWind = 15
            expansion = 20
            
            malert = 18
            dalert = 14
            
        } else if height == 736 {
            
            personScale = 0.8
            city = 32
            date = 14
            part = 124
            medium = 18
            mediumSmall = 14
            regular = 14
            regularSmall = 10
            temp = 44
            paddingBetweenWind = 30
            expansion = 20
            
            malert = 18
            dalert = 14
            
        } else if height == 667 {
            
            personScale = 0.7
            city = 30
            date = 14
            part = 124
            medium = 18
            mediumSmall = 14
            regular = 14
            regularSmall = 10
            temp = 43
            paddingBetweenWind = 15
            expansion = 20
            
            malert = 18
            dalert = 14
            
        } else if height == 568 {
            
            personScale = 0.55
            city = 26
            date = 13
            part = 94
            medium = 15
            mediumSmall = 13
            regular = 13
            regularSmall = 9
            temp = 36
            paddingBetweenWind = 10
            expansion = 15
            
            malert = 18
            dalert = 14
            
        } else if height == 1024 {
            
            personScale = 1.3
            city = 42
            date = 26
            part = 156
            medium = 28
            mediumSmall = 24
            regular = 22
            regularSmall = 9
            temp = 60
            paddingBetweenWind = 75
            expansion = 15
            
            malert = 24
            dalert = 22
            
        } else if height == 1366 {
            
            personScale = 1.3
            city = 42
            date = 26
            part = 156
            medium = 28
            mediumSmall = 24
            regular = 22
            regularSmall = 9
            temp = 60
            paddingBetweenWind = 105
            expansion = 15
            
            malert = 24
            dalert = 22
            
        } else if height == 834 {
            
            personScale = 1.3
            city = 42
            date = 26
            part = 156
            medium = 28
            mediumSmall = 24
            regular = 22
            regularSmall = 9
            temp = 60
            paddingBetweenWind = 105
            expansion = 15
            
            malert = 24
            dalert = 22
            
        } else if height == 1194 {
            
            personScale = 1.3
            city = 42
            date = 26
            part = 156
            medium = 28
            mediumSmall = 24
            regular = 22
            regularSmall = 9
            temp = 60
            paddingBetweenWind = 90
            expansion = 15
            
            malert = 24
            dalert = 22
            
        } else if height == 1112 {
            
            personScale = 1.3
            city = 42
            date = 26
            part = 156
            medium = 28
            mediumSmall = 24
            regular = 22
            regularSmall = 9
            temp = 60
            paddingBetweenWind = 75
            expansion = 15
            
            malert = 24
            dalert = 22
            
        } 
        
        cityFont = UIFont(name: "AvenirNext-Medium", size: city)
        dateFont = UIFont(name: "AvenirNext-Medium", size: date)
        partFont = UIFont(name: "AvenirNext-DemiBold", size: part)
        mediumFont = UIFont(name: "AvenirNext-Medium", size: medium)
        mediumSmallFont = UIFont(name: "AvenirNext-Medium", size: mediumSmall)
        regularFont = UIFont(name: "AvenirNext-Regular", size: regular)
        regularSmallFont = UIFont(name: "AvenirNext-Regular", size: regularSmall)
        tempFont = UIFont(name: "AvenirNext-DemiBold", size: temp)
        
        mainAlertFont = UIFont(name: "AvenirNext-Medium", size: malert)
        descriptionAlertFont = UIFont(name: "AvenirNext-Regular", size: dalert)
    }
    
    private init() {}
}
