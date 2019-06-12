//
//  configurePercentage.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 07/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

var top: CGFloat = 0.0
var bottom: CGFloat = 0.0
var width: CGFloat = 0.0
var height: CGFloat = 0.0
var fullHeight: CGFloat = 0.0
var keyWindow: UIWindow!
var buttonSize: CGFloat = 0.0
var cornerRadius: CGFloat = 0.0

var fontForNowTemperature: CGFloat = 0.0
var fontForAdditional: CGFloat = 0.0

func configurePaddingsAndFrame() {
    if #available(iOS 11.0, *) {
        let window = UIApplication.shared.keyWindow
        let topPadding = window?.safeAreaInsets.top
        top = topPadding!
        bottom = (window?.safeAreaInsets.bottom)!
        width = (window?.frame.width)!
        height = (window?.frame.height)! - top - bottom
        fullHeight = (window?.frame.height)!
        keyWindow = window!
        buttonSize = height * 0.04
    }
    
    cornerRadius = (-(fullHeight * 0.8 / -fullHeight * 0.1) * ((fullHeight * 0.1) / 8)) * 100
    
    if fullHeight == 896 {
        fontForNowTemperature = 32
        fontForAdditional = 18
    } else if fullHeight == 812 {
        fontForNowTemperature = 30
        fontForAdditional = 16
    } else if fullHeight == 736 {
        fontForNowTemperature = 28
        fontForAdditional = 16
    } else if fullHeight == 667 {
        fontForNowTemperature = 26
        fontForAdditional = 14
    } else if fullHeight == 568 {
        fontForNowTemperature = 24
        fontForAdditional = 14
    }
    
}
