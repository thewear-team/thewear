//
//  CreatingPerson.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 25/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

let fromX: CGFloat = (width - 200) / 2
let fromY: CGFloat = 150

func createHead() -> CAShapeLayer {
    let headPath = UIBezierPath()
    headPath.move(to: CGPoint(x: 120.18 + fromX, y: 65.82 + fromY))
    headPath.addCurve(to: CGPoint(x: 82.26 + fromX, y: 17.94 + fromY), controlPoint1: CGPoint(x: 108.92 + fromX, y: 68.12 + fromY), controlPoint2: CGPoint(x: 77.05 + fromX, y: 45.23 + fromY))
    headPath.addCurve(to: CGPoint(x: 126.33 + fromX, y: 14.39 + fromY), controlPoint1: CGPoint(x: 87.47 + fromX, y: -9.34 + fromY), controlPoint2: CGPoint(x: 121.42 + fromX, y: -0.23 + fromY))
    headPath.addCurve(to: CGPoint(x: 120.18 + fromX, y: 65.82 + fromY), controlPoint1: CGPoint(x: 131.24 + fromX, y: 29.01 + fromY), controlPoint2: CGPoint(x: 131.44 + fromX, y: 63.51 + fromY))
    headPath.close()
    
    let head = CAShapeLayer()
    head.path = headPath.cgPath
    head.fillColor = UIColor.body.cgColor
    return head
}

func createLeftLeg() -> CAShapeLayer {
    let leftLegPath = UIBezierPath()
    leftLegPath.move(to: CGPoint(x: 86.94 + fromX, y: 246 + fromY))
    leftLegPath.addLine(to: CGPoint(x: 142.96 + fromX, y: 246 + fromY))
    leftLegPath.addLine(to: CGPoint(x: 158.43 + fromX, y: 458.79 + fromY))
    leftLegPath.addLine(to: CGPoint(x: 143.77 + fromX, y: 460.18 + fromY))
    leftLegPath.addCurve(to: CGPoint(x: 127.82 + fromX, y: 371.43 + fromY), controlPoint1: CGPoint(x: 137.91 + fromX, y: 421.07 + fromY), controlPoint2: CGPoint(x: 132.6 + fromX, y: 391.48 + fromY))
    leftLegPath.addCurve(to: CGPoint(x: 86.94 + fromX, y: 246 + fromY), controlPoint1: CGPoint(x: 123.05 + fromX, y: 351.37 + fromY), controlPoint2: CGPoint(x: 109.42 + fromX, y: 309.57 + fromY))
    leftLegPath.close()
    
    let leftLeg = CAShapeLayer()
    leftLeg.path = leftLegPath.cgPath
    leftLeg.fillColor = UIColor.shadowBody.cgColor
    return leftLeg
}

func createRightLeg() -> CAShapeLayer {
    let rightLegPath = UIBezierPath()
    rightLegPath.move(to: CGPoint(x: 68.26 + fromX, y: 246 + fromY))
    rightLegPath.addLine(to: CGPoint(x: 118.06 + fromX, y: 246 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 100.23 + fromX, y: 363.49 + fromY), controlPoint1: CGPoint(x: 110.64 + fromX, y: 299.08 + fromY), controlPoint2: CGPoint(x: 104.7 + fromX, y: 338.24 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 80.3 + fromX, y: 458.87 + fromY), controlPoint1: CGPoint(x: 95.76 + fromX, y: 388.74 + fromY), controlPoint2: CGPoint(x: 89.12 + fromX, y: 420.53 + fromY))
    rightLegPath.addLine(to: CGPoint(x: 66.93 + fromX, y: 458.87 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 74.49 + fromX, y: 371.18 + fromY), controlPoint1: CGPoint(x: 71.97 + fromX, y: 418.04 + fromY), controlPoint2: CGPoint(x: 74.49 + fromX, y: 388.8 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 68.26 + fromX, y: 246 + fromY), controlPoint1: CGPoint(x: 74.49 + fromX, y: 353.55 + fromY), controlPoint2: CGPoint(x: 72.41 + fromX, y: 311.82 + fromY))
    rightLegPath.close()
    
    let rightLeg = CAShapeLayer()
    rightLeg.path = rightLegPath.cgPath
    rightLeg.fillColor = UIColor.body.cgColor
    return rightLeg
}

func createBody() -> CAShapeLayer {
    let bodyPath = UIBezierPath()
    bodyPath.move(to: CGPoint(x: 43.31 + fromX, y: 127.7 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 57.27 + fromX, y: 85.55 + fromY), controlPoint1: CGPoint(x: 46.4 + fromX, y: 115.03 + fromY), controlPoint2: CGPoint(x: 53.16 + fromX, y: 87.66 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 92.4 + fromX, y: 74.61 + fromY), controlPoint1: CGPoint(x: 65.16 + fromX, y: 81.51 + fromY), controlPoint2: CGPoint(x: 76.87 + fromX, y: 77.86 + fromY))
    bodyPath.addLine(to: CGPoint(x: 96.87 + fromX, y: 37.02 + fromY))
    bodyPath.addLine(to: CGPoint(x: 109.73 + fromX, y: 47.35 + fromY))
    bodyPath.addLine(to: CGPoint(x: 112.02 + fromX, y: 74.61 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 142.21 + fromX, y: 84.02 + fromY), controlPoint1: CGPoint(x: 130.06 + fromX, y: 79.42 + fromY), controlPoint2: CGPoint(x: 140.13 + fromX, y: 82.56 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 158.92 + fromX, y: 121.9 + fromY), controlPoint1: CGPoint(x: 145.27 + fromX, y: 86.18 + fromY), controlPoint2: CGPoint(x: 155.12 + fromX, y: 106.84 + fromY))
    bodyPath.addLine(to: CGPoint(x: 158.92 + fromX, y: 121.9 + fromY))
    bodyPath.addLine(to: CGPoint(x: 184.73 + fromX, y: 216.06 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 196.51 + fromX, y: 249.61 + fromY), controlPoint1: CGPoint(x: 194.54 + fromX, y: 234.11 + fromY), controlPoint2: CGPoint(x: 198.47 + fromX, y: 245.3 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 179.32 + fromX, y: 235.98 + fromY), controlPoint1: CGPoint(x: 193.57 + fromX, y: 256.07 + fromY), controlPoint2: CGPoint(x: 185.4 + fromX, y: 237.92 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 171.66 + fromX, y: 242.61 + fromY), controlPoint1: CGPoint(x: 176.05 + fromX, y: 234.94 + fromY), controlPoint2: CGPoint(x: 174.99 + fromX, y: 243.81 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 171.82 + fromX, y: 220.77 + fromY), controlPoint1: CGPoint(x: 169.44 + fromX, y: 241.8 + fromY), controlPoint2: CGPoint(x: 169.49 + fromX, y: 234.52 + fromY))
    bodyPath.addLine(to: CGPoint(x: 140.4 + fromX, y: 124.79 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 143.2 + fromX, y: 249.05 + fromY), controlPoint1: CGPoint(x: 142.94 + fromX, y: 144.66 + fromY), controlPoint2: CGPoint(x: 145.95 + fromX, y: 248.71 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 68.39 + fromX, y: 249.05 + fromY), controlPoint1: CGPoint(x: 122.23 + fromX, y: 251.62 + fromY), controlPoint2: CGPoint(x: 71.82 + fromX, y: 248.57 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 68.39 + fromX, y: 179.51 + fromY), controlPoint1: CGPoint(x: 63.83 + fromX, y: 249.69 + fromY), controlPoint2: CGPoint(x: 69.6 + fromX, y: 208.49 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 63.24 + fromX, y: 128.38 + fromY), controlPoint1: CGPoint(x: 67.28 + fromX, y: 152.68 + fromY), controlPoint2: CGPoint(x: 65.13 + fromX, y: 128.12 + fromY))
    bodyPath.addLine(to: CGPoint(x: 32.17 + fromX, y: 232.3 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 34.74 + fromX, y: 251.33 + fromY), controlPoint1: CGPoint(x: 36.1 + fromX, y: 244.18 + fromY), controlPoint2: CGPoint(x: 36.96 + fromX, y: 250.52 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 25.28 + fromX, y: 243.56 + fromY), controlPoint1: CGPoint(x: 31.41 + fromX, y: 252.54 + fromY), controlPoint2: CGPoint(x: 28.55 + fromX, y: 242.52 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 1.3 + fromX, y: 256.76 + fromY), controlPoint1: CGPoint(x: 19.2 + fromX, y: 245.5 + fromY), controlPoint2: CGPoint(x: 7.38 + fromX, y: 258.97 + fromY))
    bodyPath.addCurve(to: CGPoint(x: 18.87 + fromX, y: 227.46 + fromY), controlPoint1: CGPoint(x: -2.76 + fromX, y: 255.28 + fromY), controlPoint2: CGPoint(x: 3.1 + fromX, y: 245.52 + fromY))
    bodyPath.addLine(to: CGPoint(x: 43.3 + fromX, y: 127.7 + fromY))
    bodyPath.addLine(to: CGPoint(x: 43.31 + fromX, y: 127.7 + fromY))
    bodyPath.close()
    
    let body = CAShapeLayer()
    body.path = bodyPath.cgPath
    body.fillColor = UIColor.body.cgColor
    return body
}

func createHairCut() -> CAShapeLayer {
    let hairCutPath = UIBezierPath()
    hairCutPath.move(to: CGPoint(x: 109.4 + fromX, y: 0 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 122.73 + fromX, y: 0.5 + fromY), controlPoint1: CGPoint(x: 115.7 + fromX, y: 0.45 + fromY), controlPoint2: CGPoint(x: 118.74 + fromX, y: 1.68 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 129.21 + fromX, y: 19.69 + fromY), controlPoint1: CGPoint(x: 126.71 + fromX, y: -0.68 + fromY), controlPoint2: CGPoint(x: 135.39 + fromX, y: 17.62 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 108.13 + fromX, y: 21.13 + fromY), controlPoint1: CGPoint(x: 126.41 + fromX, y: 20.63 + fromY), controlPoint2: CGPoint(x: 119.39 + fromX, y: 21.11 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 101.74 + fromX, y: 34.51 + fromY), controlPoint1: CGPoint(x: 105.56 + fromX, y: 30.05 + fromY), controlPoint2: CGPoint(x: 103.43 + fromX, y: 34.51 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 91.93 + fromX, y: 26.99 + fromY), controlPoint1: CGPoint(x: 100.83 + fromX, y: 34.51 + fromY), controlPoint2: CGPoint(x: 97.06 + fromX, y: 24.34 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 91.93 + fromX, y: 45.82 + fromY), controlPoint1: CGPoint(x: 88.51 + fromX, y: 28.76 + fromY), controlPoint2: CGPoint(x: 88.51 + fromX, y: 35.04 + fromY))
    hairCutPath.addLine(to: CGPoint(x: 87.87 + fromX, y: 45.82 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 79.05 + fromX, y: 22.82 + fromY), controlPoint1: CGPoint(x: 81.5 + fromX, y: 39.1 + fromY), controlPoint2: CGPoint(x: 78.56 + fromX, y: 31.44 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 87.3 + fromX, y: 5.56 + fromY), controlPoint1: CGPoint(x: 79.4 + fromX, y: 16.62 + fromY), controlPoint2: CGPoint(x: 82.29 + fromX, y: 9.84 + fromY))
    hairCutPath.addCurve(to: CGPoint(x: 109.4 + fromX, y: 0 + fromY), controlPoint1: CGPoint(x: 92.73 + fromX, y: 0.93 + fromY), controlPoint2: CGPoint(x: 102.36 + fromX, y: -0.5 + fromY))
    hairCutPath.close()
    
    let hairCut = CAShapeLayer()
    hairCut.path = hairCutPath.cgPath
    hairCut.fillColor = UIColor.hairCutColor.cgColor
    return hairCut
}

func createRightSneaker() -> CAShapeLayer {
    let rightSneakerPath = UIBezierPath()
    rightSneakerPath.move(to: CGPoint(x: 65.4 + fromX, y: 452 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 74.87 + fromX, y: 457.76 + fromY), controlPoint1: CGPoint(x: 66.85 + fromX, y: 452.05 + fromY), controlPoint2: CGPoint(x: 67.57 + fromX, y: 457.76 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 82.07 + fromX, y: 453.02 + fromY), controlPoint1: CGPoint(x: 80.33 + fromX, y: 457.76 + fromY), controlPoint2: CGPoint(x: 78.98 + fromX, y: 453.3 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 94.34 + fromX, y: 460.94 + fromY), controlPoint1: CGPoint(x: 86.87 + fromX, y: 452.58 + fromY), controlPoint2: CGPoint(x: 84.08 + fromX, y: 457.29 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 109.14 + fromX, y: 466.56 + fromY), controlPoint1: CGPoint(x: 104.6 + fromX, y: 464.59 + fromY), controlPoint2: CGPoint(x: 104.58 + fromX, y: 464.78 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 116.43 + fromX, y: 475.16 + fromY), controlPoint1: CGPoint(x: 113.7 + fromX, y: 468.34 + fromY), controlPoint2: CGPoint(x: 118.82 + fromX, y: 469.03 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 109.41 + fromX, y: 478.59 + fromY), controlPoint1: CGPoint(x: 115.65 + fromX, y: 477.15 + fromY), controlPoint2: CGPoint(x: 112.95 + fromX, y: 478.59 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 66.25 + fromX, y: 478.59 + fromY), controlPoint1: CGPoint(x: 96.45 + fromX, y: 478.59 + fromY), controlPoint2: CGPoint(x: 75.58 + fromX, y: 478.75 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 62.76 + fromX, y: 477.49 + fromY), controlPoint1: CGPoint(x: 63.71 + fromX, y: 478.55 + fromY), controlPoint2: CGPoint(x: 62.88 + fromX, y: 477.59 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 62.21 + fromX, y: 473.3 + fromY), controlPoint1: CGPoint(x: 62.63 + fromX, y: 477.38 + fromY), controlPoint2: CGPoint(x: 61.87 + fromX, y: 476.59 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 62.76 + fromX, y: 469.49 + fromY), controlPoint1: CGPoint(x: 62.29 + fromX, y: 472.58 + fromY), controlPoint2: CGPoint(x: 62.47 + fromX, y: 471.31 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 62.03 + fromX, y: 463.84 + fromY), controlPoint1: CGPoint(x: 62.3 + fromX, y: 466.69 + fromY), controlPoint2: CGPoint(x: 62.06 + fromX, y: 464.81 + fromY))
    rightSneakerPath.addCurve(to: CGPoint(x: 65.4 + fromX, y: 452 + fromY), controlPoint1: CGPoint(x: 61.89 + fromX, y: 459.39 + fromY), controlPoint2: CGPoint(x: 62.14 + fromX, y: 451.89 + fromY))
    rightSneakerPath.close()
    
    let rightSneaker = CAShapeLayer()
    rightSneaker.path = rightSneakerPath.cgPath
    rightSneaker.fillColor = UIColor.sneakerColor.cgColor
    return rightSneaker
}

func createLeftSneaker() -> CAShapeLayer {
    let leftSneakerPath = UIBezierPath()
    leftSneakerPath.move(to: CGPoint(x: 142.4 + fromX, y: 452 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 151.87 + fromX, y: 457.76 + fromY), controlPoint1: CGPoint(x: 143.85 + fromX, y: 452.05 + fromY), controlPoint2: CGPoint(x: 144.57 + fromX, y: 457.76 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 159.07 + fromX, y: 453.02 + fromY), controlPoint1: CGPoint(x: 157.33 + fromX, y: 457.76 + fromY), controlPoint2: CGPoint(x: 155.98 + fromX, y: 453.3 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 171.34 + fromX, y: 460.94 + fromY), controlPoint1: CGPoint(x: 163.87 + fromX, y: 452.58 + fromY), controlPoint2: CGPoint(x: 161.08 + fromX, y: 457.29 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 186.14 + fromX, y: 466.56 + fromY), controlPoint1: CGPoint(x: 181.6 + fromX, y: 464.59 + fromY), controlPoint2: CGPoint(x: 181.58 + fromX, y: 464.78 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 193.43 + fromX, y: 475.16 + fromY), controlPoint1: CGPoint(x: 190.7 + fromX, y: 468.34 + fromY), controlPoint2: CGPoint(x: 195.82 + fromX, y: 469.03 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 186.41 + fromX, y: 478.59 + fromY), controlPoint1: CGPoint(x: 192.65 + fromX, y: 477.15 + fromY), controlPoint2: CGPoint(x: 189.95 + fromX, y: 478.59 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 143.25 + fromX, y: 478.59 + fromY), controlPoint1: CGPoint(x: 173.45 + fromX, y: 478.59 + fromY), controlPoint2: CGPoint(x: 152.58 + fromX, y: 478.75 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 139.76 + fromX, y: 477.49 + fromY), controlPoint1: CGPoint(x: 140.71 + fromX, y: 478.55 + fromY), controlPoint2: CGPoint(x: 139.88 + fromX, y: 477.59 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 139.21 + fromX, y: 473.3 + fromY), controlPoint1: CGPoint(x: 139.63 + fromX, y: 477.38 + fromY), controlPoint2: CGPoint(x: 138.87 + fromX, y: 476.59 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 139.76 + fromX, y: 469.49 + fromY), controlPoint1: CGPoint(x: 139.29 + fromX, y: 472.58 + fromY), controlPoint2: CGPoint(x: 139.47 + fromX, y: 471.31 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 139.03 + fromX, y: 463.84 + fromY), controlPoint1: CGPoint(x: 139.3 + fromX, y: 466.69 + fromY), controlPoint2: CGPoint(x: 139.06 + fromX, y: 464.81 + fromY))
    leftSneakerPath.addCurve(to: CGPoint(x: 142.4 + fromX, y: 452 + fromY), controlPoint1: CGPoint(x: 138.89 + fromX, y: 459.39 + fromY), controlPoint2: CGPoint(x: 139.14 + fromX, y: 451.89 + fromY))
    leftSneakerPath.close()
    
    let leftSneaker = CAShapeLayer()
    leftSneaker.path = leftSneakerPath.cgPath
    leftSneaker.fillColor = UIColor.sneakerColor.cgColor
    return leftSneaker
}

func createLeftTrouserLeg() -> CAShapeLayer {
    let leftTrouserLegPath = UIBezierPath()
    leftTrouserLegPath.move(to: CGPoint(x: 66.98 + fromX, y: 246.08 + fromY))
    leftTrouserLegPath.addLine(to: CGPoint(x: 120.79 + fromX, y: 246 + fromY))
    leftTrouserLegPath.addCurve(to: CGPoint(x: 96.4 + fromX, y: 394.37 + fromY), controlPoint1: CGPoint(x: 107.92 + fromX, y: 328.13 + fromY), controlPoint2: CGPoint(x: 99.79 + fromX, y: 377.58 + fromY))
    leftTrouserLegPath.addCurve(to: CGPoint(x: 86.23 + fromX, y: 440.33 + fromY), controlPoint1: CGPoint(x: 91.49 + fromX, y: 418.63 + fromY), controlPoint2: CGPoint(x: 87.03 + fromX, y: 437.32 + fromY))
    leftTrouserLegPath.addCurve(to: CGPoint(x: 67.7 + fromX, y: 440.33 + fromY), controlPoint1: CGPoint(x: 85.43 + fromX, y: 443.35 + fromY), controlPoint2: CGPoint(x: 67.7 + fromX, y: 443.96 + fromY))
    leftTrouserLegPath.addCurve(to: CGPoint(x: 70.32 + fromX, y: 321.87 + fromY), controlPoint1: CGPoint(x: 67.7 + fromX, y: 436.71 + fromY), controlPoint2: CGPoint(x: 73.19 + fromX, y: 386.48 + fromY))
    leftTrouserLegPath.addCurve(to: CGPoint(x: 66.98 + fromX, y: 246.08 + fromY), controlPoint1: CGPoint(x: 68.41 + fromX, y: 278.79 + fromY), controlPoint2: CGPoint(x: 67.3 + fromX, y: 253.53 + fromY))
    leftTrouserLegPath.close()
    
    let leftTrouserLeg = CAShapeLayer()
    leftTrouserLeg.path = leftTrouserLegPath.cgPath
    leftTrouserLeg.fillColor = UIColor.trouserLegBlueColor.cgColor
    return leftTrouserLeg
}

func createRightTrouserLeg() -> CAShapeLayer {
    let rightTrouserLegPath = UIBezierPath()
    rightTrouserLegPath.move(to: CGPoint(x: 66.98 + fromX, y: 246 + fromY))
    rightTrouserLegPath.addLine(to: CGPoint(x: 143.56 + fromX, y: 246 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 157.58 + fromX, y: 439.59 + fromY), controlPoint1: CGPoint(x: 152.91 + fromX, y: 372.7 + fromY), controlPoint2: CGPoint(x: 157.58 + fromX, y: 437.23 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 139.44 + fromX, y: 440.8 + fromY), controlPoint1: CGPoint(x: 157.58 + fromX, y: 443.13 + fromY), controlPoint2: CGPoint(x: 140.41 + fromX, y: 444.93 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 125 + fromX, y: 378.32 + fromY), controlPoint1: CGPoint(x: 138.46 + fromX, y: 436.67 + fromY), controlPoint2: CGPoint(x: 131.71 + fromX, y: 405.81 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 109.16 + fromX, y: 316.83 + fromY), controlPoint1: CGPoint(x: 120.53 + fromX, y: 359.99 + fromY), controlPoint2: CGPoint(x: 115.25 + fromX, y: 339.5 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 97.57 + fromX, y: 381.64 + fromY), controlPoint1: CGPoint(x: 105.81 + fromX, y: 336.12 + fromY), controlPoint2: CGPoint(x: 101.94 + fromX, y: 357.72 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 86.59 + fromX, y: 438.97 + fromY), controlPoint1: CGPoint(x: 93.19 + fromX, y: 405.56 + fromY), controlPoint2: CGPoint(x: 89.53 + fromX, y: 424.67 + fromY))
    rightTrouserLegPath.addLine(to: CGPoint(x: 68.3 + fromX, y: 436.63 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 72.12 + fromX, y: 361.44 + fromY), controlPoint1: CGPoint(x: 70.85 + fromX, y: 417.19 + fromY), controlPoint2: CGPoint(x: 72.12 + fromX, y: 392.13 + fromY))
    rightTrouserLegPath.addCurve(to: CGPoint(x: 66.98 + fromX, y: 246 + fromY), controlPoint1: CGPoint(x: 72.12 + fromX, y: 330.74 + fromY), controlPoint2: CGPoint(x: 70.41 + fromX, y: 292.27 + fromY))
    rightTrouserLegPath.close()
    
    let rightTrouserLeg = CAShapeLayer()
    rightTrouserLeg.path = rightTrouserLegPath.cgPath
    rightTrouserLeg.fillColor = UIColor.trouserLegShadowBlueColor.cgColor
    return rightTrouserLeg
}

func createHoodie() -> CAShapeLayer {
    let hoodiePath = UIBezierPath()
    hoodiePath.move(to: CGPoint(x: 56.84 + fromX, y: 84.28 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 85.09 + fromX, y: 75.45 + fromY), controlPoint1: CGPoint(x: 62.57 + fromX, y: 78.23 + fromY), controlPoint2: CGPoint(x: 80.46 + fromX, y: 73.24 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 102.98 + fromX, y: 81.02 + fromY), controlPoint1: CGPoint(x: 89.71 + fromX, y: 77.66 + fromY), controlPoint2: CGPoint(x: 91.98 + fromX, y: 81.02 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 117 + fromX, y: 76 + fromY), controlPoint1: CGPoint(x: 113.97 + fromX, y: 81.02 + fromY), controlPoint2: CGPoint(x: 120.04 + fromX, y: 80.11 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 144.05 + fromX, y: 84.28 + fromY), controlPoint1: CGPoint(x: 113.96 + fromX, y: 71.89 + fromY), controlPoint2: CGPoint(x: 137.07 + fromX, y: 80.46 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 183 + fromX, y: 211.25 + fromY), controlPoint1: CGPoint(x: 169.05 + fromX, y: 99 + fromY), controlPoint2: CGPoint(x: 183 + fromX, y: 207.1 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 167.51 + fromX, y: 214.59 + fromY), controlPoint1: CGPoint(x: 183 + fromX, y: 215.39 + fromY), controlPoint2: CGPoint(x: 172.64 + fromX, y: 222.05 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 154.05 + fromX, y: 184.96 + fromY), controlPoint1: CGPoint(x: 166.04 + fromX, y: 212.45 + fromY), controlPoint2: CGPoint(x: 160.9 + fromX, y: 202.45 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 148.58 + fromX, y: 170.45 + fromY), controlPoint1: CGPoint(x: 152.36 + fromX, y: 180.64 + fromY), controlPoint2: CGPoint(x: 150.53 + fromX, y: 175.81 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 146.66 + fromX, y: 178.59 + fromY), controlPoint1: CGPoint(x: 144.97 + fromX, y: 160.56 + fromY), controlPoint2: CGPoint(x: 141.06 + fromX, y: 126.35 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 144.91 + fromX, y: 251.87 + fromY), controlPoint1: CGPoint(x: 152.26 + fromX, y: 230.82 + fromY), controlPoint2: CGPoint(x: 146.1 + fromX, y: 249.84 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 65.25 + fromX, y: 251.87 + fromY), controlPoint1: CGPoint(x: 143.73 + fromX, y: 253.91 + fromY), controlPoint2: CGPoint(x: 66.34 + fromX, y: 252.73 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 56.84 + fromX, y: 183.7 + fromY), controlPoint1: CGPoint(x: 64.16 + fromX, y: 251.02 + fromY), controlPoint2: CGPoint(x: 56.19 + fromX, y: 205.13 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 54.64 + fromX, y: 170.45 + fromY), controlPoint1: CGPoint(x: 57.49 + fromX, y: 162.27 + fromY), controlPoint2: CGPoint(x: 57.99 + fromX, y: 160 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 35.72 + fromX, y: 225.59 + fromY), controlPoint1: CGPoint(x: 43.85 + fromX, y: 204.15 + fromY), controlPoint2: CGPoint(x: 38.98 + fromX, y: 221.37 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 20 + fromX, y: 221.15 + fromY), controlPoint1: CGPoint(x: 32.47 + fromX, y: 229.81 + fromY), controlPoint2: CGPoint(x: 20.03 + fromX, y: 228.53 + fromY))
    hoodiePath.addCurve(to: CGPoint(x: 56.84 + fromX, y: 84.28 + fromY), controlPoint1: CGPoint(x: 19.95 + fromX, y: 207.52 + fromY), controlPoint2: CGPoint(x: 19.95 + fromX, y: 124.64 + fromY))
    hoodiePath.close()
    
    let hoodie = CAShapeLayer()
    hoodie.path = hoodiePath.cgPath
    hoodie.fillColor = UIColor.hoodieColor.cgColor
    return hoodie
}

func moveToLeftLeg() -> CAShapeLayer {
    let leftLegPath = UIBezierPath()
    leftLegPath.move(to: CGPoint(x: 90 + fromX, y: 246 + fromY))
    leftLegPath.addLine(to: CGPoint(x: 146 + fromX, y: 246 + fromY))
    leftLegPath.addLine(to: CGPoint(x: 158.43 + fromX, y: 458.79 + fromY))
    leftLegPath.addLine(to: CGPoint(x: 143.77 + fromX, y: 460.18 + fromY))
    leftLegPath.addCurve(to: CGPoint(x: 127.82 + fromX, y: 371.43 + fromY), controlPoint1: CGPoint(x: 137.91 + fromX, y: 421.07 + fromY), controlPoint2: CGPoint(x: 132.6 + fromX, y: 391.48 + fromY))
    leftLegPath.addCurve(to: CGPoint(x: 90 + fromX, y: 246 + fromY), controlPoint1: CGPoint(x: 123.05 + fromX, y: 351.37 + fromY), controlPoint2: CGPoint(x: 109.42 + fromX, y: 309.57 + fromY))
    leftLegPath.close()
    
    let leftLeg = CAShapeLayer()
    leftLeg.path = leftLegPath.cgPath
    leftLeg.fillColor = UIColor.shadowBody.cgColor
    return leftLeg
}

func moveToRightLeg() -> CAShapeLayer {
    let rightLegPath = UIBezierPath()
    rightLegPath.move(to: CGPoint(x: 72 + fromX, y: 246 + fromY))
    rightLegPath.addLine(to: CGPoint(x: 122 + fromX, y: 246 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 100.23 + fromX, y: 363.49 + fromY), controlPoint1: CGPoint(x: 110.64 + fromX, y: 299.08 + fromY), controlPoint2: CGPoint(x: 104.7 + fromX, y: 338.24 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 80.3 + fromX, y: 458.87 + fromY), controlPoint1: CGPoint(x: 95.76 + fromX, y: 388.74 + fromY), controlPoint2: CGPoint(x: 89.12 + fromX, y: 420.53 + fromY))
    rightLegPath.addLine(to: CGPoint(x: 66.93 + fromX, y: 458.87 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 74.49 + fromX, y: 371.18 + fromY), controlPoint1: CGPoint(x: 71.97 + fromX, y: 418.04 + fromY), controlPoint2: CGPoint(x: 74.49 + fromX, y: 388.8 + fromY))
    rightLegPath.addCurve(to: CGPoint(x: 72 + fromX, y: 246 + fromY), controlPoint1: CGPoint(x: 74.49 + fromX, y: 353.55 + fromY), controlPoint2: CGPoint(x: 72.41 + fromX, y: 311.82 + fromY))
    rightLegPath.close()
    
    let rightLeg = CAShapeLayer()
    rightLeg.path = rightLegPath.cgPath
    rightLeg.fillColor = UIColor.body.cgColor
    return rightLeg
}
