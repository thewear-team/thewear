//
//  AdditionalFunctions.swift
//  theWearApp
//
//  Created by Max Reshetov on 30/06/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.


import UIKit

func createPrevious() -> UIBezierPath {
    let previousPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return previousPart}
    previousPart.move(to: .zero)
    previousPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    previousPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    previousPart.addLine(to: CGPoint(x: 0, y: window.frame.height))
    previousPart.close()
    return previousPart
}

func createNext() -> UIBezierPath {
    
    let frames = Frames.shared
    
    frames.translationPump4 = 0
    frames.translationPump2 = 0
    
    frames.topForStart = frames.newY - 100
    frames.bottomForStart = frames.newY + 100
    frames.topVector = frames.newY - 60
    frames.bottomVector = frames.newY + 60
    
    let nextPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return nextPart}
    nextPart.move(to: CGPoint(x: window.frame.width, y: 0))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: frames.topForStart))
    nextPart.addCurve(to: CGPoint(x: window.frame.width, y: frames.newY), controlPoint1: CGPoint(x: window.frame.width, y: frames.topVector), controlPoint2: CGPoint(x: window.frame.width, y: frames.topVector))
    nextPart.addCurve(to: CGPoint(x: window.frame.width, y: frames.bottomForStart), controlPoint1: CGPoint(x: window.frame.width, y: frames.bottomVector), controlPoint2: CGPoint(x: window.frame.width, y: frames.bottomVector))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    nextPart.close()
    return nextPart
}

func createNextWhenPan(_ newX: CGFloat, _ newY: CGFloat, _ translationX: CGFloat, _ translationY: CGFloat) -> UIBezierPath {
    
    let frames = Frames.shared
    
    frames.translationPump4 += 4 * translationX
    frames.translationPump2 += 2 * translationX
    
    frames.topForStart = newY - 100 + frames.translationPump4
    frames.bottomForStart = newY + 100 - frames.translationPump4
    frames.topVector = newY - 60 + frames.translationPump2
    frames.bottomVector = newY + 60 - frames.translationPump2
    
    let nextPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return nextPart}
    nextPart.move(to: CGPoint(x: window.frame.width, y: 0))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: frames.topForStart))
    nextPart.addCurve(to: CGPoint(x: newX, y: newY), controlPoint1: CGPoint(x: window.frame.width, y: frames.topVector), controlPoint2: CGPoint(x: newX, y: frames.topVector))
    nextPart.addCurve(to: CGPoint(x: window.frame.width, y: frames.bottomForStart), controlPoint1: CGPoint(x: newX, y: frames.bottomVector), controlPoint2: CGPoint(x: window.frame.width, y: frames.bottomVector))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    nextPart.close()
    return nextPart
}

func createOpenedNext() -> UIBezierPath {
    
    let frames = Frames.shared
    
    let nextPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return nextPart}
    nextPart.move(to: CGPoint(x: window.frame.width, y: 0))
    nextPart.addLine(to: CGPoint(x: 0, y: 0))
    nextPart.addLine(to: CGPoint(x: 0, y: frames.topForStart))
    nextPart.addCurve(to: CGPoint(x: 0, y: frames.newY), controlPoint1: CGPoint(x: 0, y: frames.topVector), controlPoint2: CGPoint(x: 0, y: frames.topVector))
    nextPart.addCurve(to: CGPoint(x: 0, y: frames.bottomForStart), controlPoint1: CGPoint(x: 0, y: frames.bottomVector), controlPoint2: CGPoint(x: 0, y: frames.bottomVector))
    nextPart.addLine(to: CGPoint(x: 0, y: window.frame.height))
    nextPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    nextPart.close()
    return nextPart
}

func createCurrent() -> UIBezierPath {
    
    let frames = Frames.shared
    
    frames.translationPump4 = 0
    frames.translationPump2 = 0
    
    frames.topForStart = frames.newY - 100
    frames.bottomForStart = frames.newY + 100
    frames.topVector = frames.newY - 60
    frames.bottomVector = frames.newY + 60
    
    let currentPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return currentPart}
    currentPart.move(to: .zero)
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    currentPart.addLine(to: CGPoint(x: 0, y: window.frame.height))
    currentPart.addLine(to: CGPoint(x: 0, y: frames.bottomForStart))
    currentPart.addCurve(to: CGPoint(x: 0, y: frames.newY), controlPoint1: CGPoint(x: 0, y: frames.bottomVector), controlPoint2: CGPoint(x: 0, y: frames.bottomVector))
    currentPart.addCurve(to: CGPoint(x: 0, y: frames.topForStart), controlPoint1: CGPoint(x: 0, y: frames.topVector), controlPoint2: CGPoint(x: 0, y: frames.topVector))
    currentPart.close()
    return currentPart
}

func createCurrentWhenPan(_ newX: CGFloat, _ newY: CGFloat, _ translationX: CGFloat) -> UIBezierPath {
    
    let frames = Frames.shared
    
    frames.translationPump4 += 4 * translationX
    frames.translationPump2 += 2 * translationX
    
    frames.topForStart = newY - 100 - frames.translationPump4
    frames.bottomForStart = newY + 100 + frames.translationPump4
    frames.topVector = newY - 60 - frames.translationPump2
    frames.bottomVector = newY + 60 + frames.translationPump2
    
    let currentPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return currentPart}
    currentPart.move(to: .zero)
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    currentPart.addLine(to: CGPoint(x: 0, y: window.frame.height))
    currentPart.addLine(to: CGPoint(x: 0, y: frames.bottomForStart))
    currentPart.addCurve(to: CGPoint(x: newX, y: newY), controlPoint1: CGPoint(x: 0, y: frames.bottomVector), controlPoint2: CGPoint(x: newX, y: frames.bottomVector))
    currentPart.addCurve(to: CGPoint(x: 0, y: frames.topForStart), controlPoint1: CGPoint(x: newX, y: frames.topVector), controlPoint2: CGPoint(x: 0, y: frames.topVector))
    currentPart.close()
    return currentPart
}

func createClosedCurrent() -> UIBezierPath {
    
    let frames = Frames.shared
    
    let currentPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return currentPart}
    currentPart.move(to: CGPoint(x: window.frame.width, y: 0))
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: window.frame.height))
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: frames.bottomForStart))
    currentPart.addCurve(to: CGPoint(x: window.frame.width, y: window.frame.height - 220), controlPoint1: CGPoint(x: window.frame.width, y: frames.bottomVector), controlPoint2: CGPoint(x: window.frame.width, y: frames.bottomVector))
    currentPart.addCurve(to: CGPoint(x: window.frame.width, y: frames.topForStart), controlPoint1: CGPoint(x: window.frame.width, y: frames.topVector), controlPoint2: CGPoint(x: window.frame.width, y: frames.topVector))
    currentPart.close()
    return currentPart
}

func createOpenedCurrentForDetails() -> UIBezierPath {
    
    let currentPart = UIBezierPath()
    guard let window = UIApplication.shared.keyWindow else {return currentPart}
    currentPart.move(to: .zero)
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    currentPart.addLine(to: CGPoint(x: window.frame.width, y: 0))
    currentPart.addLine(to: .zero)
    currentPart.close()
    return currentPart
}

