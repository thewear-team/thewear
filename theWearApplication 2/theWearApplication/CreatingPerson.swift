//
//  CreatingPerson.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 25/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

let fromX: CGFloat = 150
let fromY: CGFloat = 400

func createLeftLeg() -> CAShapeLayer {
    let leftLegPath = UIBezierPath()
    leftLegPath.move(to: CGPoint(x: 0.31 + fromX, y: fromY))
    leftLegPath.addLine(to: CGPoint(x: 58.74 + fromX, y: fromY))
    leftLegPath.addCurve(to: CGPoint(x: 37.82 + fromX, y: 138.54 + fromY), controlPoint1: CGPoint(x: 50.04 + fromX, y: 62.59 + fromY), controlPoint2: CGPoint(x: 43.06 + fromX, y: 108.77 + fromY))
    leftLegPath.addCurve(to: CGPoint(x: 14.44 + fromX, y: 251 + fromY), controlPoint1: CGPoint(x: 32.57 + fromX, y: 168.31 + fromY), controlPoint2: CGPoint(x: 24.78 + fromX, y: 205.8 + fromY))
    leftLegPath.addLine(to: CGPoint(x: -1.26 + fromX, y: 251 + fromY))
    leftLegPath.addCurve(to: CGPoint(x: 7.61 + fromX, y: 147.6 + fromY), controlPoint1: CGPoint(x: 4.65 + fromX, y: 202.85 + fromY), controlPoint2: CGPoint(x: 7.61 + fromX, y: 168.38 + fromY))
    leftLegPath.addCurve(to: CGPoint(x: 0.31 + fromX, y: fromY), controlPoint1: CGPoint(x: 7.61 + fromX, y: 126.81 + fromY), controlPoint2: CGPoint(x: 5.18 + fromX, y: 77.61 + fromY))
    leftLegPath.close()
    
    let leftLeg = CAShapeLayer()
    leftLeg.path = leftLegPath.cgPath
    leftLeg.fillColor = UIColor.body.cgColor
    return leftLeg
}

func createRightLeg() -> CAShapeLayer {
    let rightLegPath = UIBezierPath()
    rightLegPath.move(to: CGPoint(x: fromX + 15, y: fromY))
    rightLegPath.addLine(to: CGPoint(x: 60.67 + fromX + 15, y: -0 + fromY))
    rightLegPath.addLine(to: CGPoint(x: 77.43 + fromX + 15, y: 251 + fromY))
    rightLegPath.addLine(to: CGPoint(x: 61.56 + fromX + 15, y: 251 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 44.28 + fromX + 15, y: 135.97 + fromY), controlPoint1: CGPoint(x: 55.21 + fromX + 15, y: 189.78 + fromY), controlPoint2: CGPoint(x: 49.45 + fromX + 15, y: 157.71 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 0 + fromX + 15, y: -0 + fromY), controlPoint1: CGPoint(x: 39.11 + fromX + 15, y: 114.23 + fromY), controlPoint2: CGPoint(x: 24.35 + fromX + 15, y: 68.91 + fromY))
    rightLegPath.close()
    
    let rightLeg = CAShapeLayer()
    rightLeg.path = rightLegPath.cgPath
    rightLeg.fillColor = UIColor.shadowBody.cgColor
    return rightLeg
}

func createBody() -> CAShapeLayer {
    let bodyPath = UIBezierPath()
    
    let body = CAShapeLayer()
    body.path = bodyPath.cgPath
    body.fillColor = UIColor.body.cgColor
    return body
}
