//
//  AdditionalFunctions.swift
//  theWearApp
//
//  Created by Max Reshetov on 30/06/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func changeCity()
}

var width: CGFloat!
var height: CGFloat!
var top: CGFloat!
var bottom: CGFloat!
var topForStart: CGFloat!
var bottomForStart: CGFloat!

var topVector: CGFloat!
var bottomVector: CGFloat!

func configureSizes() {
    if let window = UIApplication.shared.keyWindow {
        width = window.frame.width
        height = window.frame.height
        top = window.safeAreaInsets.top
        bottom = window.safeAreaInsets.bottom   
    }
}

func createNext() -> UIBezierPath {
    
    topForStart = height - 320
    bottomForStart = height - 120
    topVector = height - 280
    bottomVector = height - 160
    
    let nextPart = UIBezierPath()
    nextPart.move(to: CGPoint(x: width, y: 0))
    nextPart.addLine(to: CGPoint(x: width, y: 0))
    
    nextPart.addLine(to: CGPoint(x: width, y: topForStart))
    nextPart.addCurve(to: CGPoint(x: width, y: height - 220), controlPoint1: CGPoint(x: width, y: topVector), controlPoint2: CGPoint(x: width, y: topVector))
    nextPart.addCurve(to: CGPoint(x: width, y: bottomForStart), controlPoint1: CGPoint(x: width, y: bottomVector), controlPoint2: CGPoint(x: width, y: bottomVector))
    nextPart.addLine(to: CGPoint(x: width, y: height))
    nextPart.addLine(to: CGPoint(x: width, y: height))
    nextPart.close()
    
    return nextPart
}

func createNextWhenPan(_ newX: CGFloat, _ translationX: CGFloat) -> UIBezierPath {
    
    topForStart += 4 * translationX
    bottomForStart -= 4 * translationX
    topVector += 2 * translationX
    bottomVector -= 2 * translationX
    
    let nextPart = UIBezierPath()
    nextPart.move(to: CGPoint(x: width, y: 0))
    nextPart.addLine(to: CGPoint(x: width, y: 0))
    nextPart.addLine(to: CGPoint(x: width, y: topForStart))
    nextPart.addCurve(to: CGPoint(x: newX, y: height - 220), controlPoint1: CGPoint(x: width, y: topVector), controlPoint2: CGPoint(x: newX, y: topVector))
    nextPart.addCurve(to: CGPoint(x: width, y: bottomForStart), controlPoint1: CGPoint(x: newX, y: bottomVector), controlPoint2: CGPoint(x: width, y: bottomVector))
    nextPart.addLine(to: CGPoint(x: width, y: height))
    nextPart.addLine(to: CGPoint(x: width, y: height))
    nextPart.close()
    
    return nextPart
}

func createOpenedNext() -> UIBezierPath {
    
    let nextPart = UIBezierPath()
    nextPart.move(to: CGPoint(x: width, y: 0))
    nextPart.addLine(to: CGPoint(x: 0, y: 0))
    nextPart.addLine(to: CGPoint(x: 0, y: topForStart))
    nextPart.addCurve(to: CGPoint(x: 0, y: height - 220), controlPoint1: CGPoint(x: 0, y: topVector), controlPoint2: CGPoint(x: 0, y: topVector))
    nextPart.addCurve(to: CGPoint(x: 0, y: bottomForStart), controlPoint1: CGPoint(x: 0, y: bottomVector), controlPoint2: CGPoint(x: 0, y: bottomVector))
    nextPart.addLine(to: CGPoint(x: 0, y: height))
    nextPart.addLine(to: CGPoint(x: width, y: height))
    nextPart.close()
    
    return nextPart
}

func createCurrent() -> UIBezierPath {
    
    topForStart = height - 320
    bottomForStart = height - 120
    topVector = height - 280
    bottomVector = height - 160
    
    let currentPart = UIBezierPath()
    currentPart.move(to: .zero)
    currentPart.addLine(to: CGPoint(x: width, y: 0))
    currentPart.addLine(to: CGPoint(x: width, y: height))
    currentPart.addLine(to: CGPoint(x: 0, y: height))
    currentPart.addLine(to: CGPoint(x: 0, y: bottomForStart))
    currentPart.addCurve(to: CGPoint(x: 0, y: height - 220), controlPoint1: CGPoint(x: 0, y: bottomVector), controlPoint2: CGPoint(x: 0, y: bottomVector))
    currentPart.addCurve(to: CGPoint(x: 0, y: topForStart), controlPoint1: CGPoint(x: 0, y: topVector), controlPoint2: CGPoint(x: 0, y: topVector))
    currentPart.close()
    
    return currentPart
}

func createCurrentWhenPan(_ newX: CGFloat, _ translationX: CGFloat) -> UIBezierPath {
    
    topForStart -= 4 * translationX
    bottomForStart += 4 * translationX
    topVector -= 2 * translationX
    bottomVector += 2 * translationX
    
    let currentPart = UIBezierPath()
    currentPart.move(to: .zero)
    currentPart.addLine(to: CGPoint(x: width, y: 0))
    currentPart.addLine(to: CGPoint(x: width, y: height))
    currentPart.addLine(to: CGPoint(x: 0, y: height))
    currentPart.addLine(to: CGPoint(x: 0, y: bottomForStart))
    currentPart.addCurve(to: CGPoint(x: newX, y: height - 220), controlPoint1: CGPoint(x: 0, y: bottomVector), controlPoint2: CGPoint(x: newX, y: bottomVector))
    currentPart.addCurve(to: CGPoint(x: 0, y: topForStart), controlPoint1: CGPoint(x: newX, y: topVector), controlPoint2: CGPoint(x: 0, y: topVector))
    currentPart.close()
    
    return currentPart
}

func createClosedCurrent() -> UIBezierPath {
    
    let currentPart = UIBezierPath()
    currentPart.move(to: CGPoint(x: width, y: 0))
    currentPart.addLine(to: CGPoint(x: width, y: 0))
    currentPart.addLine(to: CGPoint(x: width, y: height))
    currentPart.addLine(to: CGPoint(x: width, y: height))
    currentPart.addLine(to: CGPoint(x: width, y: bottomForStart))
    currentPart.addCurve(to: CGPoint(x: width, y: height - 220), controlPoint1: CGPoint(x: width, y: bottomVector), controlPoint2: CGPoint(x: width, y: bottomVector))
    currentPart.addCurve(to: CGPoint(x: width, y: topForStart), controlPoint1: CGPoint(x: width, y: topVector), controlPoint2: CGPoint(x: width, y: topVector))
    currentPart.close()
    
    return currentPart
}

