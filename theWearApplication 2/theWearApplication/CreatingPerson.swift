//
//  CreatingPerson.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 25/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

func createHead() -> CAShapeLayer {
    let head = UIBezierPath()
    head.move(to: CGPoint(x: 38.25, y: 63.34))
    head.addCurve(to: CGPoint(x: 0.57, y: 17), controlPoint1: CGPoint(x: 27.06, y: 65.57), controlPoint2: CGPoint(x: -4.61, y: 43.41))
    head.addCurve(to: CGPoint(x: 44.37, y: 13.56), controlPoint1: CGPoint(x: 5.74, y: -9.41), controlPoint2: CGPoint(x: 39.49, y: -0.6))
    head.addCurve(to: CGPoint(x: 38.25, y: 63.34), controlPoint1: CGPoint(x: 49.24, y: 27.71), controlPoint2: CGPoint(x: 49.44, y: 61.11))
    head.close()
    
    let headCA = CAShapeLayer()
    headCA.path = head.cgPath
    headCA.fillColor = UIColor.body.cgColor
    return headCA
}

func createRightArm() -> CAShapeLayer {
    let right2 = UIBezierPath()
    right2.move(to: CGPoint(x: 6.27, y: 0))
    right2.addLine(to: CGPoint(x: 110.1, y: 11.4))
    right2.addCurve(to: CGPoint(x: 144.19, y: 4.83), controlPoint1: CGPoint(x: 132.83, y: 2.64), controlPoint2: CGPoint(x: 144.19, y: 0.45))
    right2.addCurve(to: CGPoint(x: 123.26, y: 23.11), controlPoint1: CGPoint(x: 144.2, y: 11.41), controlPoint2: CGPoint(x: 127.22, y: 17.99))
    right2.addCurve(to: CGPoint(x: 127.4, y: 34.84), controlPoint1: CGPoint(x: 121.13, y: 25.87), controlPoint2: CGPoint(x: 129.71, y: 32.09))
    right2.addCurve(to: CGPoint(x: 110.1, y: 25.77), controlPoint1: CGPoint(x: 125.86, y: 36.68), controlPoint2: CGPoint(x: 120.09, y: 33.65))
    right2.addLine(to: CGPoint(x: 0, y: 19.26))
    right2.addLine(to: CGPoint(x: 6.27, y: 0))
    right2.close()
    
    let right = CAShapeLayer()
    right.path = right2.cgPath
    right.fillColor = UIColor.body.cgColor
    return right
}

func createLeftArm() -> CAShapeLayer {
    let rectangle = UIBezierPath()
    rectangle.move(to: CGPoint(x: 43.76, y: 0))
    rectangle.addLine(to: CGPoint(x: 63.26, y: 0))
    rectangle.addLine(to: CGPoint(x: 32.63, y: 106.28))
    rectangle.addCurve(to: CGPoint(x: 35.54, y: 125.51), controlPoint1: CGPoint(x: 36.64, y: 117.91), controlPoint2: CGPoint(x: 37.61, y: 124.32))
    rectangle.addCurve(to: CGPoint(x: 26.04, y: 117.52), controlPoint1: CGPoint(x: 32.42, y: 127.3), controlPoint2: CGPoint(x: 28.24, y: 117.52))
    rectangle.addCurve(to: CGPoint(x: 1.67, y: 131.21), controlPoint1: CGPoint(x: 23.84, y: 117.52), controlPoint2: CGPoint(x: 8.99, y: 133.02))
    rectangle.addCurve(to: CGPoint(x: 19.13, y: 101.36), controlPoint1: CGPoint(x: -3.21, y: 130), controlPoint2: CGPoint(x: 2.61, y: 120.05))
    rectangle.addLine(to: CGPoint(x: 43.76, y: 0))
    rectangle.close()
    
    let left = CAShapeLayer()
    left.path = rectangle.cgPath
    left.fillColor = UIColor.body.cgColor
    return left
}

func createHairCut() -> CAShapeLayer {
    let rectangle = UIBezierPath()
    rectangle.move(to: CGPoint(x: 29.03, y: 0.09))
    rectangle.addCurve(to: CGPoint(x: 41.75, y: 0.58), controlPoint1: CGPoint(x: 35.04, y: 0.53), controlPoint2: CGPoint(x: 37.95, y: 1.74))
    rectangle.addCurve(to: CGPoint(x: 47.94, y: 19.39), controlPoint1: CGPoint(x: 45.56, y: -0.57), controlPoint2: CGPoint(x: 53.84, y: 17.36))
    rectangle.addCurve(to: CGPoint(x: 27.81, y: 20.8), controlPoint1: CGPoint(x: 45.27, y: 20.31), controlPoint2: CGPoint(x: 38.56, y: 20.78))
    rectangle.addCurve(to: CGPoint(x: 21.71, y: 33.91), controlPoint1: CGPoint(x: 25.36, y: 29.54), controlPoint2: CGPoint(x: 23.33, y: 33.91))
    rectangle.addCurve(to: CGPoint(x: 12.34, y: 26.55), controlPoint1: CGPoint(x: 20.84, y: 33.91), controlPoint2: CGPoint(x: 17.24, y: 23.95))
    rectangle.addCurve(to: CGPoint(x: 12.34, y: 45), controlPoint1: CGPoint(x: 9.08, y: 28.28), controlPoint2: CGPoint(x: 9.08, y: 34.43))
    rectangle.addLine(to: CGPoint(x: 8.47, y: 45))
    rectangle.addCurve(to: CGPoint(x: 0.05, y: 22.46), controlPoint1: CGPoint(x: 2.39, y: 38.42), controlPoint2: CGPoint(x: -0.42, y: 30.9))
    rectangle.addCurve(to: CGPoint(x: 7.93, y: 5.54), controlPoint1: CGPoint(x: 0.39, y: 16.38), controlPoint2: CGPoint(x: 3.14, y: 9.73))
    rectangle.addCurve(to: CGPoint(x: 29.03, y: 0.09), controlPoint1: CGPoint(x: 13.11, y: 1), controlPoint2: CGPoint(x: 22.31, y: -0.4))
    rectangle.close()
    
    let hair = CAShapeLayer()
    hair.path = rectangle.cgPath
    hair.fillColor = UIColor(red: 48/255, green: 47/255, blue: 47/255, alpha: 1).cgColor
    return hair
}

func createSneaker() -> CAShapeLayer {
    let rectangle = UIBezierPath()
    rectangle.move(to: CGPoint(x: 3.22, y: 0))
    rectangle.addCurve(to: CGPoint(x: 12.21, y: 5.54), controlPoint1: CGPoint(x: 4.6, y: 0.05), controlPoint2: CGPoint(x: 5.28, y: 5.54))
    rectangle.addCurve(to: CGPoint(x: 19.05, y: 0.98), controlPoint1: CGPoint(x: 17.39, y: 5.54), controlPoint2: CGPoint(x: 16.11, y: 1.25))
    rectangle.addCurve(to: CGPoint(x: 30.69, y: 8.6), controlPoint1: CGPoint(x: 23.6, y: 0.56), controlPoint2: CGPoint(x: 20.95, y: 5.09))
    rectangle.addCurve(to: CGPoint(x: 44.73, y: 14.01), controlPoint1: CGPoint(x: 40.42, y: 12.11), controlPoint2: CGPoint(x: 40.4, y: 12.3))
    rectangle.addCurve(to: CGPoint(x: 51.65, y: 22.28), controlPoint1: CGPoint(x: 49.06, y: 15.72), controlPoint2: CGPoint(x: 53.92, y: 16.39))
    rectangle.addCurve(to: CGPoint(x: 44.99, y: 25.59), controlPoint1: CGPoint(x: 50.91, y: 24.19), controlPoint2: CGPoint(x: 48.35, y: 25.59))
    rectangle.addCurve(to: CGPoint(x: 4.03, y: 25.59), controlPoint1: CGPoint(x: 32.69, y: 25.59), controlPoint2: CGPoint(x: 12.89, y: 25.73))
    rectangle.addCurve(to: CGPoint(x: 0.72, y: 24.53), controlPoint1: CGPoint(x: 1.62, y: 25.54), controlPoint2: CGPoint(x: 0.84, y: 24.62))
    rectangle.addCurve(to: CGPoint(x: 0.2, y: 20.5), controlPoint1: CGPoint(x: 0.6, y: 24.42), controlPoint2: CGPoint(x: -0.12, y: 23.66))
    rectangle.addCurve(to: CGPoint(x: 0.72, y: 16.83), controlPoint1: CGPoint(x: 0.27, y: 19.8), controlPoint2: CGPoint(x: 0.45, y: 18.58))
    rectangle.addCurve(to: CGPoint(x: 0.03, y: 11.39), controlPoint1: CGPoint(x: 0.29, y: 14.14), controlPoint2: CGPoint(x: 0.06, y: 12.32))
    rectangle.addCurve(to: CGPoint(x: 3.22, y: 0), controlPoint1: CGPoint(x: -0.11, y: 7.11), controlPoint2: CGPoint(x: 0.13, y: -0.11))
    rectangle.close()
    
    let sneaker = CAShapeLayer()
    sneaker.path = rectangle.cgPath
    sneaker.fillColor =  UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 1).cgColor
    return sneaker
}

func createBody() -> CAShapeLayer {
    let combinedShape = UIBezierPath()
    combinedShape.move(to: CGPoint(x: 50.05, y: 38.23))
    combinedShape.addLine(to: CGPoint(x: 54.59, y: 0))
    combinedShape.addLine(to: CGPoint(x: 67.64, y: 10.51))
    combinedShape.addLine(to: CGPoint(x: 69.97, y: 38.23))
    combinedShape.addCurve(to: CGPoint(x: 100.61, y: 47.81), controlPoint1: CGPoint(x: 88.28, y: 43.13), controlPoint2: CGPoint(x: 98.49, y: 46.32))
    combinedShape.addCurve(to: CGPoint(x: 117.79, y: 87.24), controlPoint1: CGPoint(x: 103.77, y: 50.05), controlPoint2: CGPoint(x: 114.11, y: 71.85))
    combinedShape.addCurve(to: CGPoint(x: 98.46, y: 87.24), controlPoint1: CGPoint(x: 119.64, y: 94.95), controlPoint2: CGPoint(x: 97.6, y: 82.89))
    combinedShape.addCurve(to: CGPoint(x: 101.61, y: 215.65), controlPoint1: CGPoint(x: 101.09, y: 100.67), controlPoint2: CGPoint(x: 104.52, y: 215.3))
    combinedShape.addCurve(to: CGPoint(x: 25.69, y: 215.65), controlPoint1: CGPoint(x: 80.33, y: 218.27), controlPoint2: CGPoint(x: 29.16, y: 215.17))
    combinedShape.addCurve(to: CGPoint(x: 25.69, y: 144.93), controlPoint1: CGPoint(x: 21.05, y: 216.3), controlPoint2: CGPoint(x: 26.91, y: 174.4))
    combinedShape.addCurve(to: CGPoint(x: 20.46, y: 92.93), controlPoint1: CGPoint(x: 24.55, y: 117.63), controlPoint2: CGPoint(x: 22.37, y: 92.66))
    combinedShape.addCurve(to: CGPoint(x: 0.09, y: 92.8), controlPoint1: CGPoint(x: 6.06, y: 94.95), controlPoint2: CGPoint(x: -0.89, y: 96.87))
    combinedShape.addCurve(to: CGPoint(x: 14.4, y: 49.37), controlPoint1: CGPoint(x: 3.15, y: 80.18), controlPoint2: CGPoint(x: 10.17, y: 51.54))
    combinedShape.addCurve(to: CGPoint(x: 50.05, y: 38.23), controlPoint1: CGPoint(x: 22.4, y: 45.26), controlPoint2: CGPoint(x: 34.29, y: 41.55))
    combinedShape.close()
    
    let body = CAShapeLayer()
    body.path = combinedShape.cgPath
    body.fillColor = UIColor.body.cgColor
    return body
}

func createRightLeg() -> CAShapeLayer {
    let rightLeg = UIBezierPath()
    rightLeg.move(to: CGPoint(x: 1.29, y: 0))
    rightLeg.addLine(to: CGPoint(x: 49.52, y: 0))
    rightLeg.addCurve(to: CGPoint(x: 32.25, y: 115.1), controlPoint1: CGPoint(x: 42.34, y: 52), controlPoint2: CGPoint(x: 36.58, y: 90.36))
    rightLeg.addCurve(to: CGPoint(x: 14.81, y: 206.16), controlPoint1: CGPoint(x: 27.92, y: 139.83), controlPoint2: CGPoint(x: 22.11, y: 170.19))
    rightLeg.addCurve(to: CGPoint(x: 43.3, y: 213.85), controlPoint1: CGPoint(x: 32.29, y: 211.29), controlPoint2: CGPoint(x: 41.78, y: 213.85))
    rightLeg.addCurve(to: CGPoint(x: 45.01, y: 219.23), controlPoint1: CGPoint(x: 46.71, y: 213.85), controlPoint2: CGPoint(x: 47.54, y: 219.55))
    rightLeg.addCurve(to: CGPoint(x: 0, y: 219.23), controlPoint1: CGPoint(x: 43.07, y: 218.99), controlPoint2: CGPoint(x: 28.07, y: 218.99))
    rightLeg.addCurve(to: CGPoint(x: 0.95, y: 209.91), controlPoint1: CGPoint(x: 0.43, y: 215.04), controlPoint2: CGPoint(x: 0.75, y: 211.93))
    rightLeg.addCurve(to: CGPoint(x: 7.32, y: 122.62), controlPoint1: CGPoint(x: 5.2, y: 167.82), controlPoint2: CGPoint(x: 7.32, y: 138.73))
    rightLeg.addCurve(to: CGPoint(x: 1.29, y: 0), controlPoint1: CGPoint(x: 7.32, y: 105.36), controlPoint2: CGPoint(x: 5.31, y: 64.48))
    rightLeg.close()
    
    let right = CAShapeLayer()
    right.path = rightLeg.cgPath
    right.fillColor = UIColor.body.cgColor
    return right
}

func createMovedRightLeg() -> CAShapeLayer {
    let rightLeg = UIBezierPath()
    rightLeg.move(to: CGPoint(x: 7.32, y: 0))
    rightLeg.addLine(to: CGPoint(x: 55.49, y: 0))
    rightLeg.addCurve(to: CGPoint(x: 32.25, y: 115.1), controlPoint1: CGPoint(x: 44.33, y: 52), controlPoint2: CGPoint(x: 36.58, y: 90.36))
    rightLeg.addCurve(to: CGPoint(x: 14.81, y: 206.16), controlPoint1: CGPoint(x: 27.92, y: 139.83), controlPoint2: CGPoint(x: 22.11, y: 170.19))
    rightLeg.addCurve(to: CGPoint(x: 43.3, y: 213.85), controlPoint1: CGPoint(x: 32.29, y: 211.29), controlPoint2: CGPoint(x: 41.78, y: 213.85))
    rightLeg.addCurve(to: CGPoint(x: 45.01, y: 219.23), controlPoint1: CGPoint(x: 46.71, y: 213.85), controlPoint2: CGPoint(x: 47.54, y: 219.55))
    rightLeg.addCurve(to: CGPoint(x: 0, y: 219.23), controlPoint1: CGPoint(x: 43.07, y: 218.99), controlPoint2: CGPoint(x: 28.07, y: 218.99))
    rightLeg.addCurve(to: CGPoint(x: 0.95, y: 209.91), controlPoint1: CGPoint(x: 0.43, y: 215.04), controlPoint2: CGPoint(x: 0.75, y: 211.93))
    rightLeg.addCurve(to: CGPoint(x: 7.32, y: 122.62), controlPoint1: CGPoint(x: 5.2, y: 167.82), controlPoint2: CGPoint(x: 7.32, y: 138.73))
    rightLeg.addCurve(to: CGPoint(x: 7.32, y: 0), controlPoint1: CGPoint(x: 7.32, y: 105.36), controlPoint2: CGPoint(x: 7.32, y: 64.48))
    rightLeg.close()
    
    let right = CAShapeLayer()
    right.path = rightLeg.cgPath
    right.fillColor = UIColor.body.cgColor
    return right
}


func createLeftLeg() -> CAShapeLayer {
    let leftLeg = UIBezierPath()
    leftLeg.move(to: CGPoint.zero)
    leftLeg.addLine(to: CGPoint(x: 54.14, y: 0))
    leftLeg.addLine(to: CGPoint(x: 67.81, y: 206.01))
    leftLeg.addCurve(to: CGPoint(x: 93.6, y: 212.71), controlPoint1: CGPoint(x: 81.63, y: 210.47), controlPoint2: CGPoint(x: 90.23, y: 212.71))
    leftLeg.addCurve(to: CGPoint(x: 97.9, y: 216.12), controlPoint1: CGPoint(x: 96.55, y: 212.71), controlPoint2: CGPoint(x: 97.45, y: 214.3))
    leftLeg.addCurve(to: CGPoint(x: 97.1, y: 219), controlPoint1: CGPoint(x: 98.22, y: 217.42), controlPoint2: CGPoint(x: 97.74, y: 219))
    leftLeg.addCurve(to: CGPoint(x: 54.93, y: 219), controlPoint1: CGPoint(x: 92.36, y: 219), controlPoint2: CGPoint(x: 78.3, y: 219))
    leftLeg.addLine(to: CGPoint(x: 54.93, y: 209.76))
    leftLeg.addCurve(to: CGPoint(x: 39.52, y: 122.84), controlPoint1: CGPoint(x: 49.27, y: 171.46), controlPoint2: CGPoint(x: 44.13, y: 142.48))
    leftLeg.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 34.9, y: 103.2), controlPoint2: CGPoint(x: 21.73, y: 62.26))
    leftLeg.close()
    
    let left = CAShapeLayer()
    left.path = leftLeg.cgPath
    left.fillColor = UIColor.body.cgColor
    return left
}

func createMovedLeftLeg() -> CAShapeLayer {
    let leftLeg = UIBezierPath()
    leftLeg.move(to: CGPoint.zero)
    leftLeg.addLine(to: CGPoint(x: 57.32, y: 0))
    leftLeg.addLine(to: CGPoint(x: 67.77, y: 206.01))
    leftLeg.addCurve(to: CGPoint(x: 93.56, y: 212.71), controlPoint1: CGPoint(x: 81.59, y: 210.47), controlPoint2: CGPoint(x: 90.19, y: 212.71))
    leftLeg.addCurve(to: CGPoint(x: 97.86, y: 216.12), controlPoint1: CGPoint(x: 96.52, y: 212.71), controlPoint2: CGPoint(x: 97.41, y: 214.3))
    leftLeg.addCurve(to: CGPoint(x: 97.07, y: 219), controlPoint1: CGPoint(x: 98.18, y: 217.42), controlPoint2: CGPoint(x: 97.7, y: 219))
    leftLeg.addCurve(to: CGPoint(x: 54.9, y: 219), controlPoint1: CGPoint(x: 92.32, y: 219), controlPoint2: CGPoint(x: 78.26, y: 219))
    leftLeg.addLine(to: CGPoint(x: 54.9, y: 209.76))
    leftLeg.addCurve(to: CGPoint(x: 42.98, y: 121.18), controlPoint1: CGPoint(x: 51.57, y: 170.35), controlPoint2: CGPoint(x: 47.6, y: 140.82))
    leftLeg.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 38.37, y: 101.54), controlPoint2: CGPoint(x: 24.04, y: 61.14))
    leftLeg.close()
    let left = CAShapeLayer()
    left.path = leftLeg.cgPath
    left.fillColor = UIColor.body.cgColor
    return left
}

func createMovedBody() -> CAShapeLayer {
    let combinedShape = UIBezierPath()
    combinedShape.move(to: CGPoint(x: 49.06, y: 38.23))
    combinedShape.addLine(to: CGPoint(x: 53.6, y: 0))
    combinedShape.addLine(to: CGPoint(x: 66.65, y: 10.51))
    combinedShape.addLine(to: CGPoint(x: 68.97, y: 38.23))
    combinedShape.addCurve(to: CGPoint(x: 99.61, y: 47.81), controlPoint1: CGPoint(x: 87.29, y: 43.13), controlPoint2: CGPoint(x: 97.5, y: 46.32))
    combinedShape.addCurve(to: CGPoint(x: 115.15, y: 86.24), controlPoint1: CGPoint(x: 102.78, y: 50.05), controlPoint2: CGPoint(x: 112.7, y: 70.03))
    combinedShape.addCurve(to: CGPoint(x: 97.47, y: 87.24), controlPoint1: CGPoint(x: 116.17, y: 92.95), controlPoint2: CGPoint(x: 96.61, y: 82.89))
    combinedShape.addCurve(to: CGPoint(x: 104.04, y: 215.65), controlPoint1: CGPoint(x: 100.1, y: 100.67), controlPoint2: CGPoint(x: 106.94, y: 215.3))
    combinedShape.addCurve(to: CGPoint(x: 30.16, y: 215.65), controlPoint1: CGPoint(x: 82.76, y: 218.27), controlPoint2: CGPoint(x: 33.06, y: 219.33))
    combinedShape.addCurve(to: CGPoint(x: 27.67, y: 144.5), controlPoint1: CGPoint(x: 27.67, y: 212.49), controlPoint2: CGPoint(x: 28.9, y: 173.97))
    combinedShape.addCurve(to: CGPoint(x: 19.47, y: 92.93), controlPoint1: CGPoint(x: 26.54, y: 117.21), controlPoint2: CGPoint(x: 21.38, y: 92.66))
    combinedShape.addCurve(to: CGPoint(x: 0.02, y: 93.24), controlPoint1: CGPoint(x: 5.07, y: 94.95), controlPoint2: CGPoint(x: -0.42, y: 97.33))
    combinedShape.addCurve(to: CGPoint(x: 13.41, y: 49.37), controlPoint1: CGPoint(x: 1.51, y: 79.46), controlPoint2: CGPoint(x: 9.17, y: 51.54))
    combinedShape.addCurve(to: CGPoint(x: 49.06, y: 38.23), controlPoint1: CGPoint(x: 21.41, y: 45.26), controlPoint2: CGPoint(x: 33.3, y: 41.55))
    combinedShape.close()
    let body = CAShapeLayer()
    body.path = combinedShape.cgPath
    body.fillColor = UIColor.body.cgColor
    return body
}
