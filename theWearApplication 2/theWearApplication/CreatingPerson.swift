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
    return headCA
}

func createBody() -> CAShapeLayer {
    let combinedShape = UIBezierPath()
    combinedShape.move(to: CGPoint(x: 43.91, y: 92.23))
    combinedShape.addCurve(to: CGPoint(x: 58.08, y: 49.37), controlPoint1: CGPoint(x: 47.04, y: 79.34), controlPoint2: CGPoint(x: 53.91, y: 51.51))
    combinedShape.addCurve(to: CGPoint(x: 93.73, y: 38.23), controlPoint1: CGPoint(x: 66.08, y: 45.26), controlPoint2: CGPoint(x: 77.97, y: 41.55))
    combinedShape.addLine(to: CGPoint(x: 98.27, y: 0))
    combinedShape.addLine(to: CGPoint(x: 111.32, y: 10.51))
    combinedShape.addLine(to: CGPoint(x: 113.65, y: 38.23))
    combinedShape.addCurve(to: CGPoint(x: 144.29, y: 47.81), controlPoint1: CGPoint(x: 131.96, y: 43.13), controlPoint2: CGPoint(x: 142.17, y: 46.32))
    combinedShape.addCurve(to: CGPoint(x: 161.25, y: 86.34), controlPoint1: CGPoint(x: 147.39, y: 50), controlPoint2: CGPoint(x: 157.39, y: 71.01))
    combinedShape.addLine(to: CGPoint(x: 161.25, y: 86.34))
    combinedShape.addLine(to: CGPoint(x: 187.44, y: 182.1))
    combinedShape.addCurve(to: CGPoint(x: 199.4, y: 216.22), controlPoint1: CGPoint(x: 197.41, y: 200.46), controlPoint2: CGPoint(x: 201.39, y: 211.84))
    combinedShape.addCurve(to: CGPoint(x: 181.96, y: 202.36), controlPoint1: CGPoint(x: 196.42, y: 222.8), controlPoint2: CGPoint(x: 188.13, y: 204.33))
    combinedShape.addCurve(to: CGPoint(x: 174.18, y: 209.1), controlPoint1: CGPoint(x: 178.64, y: 201.3), controlPoint2: CGPoint(x: 177.56, y: 210.33))
    combinedShape.addCurve(to: CGPoint(x: 174.34, y: 186.89), controlPoint1: CGPoint(x: 171.93, y: 208.28), controlPoint2: CGPoint(x: 171.98, y: 200.88))
    combinedShape.addLine(to: CGPoint(x: 142.45, y: 89.27))
    combinedShape.addCurve(to: CGPoint(x: 145.29, y: 215.65), controlPoint1: CGPoint(x: 145.03, y: 109.49), controlPoint2: CGPoint(x: 148.08, y: 215.31))
    combinedShape.addCurve(to: CGPoint(x: 69.36, y: 215.65), controlPoint1: CGPoint(x: 124.01, y: 218.27), controlPoint2: CGPoint(x: 72.84, y: 215.17))
    combinedShape.addCurve(to: CGPoint(x: 69.36, y: 144.93), controlPoint1: CGPoint(x: 64.73, y: 216.3), controlPoint2: CGPoint(x: 70.59, y: 174.4))
    combinedShape.addCurve(to: CGPoint(x: 64.14, y: 92.93), controlPoint1: CGPoint(x: 68.23, y: 117.63), controlPoint2: CGPoint(x: 66.05, y: 92.66))
    combinedShape.addLine(to: CGPoint(x: 32.6, y: 198.62))
    combinedShape.addCurve(to: CGPoint(x: 35.21, y: 217.98), controlPoint1: CGPoint(x: 36.59, y: 210.7), controlPoint2: CGPoint(x: 37.46, y: 217.16))
    combinedShape.addCurve(to: CGPoint(x: 25.6, y: 210.07), controlPoint1: CGPoint(x: 31.83, y: 219.21), controlPoint2: CGPoint(x: 28.92, y: 209.01))
    combinedShape.addCurve(to: CGPoint(x: 1.26, y: 223.49), controlPoint1: CGPoint(x: 19.43, y: 212.04), controlPoint2: CGPoint(x: 7.44, y: 225.74))
    combinedShape.addCurve(to: CGPoint(x: 19.1, y: 193.7), controlPoint1: CGPoint(x: -2.85, y: 221.99), controlPoint2: CGPoint(x: 3.09, y: 212.06))
    combinedShape.addLine(to: CGPoint(x: 43.9, y: 92.23))
    combinedShape.addLine(to: CGPoint(x: 43.91, y: 92.23))
    combinedShape.close()
    
    let body = CAShapeLayer()
    body.path = combinedShape.cgPath
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
    return left
}

func createMovedLeftLeg() -> CAShapeLayer {
    let leftLeg = UIBezierPath()
    leftLeg.move(to: CGPoint.zero)
    leftLeg.addLine(to: CGPoint(x: 51.36, y: 0))
    leftLeg.addLine(to: CGPoint(x: 61.77, y: 206.01))
    leftLeg.addCurve(to: CGPoint(x: 87.56, y: 212.71), controlPoint1: CGPoint(x: 75.59, y: 210.47), controlPoint2: CGPoint(x: 84.19, y: 212.71))
    leftLeg.addCurve(to: CGPoint(x: 91.86, y: 216.12), controlPoint1: CGPoint(x: 90.52, y: 212.71), controlPoint2: CGPoint(x: 91.41, y: 214.3))
    leftLeg.addCurve(to: CGPoint(x: 91.07, y: 219), controlPoint1: CGPoint(x: 92.18, y: 217.42), controlPoint2: CGPoint(x: 91.7, y: 219))
    leftLeg.addCurve(to: CGPoint(x: 48.9, y: 219), controlPoint1: CGPoint(x: 86.32, y: 219), controlPoint2: CGPoint(x: 72.26, y: 219))
    leftLeg.addLine(to: CGPoint(x: 48.9, y: 209.76))
    leftLeg.addCurve(to: CGPoint(x: 33.48, y: 122.84), controlPoint1: CGPoint(x: 43.23, y: 171.46), controlPoint2: CGPoint(x: 38.09, y: 142.48))
    leftLeg.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 28.87, y: 103.2), controlPoint2: CGPoint(x: 17.71, y: 62.26))
    leftLeg.close()
    
    let left = CAShapeLayer()
    left.path = leftLeg.cgPath
    return left
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
    return right
}

func createMovedBody() -> CAShapeLayer {
    let combinedShape = UIBezierPath()
    combinedShape.move(to: CGPoint(x: 31.59, y: 92.82))
    combinedShape.addCurve(to: CGPoint(x: 44.92, y: 49.37), controlPoint1: CGPoint(x: 33.18, y: 78.9), controlPoint2: CGPoint(x: 40.73, y: 51.52))
    combinedShape.addCurve(to: CGPoint(x: 80.58, y: 38.23), controlPoint1: CGPoint(x: 52.93, y: 45.26), controlPoint2: CGPoint(x: 64.81, y: 41.55))
    combinedShape.addLine(to: CGPoint(x: 85.12, y: 0))
    combinedShape.addLine(to: CGPoint(x: 98.17, y: 10.51))
    combinedShape.addLine(to: CGPoint(x: 100.49, y: 38.23))
    combinedShape.addCurve(to: CGPoint(x: 131.13, y: 47.81), controlPoint1: CGPoint(x: 118.81, y: 43.13), controlPoint2: CGPoint(x: 129.02, y: 46.32))
    combinedShape.addCurve(to: CGPoint(x: 146.5, y: 85.17), controlPoint1: CGPoint(x: 134.23, y: 50), controlPoint2: CGPoint(x: 143.79, y: 69.16))
    combinedShape.addLine(to: CGPoint(x: 163.99, y: 181.45))
    combinedShape.addCurve(to: CGPoint(x: 172.93, y: 216.49), controlPoint1: CGPoint(x: 172.31, y: 200.61), controlPoint2: CGPoint(x: 175.29, y: 212.29))
    combinedShape.addCurve(to: CGPoint(x: 156.76, y: 201.16), controlPoint1: CGPoint(x: 169.38, y: 222.78), controlPoint2: CGPoint(x: 162.73, y: 203.66))
    combinedShape.addCurve(to: CGPoint(x: 148.42, y: 207.19), controlPoint1: CGPoint(x: 153.54, y: 199.81), controlPoint2: CGPoint(x: 151.68, y: 208.71))
    combinedShape.addCurve(to: CGPoint(x: 150.52, y: 185.08), controlPoint1: CGPoint(x: 146.25, y: 206.18), controlPoint2: CGPoint(x: 146.95, y: 198.81))
    combinedShape.addLine(to: CGPoint(x: 130.28, y: 98.07))
    combinedShape.addCurve(to: CGPoint(x: 135.55, y: 215.65), controlPoint1: CGPoint(x: 133.33, y: 130.22), controlPoint2: CGPoint(x: 138.06, y: 215.35))
    combinedShape.addCurve(to: CGPoint(x: 61.68, y: 215.65), controlPoint1: CGPoint(x: 114.28, y: 218.27), controlPoint2: CGPoint(x: 64.57, y: 219.33))
    combinedShape.addCurve(to: CGPoint(x: 59.19, y: 144.5), controlPoint1: CGPoint(x: 59.19, y: 212.49), controlPoint2: CGPoint(x: 60.41, y: 173.97))
    combinedShape.addCurve(to: CGPoint(x: 51.25, y: 93.03), controlPoint1: CGPoint(x: 58.11, y: 118.38), controlPoint2: CGPoint(x: 53.33, y: 94.78))
    combinedShape.addLine(to: CGPoint(x: 30.5, y: 194))
    combinedShape.addCurve(to: CGPoint(x: 34.78, y: 213.05), controlPoint1: CGPoint(x: 35.53, y: 205.69), controlPoint2: CGPoint(x: 36.95, y: 212.04))
    combinedShape.addCurve(to: CGPoint(x: 24.52, y: 206.02), controlPoint1: CGPoint(x: 31.53, y: 214.57), controlPoint2: CGPoint(x: 27.74, y: 204.67))
    combinedShape.addCurve(to: CGPoint(x: 1.45, y: 221.51), controlPoint1: CGPoint(x: 18.55, y: 208.52), controlPoint2: CGPoint(x: 7.8, y: 223.21))
    combinedShape.addCurve(to: CGPoint(x: 16.61, y: 190.27), controlPoint1: CGPoint(x: -2.79, y: 220.37), controlPoint2: CGPoint(x: 2.27, y: 209.96))
    combinedShape.addLine(to: CGPoint(x: 31.59, y: 92.82))
    combinedShape.close()
    
    let body = CAShapeLayer()
    body.path = combinedShape.cgPath
    return body
}
