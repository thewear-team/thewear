//
//  ManWhenRain.swift
//  theWearPersons
//
//  Created by Max Reshetov on 10/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class ManWhenRain: NSObject {
    
    class func createRightGloveWhenRain() -> UIView {
        let gloves = UIView()
        
        let right2 = UIBezierPath()
        right2.move(to: CGPoint(x: 20.88, y: 0))
        right2.addLine(to: CGPoint(x: 35.13, y: 3.28))
        right2.addCurve(to: CGPoint(x: 34.51, y: 9.5), controlPoint1: CGPoint(x: 34.72, y: 5.3), controlPoint2: CGPoint(x: 34.51, y: 7.37))
        right2.addCurve(to: CGPoint(x: 37.27, y: 29.46), controlPoint1: CGPoint(x: 34.51, y: 12.69), controlPoint2: CGPoint(x: 40.36, y: 26.02))
        right2.addCurve(to: CGPoint(x: 26.06, y: 22.85), controlPoint1: CGPoint(x: 34.19, y: 32.9), controlPoint2: CGPoint(x: 30.17, y: 21.55))
        right2.addCurve(to: CGPoint(x: 0.31, y: 33.96), controlPoint1: CGPoint(x: 21.96, y: 24.14), controlPoint2: CGPoint(x: 3.42, y: 41.25))
        right2.addCurve(to: CGPoint(x: 19.29, y: 4.06), controlPoint1: CGPoint(x: -2.8, y: 26.67), controlPoint2: CGPoint(x: 18.2, y: 6.16))
        right2.addCurve(to: CGPoint(x: 20.88, y: 0), controlPoint1: CGPoint(x: 20.02, y: 2.67), controlPoint2: CGPoint(x: 20.55, y: 1.31))
        right2.close()
        let r = CAShapeLayer()
        r.path = right2.cgPath
        r.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        r.position = CGPoint(x: 23, y: 232.13)
        
        gloves.layer.addSublayer(r)
        return gloves
    }
    
    class func createLeftGloveWhenRain() -> UIView {
        let glove = UIView()
        
        let left2 = UIBezierPath()
        left2.move(to: CGPoint(x: 1.37, y: 3.34))
        left2.addCurve(to: CGPoint(x: 14.62, y: 3.78), controlPoint1: CGPoint(x: 4.47, y: -0.72), controlPoint2: CGPoint(x: 8.38, y: -1.65))
        left2.addCurve(to: CGPoint(x: 17.49, y: 16.78), controlPoint1: CGPoint(x: 20.86, y: 9.21), controlPoint2: CGPoint(x: 20.1, y: 15.37))
        left2.addCurve(to: CGPoint(x: 4.42, y: 15.16), controlPoint1: CGPoint(x: 14.88, y: 18.18), controlPoint2: CGPoint(x: 7.88, y: 17.25))
        left2.addCurve(to: CGPoint(x: 1.37, y: 3.34), controlPoint1: CGPoint(x: 0.95, y: 13.06), controlPoint2: CGPoint(x: -1.74, y: 7.39))
        left2.close()
        let l = CAShapeLayer()
        l.path = left2.cgPath
        l.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        l.position = CGPoint(x: 181.03, y: 96.22)
        
        glove.layer.addSublayer(l)
        return glove
    }
    
    class func createHoodieWhenRain() -> UIView {
        let hoodie = UIView()
        
        let capeOutLayer = UIBezierPath()
        capeOutLayer.move(to: CGPoint(x: 1.44, y: 14.51))
        capeOutLayer.addCurve(to: CGPoint(x: 26.84, y: 0.19), controlPoint1: CGPoint(x: 4.87, y: 7.9), controlPoint2: CGPoint(x: 11.04, y: 1.09))
        capeOutLayer.addCurve(to: CGPoint(x: 52.19, y: 7.61), controlPoint1: CGPoint(x: 34.51, y: -0.25), controlPoint2: CGPoint(x: 39.32, y: -0.61))
        capeOutLayer.addCurve(to: CGPoint(x: 72.37, y: 29.6), controlPoint1: CGPoint(x: 60.78, y: 13.1), controlPoint2: CGPoint(x: 67.5, y: 20.43))
        capeOutLayer.addLine(to: CGPoint(x: 64.17, y: 34.8))
        capeOutLayer.addCurve(to: CGPoint(x: 30.37, y: 34.8), controlPoint1: CGPoint(x: 49.68, y: 35.04), controlPoint2: CGPoint(x: 38.42, y: 35.04))
        capeOutLayer.addCurve(to: CGPoint(x: 6.4, y: 32.97), controlPoint1: CGPoint(x: 18.3, y: 34.43), controlPoint2: CGPoint(x: 11.72, y: 36.37))
        capeOutLayer.addCurve(to: CGPoint(x: 1.44, y: 14.51), controlPoint1: CGPoint(x: 1.09, y: 29.58), controlPoint2: CGPoint(x: -1.98, y: 21.12))
        capeOutLayer.close()
        let co = CAShapeLayer()
        co.path = capeOutLayer.cgPath
        co.fillColor = UIColor(red: 255/255, green: 211/255, blue: 78/255, alpha: 1).cgColor
        co.position = CGPoint(x: 83.82, y: 60.04)
        
        let capeInLayer = UIBezierPath()
        capeInLayer.move(to: CGPoint(x: 0.28, y: 8.92))
        capeInLayer.addCurve(to: CGPoint(x: 12.45, y: 0.03), controlPoint1: CGPoint(x: -0.55, y: 7.11), controlPoint2: CGPoint(x: -0.32, y: 0.77))
        capeInLayer.addCurve(to: CGPoint(x: 32.94, y: 6.1), controlPoint1: CGPoint(x: 18.65, y: -0.32), controlPoint2: CGPoint(x: 27.56, y: 2.26))
        capeInLayer.addCurve(to: CGPoint(x: 43.93, y: 16.28), controlPoint1: CGPoint(x: 38.32, y: 9.94), controlPoint2: CGPoint(x: 42.96, y: 12.99))
        capeInLayer.addCurve(to: CGPoint(x: 33.57, y: 29.13), controlPoint1: CGPoint(x: 44.89, y: 19.57), controlPoint2: CGPoint(x: 43.93, y: 28.35))
        capeInLayer.addCurve(to: CGPoint(x: 11.62, y: 19.09), controlPoint1: CGPoint(x: 23.2, y: 29.91), controlPoint2: CGPoint(x: 17.26, y: 22.54))
        capeInLayer.addCurve(to: CGPoint(x: 0.28, y: 8.92), controlPoint1: CGPoint(x: 5.98, y: 15.65), controlPoint2: CGPoint(x: 1.1, y: 10.72))
        capeInLayer.close()
        let ci = CAShapeLayer()
        ci.path = capeInLayer.cgPath
        ci.fillColor = UIColor(red: 255/255, green: 196/255, blue: 19/255, alpha: 1).cgColor
        ci.position = CGPoint(x: 99.11, y: 65.93)
        
        let headNeckLayer = UIBezierPath()
        headNeckLayer.move(to: CGPoint(x: 26.94, y: 63.91))
        headNeckLayer.addLine(to: CGPoint(x: 28.58, y: 79.83))
        headNeckLayer.addLine(to: CGPoint(x: 8.49, y: 79.83))
        headNeckLayer.addLine(to: CGPoint(x: 10.48, y: 49.41))
        headNeckLayer.addCurve(to: CGPoint(x: 3.09, y: 11.29), controlPoint1: CGPoint(x: -1.65, y: 35.11), controlPoint2: CGPoint(x: -1.98, y: 22.56))
        headNeckLayer.addCurve(to: CGPoint(x: 44.02, y: 10.18), controlPoint1: CGPoint(x: 9.17, y: -2.21), controlPoint2: CGPoint(x: 34.9, y: -4.82))
        headNeckLayer.addCurve(to: CGPoint(x: 26.94, y: 63.91), controlPoint1: CGPoint(x: 54.31, y: 27.09), controlPoint2: CGPoint(x: 55.11, y: 80.49))
        headNeckLayer.close()
        let hn = CAShapeLayer()
        hn.path = headNeckLayer.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 109.64, y: 8)
        
        let manHeadPartBodyLayer = UIBezierPath()
        manHeadPartBodyLayer.move(to: CGPoint(x: 0.18, y: 10.9))
        manHeadPartBodyLayer.addCurve(to: CGPoint(x: 44.33, y: 0.03), controlPoint1: CGPoint(x: 4.99, y: 4.45), controlPoint2: CGPoint(x: 23.71, y: 0.41))
        manHeadPartBodyLayer.addCurve(to: CGPoint(x: 84.79, y: 9.31), controlPoint1: CGPoint(x: 64.96, y: -0.35), controlPoint2: CGPoint(x: 78.2, y: 3.26))
        manHeadPartBodyLayer.addCurve(to: CGPoint(x: 0.18, y: 10.9), controlPoint1: CGPoint(x: 91.37, y: 15.36), controlPoint2: CGPoint(x: -4.64, y: 17.34))
        manHeadPartBodyLayer.close()
        let hp = CAShapeLayer()
        hp.path = manHeadPartBodyLayer.cgPath
        hp.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hp.position = CGPoint(x: 82.72, y: 83.3)
        
        let manHoodieBodyLayer = UIBezierPath()
        manHoodieBodyLayer.move(to: CGPoint(x: 41.25, y: 8.58))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 67.73, y: 1.43), controlPoint1: CGPoint(x: 51.47, y: -0.11), controlPoint2: CGPoint(x: 67.22, y: 0.83))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 89.57, y: 8.58), controlPoint1: CGPoint(x: 68.34, y: 2.14), controlPoint2: CGPoint(x: 79.23, y: 8.58))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 100.32, y: 0.74), controlPoint1: CGPoint(x: 99.92, y: 8.58), controlPoint2: CGPoint(x: 100.32, y: 1.7))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 123.82, y: 7.34), controlPoint1: CGPoint(x: 100.32, y: -1.93), controlPoint2: CGPoint(x: 117.42, y: 3.21))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 143.76, y: 44.68), controlPoint1: CGPoint(x: 129.12, y: 10.77), controlPoint2: CGPoint(x: 135.76, y: 23.21))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 143.76, y: 36.31), controlPoint1: CGPoint(x: 143.76, y: 40.93), controlPoint2: CGPoint(x: 143.76, y: 38.14))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 159.53, y: 36.31), controlPoint1: CGPoint(x: 143.76, y: 33.55), controlPoint2: CGPoint(x: 157.57, y: 30.79))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 159.53, y: 107.99), controlPoint1: CGPoint(x: 161.49, y: 41.83), controlPoint2: CGPoint(x: 174.39, y: 104.93))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 134.89, y: 94.37), controlPoint1: CGPoint(x: 144.67, y: 111.04), controlPoint2: CGPoint(x: 137.97, y: 100.6))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 130.37, y: 103.77), controlPoint1: CGPoint(x: 130.2, y: 84.89), controlPoint2: CGPoint(x: 124.79, y: 51.16))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 128.58, y: 177.64), controlPoint1: CGPoint(x: 135.95, y: 156.37), controlPoint2: CGPoint(x: 129.8, y: 175.58))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 46.92, y: 177.64), controlPoint1: CGPoint(x: 127.37, y: 179.69), controlPoint2: CGPoint(x: 48.04, y: 178.5))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 38.29, y: 108.92), controlPoint1: CGPoint(x: 45.8, y: 176.78), controlPoint2: CGPoint(x: 37.63, y: 130.52))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 36.04, y: 95.56), controlPoint1: CGPoint(x: 38.96, y: 87.32), controlPoint2: CGPoint(x: 39.47, y: 85.03))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 15.74, y: 153.63), controlPoint1: CGPoint(x: 24.98, y: 129.54), controlPoint2: CGPoint(x: 19.08, y: 149.37))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 0, y: 148.33), controlPoint1: CGPoint(x: 12.4, y: 157.88), controlPoint2: CGPoint(x: 0.03, y: 155.77))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 41.25, y: 8.58), controlPoint1: CGPoint(x: -0.05, y: 134.6), controlPoint2: CGPoint(x: 11.81, y: 33.63))
        manHoodieBodyLayer.close()
        let body = CAShapeLayer()
        body.path = manHoodieBodyLayer.cgPath
        body.fillColor = UIColor(red: 255/255, green: 211/255, blue: 78/255, alpha: 1).cgColor
        body.position = CGPoint(x: 43, y: 83.6)
        
        [co, ci, hn, hp, body].forEach {hoodie.layer.addSublayer($0)}
        return hoodie
    }
    
    class func createWindBreakerWhenRain() -> UIView {
        let windbreaker = UIView()
        
        let capeOutLayer = UIBezierPath()
        capeOutLayer.move(to: CGPoint(x: 1.38, y: 14.53))
        capeOutLayer.addCurve(to: CGPoint(x: 29.87, y: 0.04), controlPoint1: CGPoint(x: 6.41, y: 4.08), controlPoint2: CGPoint(x: 14.06, y: 0.94))
        capeOutLayer.addCurve(to: CGPoint(x: 59.12, y: 10.84), controlPoint1: CGPoint(x: 37.53, y: -0.4), controlPoint2: CGPoint(x: 46.25, y: 2.63))
        capeOutLayer.addCurve(to: CGPoint(x: 74.94, y: 39.33), controlPoint1: CGPoint(x: 67.7, y: 16.31), controlPoint2: CGPoint(x: 72.97, y: 25.81))
        capeOutLayer.addCurve(to: CGPoint(x: 37.29, y: 37.96), controlPoint1: CGPoint(x: 57.89, y: 38.66), controlPoint2: CGPoint(x: 45.34, y: 38.21))
        capeOutLayer.addCurve(to: CGPoint(x: 11.66, y: 42.32), controlPoint1: CGPoint(x: 25.22, y: 37.6), controlPoint2: CGPoint(x: 16.97, y: 45.7))
        capeOutLayer.addCurve(to: CGPoint(x: 1.38, y: 14.53), controlPoint1: CGPoint(x: 6.35, y: 38.93), controlPoint2: CGPoint(x: -3.66, y: 24.99))
        capeOutLayer.close()
        let co = CAShapeLayer()
        co.path = capeOutLayer.cgPath
        co.fillColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1).cgColor
        co.position = CGPoint(x: 77.7, y: 49.54)
        
        let capeInLayer = UIBezierPath()
        capeInLayer.move(to: CGPoint(x: 0.11, y: 12.04))
        capeInLayer.addCurve(to: CGPoint(x: 15.62, y: 0.04), controlPoint1: CGPoint(x: -0.71, y: 6.66), controlPoint2: CGPoint(x: 2.83, y: -0.61))
        capeInLayer.addCurve(to: CGPoint(x: 37.18, y: 8.67), controlPoint1: CGPoint(x: 20.53, y: 0.29), controlPoint2: CGPoint(x: 29.88, y: 3.82))
        capeInLayer.addCurve(to: CGPoint(x: 51.48, y: 30.4), controlPoint1: CGPoint(x: 43.78, y: 13.05), controlPoint2: CGPoint(x: 52.72, y: 23.89))
        capeInLayer.addCurve(to: CGPoint(x: 12.41, y: 28.4), controlPoint1: CGPoint(x: 50.24, y: 36.91), controlPoint2: CGPoint(x: 20.93, y: 31.12))
        capeInLayer.addCurve(to: CGPoint(x: 0.11, y: 12.04), controlPoint1: CGPoint(x: 3.89, y: 25.68), controlPoint2: CGPoint(x: 0.93, y: 17.42))
        capeInLayer.close()
        let ci = CAShapeLayer()
        ci.path = capeInLayer.cgPath
        ci.fillColor = UIColor(red: 197/255, green: 197/255, blue: 197/255, alpha: 1).cgColor
        ci.position = CGPoint(x: 93.28, y: 54.73)
        
        let neckLayer = UIBezierPath()
        neckLayer.move(to: CGPoint(x: 2.19, y: 0))
        neckLayer.addLine(to: CGPoint(x: 17.82, y: 11.42))
        neckLayer.addLine(to: CGPoint(x: 20.1, y: 33.44))
        neckLayer.addLine(to: CGPoint(x: 0, y: 33.44))
        neckLayer.addLine(to: CGPoint(x: 2.19, y: 0))
        neckLayer.close()
        let n = CAShapeLayer()
        n.path = neckLayer.cgPath
        n.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        n.position = CGPoint(x: 118.2, y: 54.21)
        
        let shouldersLayer = UIBezierPath()
        shouldersLayer.move(to: CGPoint(x: 0.18, y: 10.87))
        shouldersLayer.addCurve(to: CGPoint(x: 44.33, y: 0.03), controlPoint1: CGPoint(x: 4.99, y: 4.44), controlPoint2: CGPoint(x: 23.71, y: 0.41))
        shouldersLayer.addCurve(to: CGPoint(x: 84.79, y: 9.29), controlPoint1: CGPoint(x: 64.96, y: -0.35), controlPoint2: CGPoint(x: 78.2, y: 3.25))
        shouldersLayer.addCurve(to: CGPoint(x: 0.18, y: 10.87), controlPoint1: CGPoint(x: 91.37, y: 15.32), controlPoint2: CGPoint(x: -4.64, y: 17.3))
        shouldersLayer.close()
        let sh = CAShapeLayer()
        sh.path = shouldersLayer.cgPath
        sh.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        sh.position = CGPoint(x: 82.8, y: 83.13)
        
        let windBreakerBodyLayer = UIBezierPath()
        windBreakerBodyLayer.move(to: CGPoint(x: 38.2, y: 11.16))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 62.99, y: 1.64), controlPoint1: CGPoint(x: 44.09, y: 5.94), controlPoint2: CGPoint(x: 60.98, y: 1.1))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 88.45, y: 5.94), controlPoint1: CGPoint(x: 65.01, y: 2.18), controlPoint2: CGPoint(x: 82.59, y: 5.94))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 101.58, y: 1.17), controlPoint1: CGPoint(x: 99.89, y: 5.94), controlPoint2: CGPoint(x: 101.96, y: 3.49))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 120.42, y: 5.94), controlPoint1: CGPoint(x: 101.2, y: -1.15), controlPoint2: CGPoint(x: 100.65, y: -0.26))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 145.69, y: 55.02), controlPoint1: CGPoint(x: 125.83, y: 7.63), controlPoint2: CGPoint(x: 134.26, y: 24))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 143.83, y: 34.61), controlPoint1: CGPoint(x: 144.45, y: 44.53), controlPoint2: CGPoint(x: 143.83, y: 37.73))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 158.53, y: 37.17), controlPoint1: CGPoint(x: 143.83, y: 29.93), controlPoint2: CGPoint(x: 157.23, y: 33.62))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 159.38, y: 107.43), controlPoint1: CGPoint(x: 159.83, y: 44.72), controlPoint2: CGPoint(x: 171.45, y: 103.78))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 135.15, y: 94.56), controlPoint1: CGPoint(x: 147.32, y: 111.09), controlPoint2: CGPoint(x: 140.92, y: 105.23))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 123.46, y: 66.99), controlPoint1: CGPoint(x: 126.33, y: 78.24), controlPoint2: CGPoint(x: 121.31, y: 49.7))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 126.37, y: 108.53), controlPoint1: CGPoint(x: 125.61, y: 84.29), controlPoint2: CGPoint(x: 125.61, y: 95.12))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 128.56, y: 193.67), controlPoint1: CGPoint(x: 127.14, y: 121.94), controlPoint2: CGPoint(x: 129.78, y: 191.62))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 47.32, y: 193.67), controlPoint1: CGPoint(x: 127.35, y: 195.71), controlPoint2: CGPoint(x: 48.03, y: 195.5))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 47.32, y: 91.42), controlPoint1: CGPoint(x: 46.62, y: 191.83), controlPoint2: CGPoint(x: 47.82, y: 113.78))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 40.25, y: 73.6), controlPoint1: CGPoint(x: 46.44, y: 51.67), controlPoint2: CGPoint(x: 43.68, y: 63.09))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 14.81, y: 155.4), controlPoint1: CGPoint(x: 29.18, y: 107.5), controlPoint2: CGPoint(x: 18.14, y: 151.15))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 0, y: 148.9), controlPoint1: CGPoint(x: 11.47, y: 159.64), controlPoint2: CGPoint(x: 0.03, y: 156.32))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 14.81, y: 68.65), controlPoint1: CGPoint(x: -0.03, y: 141.34), controlPoint2: CGPoint(x: 5.52, y: 103.29))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 38.2, y: 11.16), controlPoint1: CGPoint(x: 22.34, y: 40.54), controlPoint2: CGPoint(x: 33.26, y: 15.52))
        windBreakerBodyLayer.close()
        let body = CAShapeLayer()
        body.path = windBreakerBodyLayer.cgPath
        body.fillColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1).cgColor
        body.position = CGPoint(x: 43.5, y: 81.71)
        
        let zipperLayer = UIBezierPath()
        zipperLayer.move(to: CGPoint.zero)
        zipperLayer.addCurve(to: CGPoint(x: 2.73, y: 0.13), controlPoint1: CGPoint(x: 1.4, y: 0.09), controlPoint2: CGPoint(x: 2.31, y: 0.13))
        zipperLayer.addCurve(to: CGPoint(x: 5.23, y: 0.07), controlPoint1: CGPoint(x: 3.15, y: 0.13), controlPoint2: CGPoint(x: 3.98, y: 0.11))
        zipperLayer.addCurve(to: CGPoint(x: 10.45, y: 76.07), controlPoint1: CGPoint(x: 8.71, y: 17.06), controlPoint2: CGPoint(x: 10.45, y: 42.39))
        zipperLayer.addCurve(to: CGPoint(x: 7.85, y: 189.31), controlPoint1: CGPoint(x: 10.45, y: 109.76), controlPoint2: CGPoint(x: 9.59, y: 147.5))
        zipperLayer.addLine(to: CGPoint(x: 2.63, y: 189.31))
        zipperLayer.addCurve(to: CGPoint(x: 5.24, y: 76.07), controlPoint1: CGPoint(x: 4.37, y: 143.75), controlPoint2: CGPoint(x: 5.24, y: 106))
        zipperLayer.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 5.24, y: 46.15), controlPoint2: CGPoint(x: 3.49, y: 20.79))
        zipperLayer.close()
        let zip = CAShapeLayer()
        zip.path = zipperLayer.cgPath
        zip.fillColor = UIColor(red: 223/255, green: 223/255, blue: 223/255, alpha: 1).cgColor
        zip.position = CGPoint(x: 128.91, y: 87.52)
        
        let headLayer = UIBezierPath()
        headLayer.move(to: CGPoint(x: 3.09, y: 11.26))
        headLayer.addCurve(to: CGPoint(x: 44.02, y: 10.16), controlPoint1: CGPoint(x: 9.17, y: -2.21), controlPoint2: CGPoint(x: 34.9, y: -4.81))
        headLayer.addCurve(to: CGPoint(x: 19.1, y: 57.96), controlPoint1: CGPoint(x: 55.18, y: 28.47), controlPoint2: CGPoint(x: 55.18, y: 89.64))
        headLayer.addCurve(to: CGPoint(x: 3.09, y: 11.26), controlPoint1: CGPoint(x: -1.32, y: 40.03), controlPoint2: CGPoint(x: -2.98, y: 24.73))
        headLayer.close()
        let hl = CAShapeLayer()
        hl.path = headLayer.cgPath
        hl.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hl.position = CGPoint(x: 109.72, y: 8)
        
        [co, ci, n, sh, body, hl].forEach {windbreaker.layer.addSublayer($0)}
        return windbreaker
    }
    
    class func createJacketWhenRain() -> UIView {
        let jacket = UIView()
        
        let capeOutLayer = UIBezierPath()
        capeOutLayer.move(to: CGPoint(x: 2.14, y: 14.57))
        capeOutLayer.addCurve(to: CGPoint(x: 30.63, y: 0.04), controlPoint1: CGPoint(x: 7.17, y: 4.09), controlPoint2: CGPoint(x: 14.82, y: 0.94))
        capeOutLayer.addCurve(to: CGPoint(x: 59.88, y: 10.86), controlPoint1: CGPoint(x: 38.29, y: -0.4), controlPoint2: CGPoint(x: 47.01, y: 2.64))
        capeOutLayer.addCurve(to: CGPoint(x: 80.05, y: 32.85), controlPoint1: CGPoint(x: 68.46, y: 16.35), controlPoint2: CGPoint(x: 75.18, y: 23.67))
        capeOutLayer.addLine(to: CGPoint(x: 71.86, y: 38.05))
        capeOutLayer.addCurve(to: CGPoint(x: 38.05, y: 38.05), controlPoint1: CGPoint(x: 57.37, y: 38.29), controlPoint2: CGPoint(x: 46.1, y: 38.29))
        capeOutLayer.addCurve(to: CGPoint(x: 7.17, y: 42.68), controlPoint1: CGPoint(x: 25.98, y: 37.68), controlPoint2: CGPoint(x: 12.48, y: 46.07))
        capeOutLayer.addCurve(to: CGPoint(x: 2.14, y: 14.57), controlPoint1: CGPoint(x: 1.86, y: 39.28), controlPoint2: CGPoint(x: -2.9, y: 25.04))
        capeOutLayer.close()
        let co = CAShapeLayer()
        co.path = capeOutLayer.cgPath
        co.fillColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1).cgColor
        co.position = CGPoint(x: 77.42, y: 45.73)
        
        let capeInLayer = UIBezierPath()
        capeInLayer.move(to: CGPoint(x: 0.4, y: 12.06))
        capeInLayer.addCurve(to: CGPoint(x: 15.91, y: 0.04), controlPoint1: CGPoint(x: -1.46, y: 7.22), controlPoint2: CGPoint(x: 3.12, y: -0.62))
        capeInLayer.addCurve(to: CGPoint(x: 37.47, y: 8.69), controlPoint1: CGPoint(x: 20.82, y: 0.29), controlPoint2: CGPoint(x: 30.17, y: 3.83))
        capeInLayer.addCurve(to: CGPoint(x: 49.34, y: 20.32), controlPoint1: CGPoint(x: 44.07, y: 13.08), controlPoint2: CGPoint(x: 48.88, y: 18.76))
        capeInLayer.addCurve(to: CGPoint(x: 42.78, y: 29.59), controlPoint1: CGPoint(x: 50.3, y: 23.61), controlPoint2: CGPoint(x: 53.42, y: 27.7))
        capeInLayer.addCurve(to: CGPoint(x: 15.91, y: 26.27), controlPoint1: CGPoint(x: 32.14, y: 31.48), controlPoint2: CGPoint(x: 24.36, y: 27.97))
        capeInLayer.addCurve(to: CGPoint(x: 0.4, y: 12.06), controlPoint1: CGPoint(x: 7.46, y: 24.57), controlPoint2: CGPoint(x: 2.26, y: 16.9))
        capeInLayer.close()
        let ci = CAShapeLayer()
        ci.path = capeInLayer.cgPath
        ci.fillColor = UIColor(red: 197/255, green: 197/255, blue: 197/255, alpha: 1).cgColor
        ci.position = CGPoint(x: 94.32, y: 52.23)
        
        let neckLayer = UIBezierPath()
        neckLayer.move(to: CGPoint(x: 2.19, y: 0))
        neckLayer.addLine(to: CGPoint(x: 17.82, y: 11.45))
        neckLayer.addLine(to: CGPoint(x: 20.1, y: 33.51))
        neckLayer.addLine(to: CGPoint(x: 0, y: 33.51))
        neckLayer.addLine(to: CGPoint(x: 2.19, y: 0))
        neckLayer.close()
        let n = CAShapeLayer()
        n.path = neckLayer.cgPath
        n.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        n.position = CGPoint(x: 118.22, y: 54.31)
        
        let shouldersLayer = UIBezierPath()
        shouldersLayer.move(to: CGPoint(x: 0.18, y: 10.9))
        shouldersLayer.addCurve(to: CGPoint(x: 44.33, y: 0.03), controlPoint1: CGPoint(x: 4.99, y: 4.45), controlPoint2: CGPoint(x: 23.71, y: 0.41))
        shouldersLayer.addCurve(to: CGPoint(x: 84.79, y: 9.31), controlPoint1: CGPoint(x: 64.96, y: -0.35), controlPoint2: CGPoint(x: 78.2, y: 3.26))
        shouldersLayer.addCurve(to: CGPoint(x: 0.18, y: 10.9), controlPoint1: CGPoint(x: 91.37, y: 15.36), controlPoint2: CGPoint(x: -4.64, y: 17.34))
        shouldersLayer.close()
        let sh = CAShapeLayer()
        sh.path = shouldersLayer.cgPath
        sh.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        sh.position = CGPoint(x: 82.82, y: 83.29)
        
        let jacketBodyLayer = UIBezierPath()
        jacketBodyLayer.move(to: CGPoint(x: 41.42, y: 14.12))
        jacketBodyLayer.addCurve(to: CGPoint(x: 62, y: 6.12), controlPoint1: CGPoint(x: 47.29, y: 8.03), controlPoint2: CGPoint(x: 57.26, y: 3.89))
        jacketBodyLayer.addCurve(to: CGPoint(x: 88.72, y: 10.83), controlPoint1: CGPoint(x: 66.74, y: 8.35), controlPoint2: CGPoint(x: 77.45, y: 10.83))
        jacketBodyLayer.addCurve(to: CGPoint(x: 100.42, y: 0.77), controlPoint1: CGPoint(x: 99.99, y: 10.83), controlPoint2: CGPoint(x: 103.54, y: 4.92))
        jacketBodyLayer.addCurve(to: CGPoint(x: 126.03, y: 17.36), controlPoint1: CGPoint(x: 97.3, y: -3.37), controlPoint2: CGPoint(x: 118.91, y: 10.18))
        jacketBodyLayer.addCurve(to: CGPoint(x: 144.14, y: 54.34), controlPoint1: CGPoint(x: 129.96, y: 20.42), controlPoint2: CGPoint(x: 136, y: 32.75))
        jacketBodyLayer.addCurve(to: CGPoint(x: 142.85, y: 40.02), controlPoint1: CGPoint(x: 142.42, y: 49.21), controlPoint2: CGPoint(x: 141.99, y: 44.44))
        jacketBodyLayer.addCurve(to: CGPoint(x: 158.94, y: 49.29), controlPoint1: CGPoint(x: 143.36, y: 37.4), controlPoint2: CGPoint(x: 157.49, y: 43.36))
        jacketBodyLayer.addCurve(to: CGPoint(x: 156.46, y: 121.28), controlPoint1: CGPoint(x: 161.28, y: 58.9), controlPoint2: CGPoint(x: 181.14, y: 115.96))
        jacketBodyLayer.addCurve(to: CGPoint(x: 135.27, y: 121.28), controlPoint1: CGPoint(x: 131.78, y: 126.59), controlPoint2: CGPoint(x: 129.02, y: 68.69))
        jacketBodyLayer.addCurve(to: CGPoint(x: 132.39, y: 203.36), controlPoint1: CGPoint(x: 141.52, y: 173.86), controlPoint2: CGPoint(x: 133.61, y: 201.3))
        jacketBodyLayer.addCurve(to: CGPoint(x: 45.33, y: 203.36), controlPoint1: CGPoint(x: 131.18, y: 205.41), controlPoint2: CGPoint(x: 46.45, y: 204.21))
        jacketBodyLayer.addCurve(to: CGPoint(x: 40.24, y: 124.31), controlPoint1: CGPoint(x: 44.9, y: 203.02), controlPoint2: CGPoint(x: 40.24, y: 146.73))
        jacketBodyLayer.addCurve(to: CGPoint(x: 39.16, y: 100.98), controlPoint1: CGPoint(x: 40.24, y: 87.71), controlPoint2: CGPoint(x: 42.59, y: 90.44))
        jacketBodyLayer.addCurve(to: CGPoint(x: 14.81, y: 169.52), controlPoint1: CGPoint(x: 28.1, y: 134.95), controlPoint2: CGPoint(x: 18.14, y: 165.26))
        jacketBodyLayer.addCurve(to: CGPoint(x: 0, y: 161.66), controlPoint1: CGPoint(x: 11.47, y: 173.77), controlPoint2: CGPoint(x: 0.03, y: 169.1))
        jacketBodyLayer.addCurve(to: CGPoint(x: 41.42, y: 14.12), controlPoint1: CGPoint(x: -0.05, y: 147.92), controlPoint2: CGPoint(x: 2.93, y: 46.94))
        jacketBodyLayer.close()
        let body = CAShapeLayer()
        body.path = jacketBodyLayer.cgPath
        body.fillColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1).cgColor
        body.position = CGPoint(x: 43.32, y: 70.45)
        
        let zipperLayer = UIBezierPath()
        zipperLayer.move(to: CGPoint.zero)
        zipperLayer.addCurve(to: CGPoint(x: 2.75, y: 0.09), controlPoint1: CGPoint(x: 1.41, y: 0.06), controlPoint2: CGPoint(x: 2.33, y: 0.09))
        zipperLayer.addCurve(to: CGPoint(x: 5.16, y: 0.09), controlPoint1: CGPoint(x: 3.17, y: 0.09), controlPoint2: CGPoint(x: 3.97, y: 0.09))
        zipperLayer.addCurve(to: CGPoint(x: 11.04, y: 82.73), controlPoint1: CGPoint(x: 9.08, y: 21.43), controlPoint2: CGPoint(x: 11.04, y: 48.98))
        zipperLayer.addCurve(to: CGPoint(x: 8.49, y: 193.75), controlPoint1: CGPoint(x: 11.04, y: 116.49), controlPoint2: CGPoint(x: 10.19, y: 153.49))
        zipperLayer.addLine(to: CGPoint(x: 3.29, y: 193.75))
        zipperLayer.addCurve(to: CGPoint(x: 5.82, y: 82.73), controlPoint1: CGPoint(x: 4.98, y: 149.73), controlPoint2: CGPoint(x: 5.82, y: 112.72))
        zipperLayer.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 5.82, y: 52.74), controlPoint2: CGPoint(x: 3.88, y: 25.16))
        zipperLayer.close()
        let zip = CAShapeLayer()
        zip.path = zipperLayer.cgPath
        zip.fillColor = UIColor(red: 223/255, green: 223/255, blue: 223/255, alpha: 1).cgColor
        zip.position = CGPoint(x: 128.35, y: 81.21)
        
        let headLayer = UIBezierPath()
        headLayer.move(to: CGPoint(x: 3.09, y: 11.29))
        headLayer.addCurve(to: CGPoint(x: 44.02, y: 10.18), controlPoint1: CGPoint(x: 9.17, y: -2.21), controlPoint2: CGPoint(x: 34.9, y: -4.82))
        headLayer.addCurve(to: CGPoint(x: 19.1, y: 58.08), controlPoint1: CGPoint(x: 55.18, y: 28.53), controlPoint2: CGPoint(x: 55.18, y: 89.84))
        headLayer.addCurve(to: CGPoint(x: 3.09, y: 11.29), controlPoint1: CGPoint(x: -1.32, y: 40.12), controlPoint2: CGPoint(x: -2.98, y: 24.79))
        headLayer.close()
        let hl = CAShapeLayer()
        hl.path = headLayer.cgPath
        hl.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hl.position = CGPoint(x: 109.74, y: 8)
        
        [co, ci, n, sh, body, hl].forEach {jacket.layer.addSublayer($0)}
        return jacket
    }
    
    class func createLongsleeveWhenRain() -> UIView {
        let longsleeve = UIView()
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint(x: 0.94, y: 0))
        _2.addCurve(to: CGPoint(x: 4.55, y: 0.77), controlPoint1: CGPoint(x: 2.09, y: 0), controlPoint2: CGPoint(x: 3.29, y: 0.26))
        _2.addLine(to: CGPoint(x: 0.65, y: 1.22))
        _2.addCurve(to: CGPoint(x: 0.94, y: 0), controlPoint1: CGPoint(x: -0.3, y: 0.41), controlPoint2: CGPoint(x: -0.21, y: 0))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _22.position = CGPoint(x: 108.85, y: 83.33)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 0, y: 0.73))
        _1.addCurve(to: CGPoint(x: 2.61, y: 0.01), controlPoint1: CGPoint(x: 0.9, y: 0.18), controlPoint2: CGPoint(x: 1.77, y: -0.06))
        _1.addCurve(to: CGPoint(x: 2.54, y: 1.07), controlPoint1: CGPoint(x: 3.44, y: 0.08), controlPoint2: CGPoint(x: 3.42, y: 0.43))
        _1.addLine(to: CGPoint(x: 0, y: 0.73))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _11.position = CGPoint(x: 144.37, y: 83.32)
        
        let manLongsleeveBody = UIBezierPath()
        manLongsleeveBody.move(to: CGPoint(x: 0.01, y: 150.09))
        manLongsleeveBody.addCurve(to: CGPoint(x: 38.46, y: 10.69), controlPoint1: CGPoint(x: 0.53, y: 146.68), controlPoint2: CGPoint(x: 24.06, y: 28.56))
        manLongsleeveBody.addCurve(to: CGPoint(x: 66.86, y: 0), controlPoint1: CGPoint(x: 46.66, y: 0.48), controlPoint2: CGPoint(x: 65.95, y: 0))
        manLongsleeveBody.addCurve(to: CGPoint(x: 85.36, y: 15.18), controlPoint1: CGPoint(x: 67.77, y: 0), controlPoint2: CGPoint(x: 70.09, y: 15.18))
        manLongsleeveBody.addCurve(to: CGPoint(x: 103.99, y: 0), controlPoint1: CGPoint(x: 95.54, y: 15.18), controlPoint2: CGPoint(x: 101.76, y: 10.12))
        manLongsleeveBody.addCurve(to: CGPoint(x: 127.43, y: 10.69), controlPoint1: CGPoint(x: 114.44, y: 1.34), controlPoint2: CGPoint(x: 122.25, y: 4.9))
        manLongsleeveBody.addCurve(to: CGPoint(x: 146.1, y: 57.19), controlPoint1: CGPoint(x: 131.08, y: 15.1), controlPoint2: CGPoint(x: 137.31, y: 30.6))
        manLongsleeveBody.addCurve(to: CGPoint(x: 144.73, y: 37.55), controlPoint1: CGPoint(x: 145.52, y: 47.78), controlPoint2: CGPoint(x: 145.06, y: 41.23))
        manLongsleeveBody.addCurve(to: CGPoint(x: 159.11, y: 39.77), controlPoint1: CGPoint(x: 144.24, y: 32.02), controlPoint2: CGPoint(x: 157.33, y: 28.11))
        manLongsleeveBody.addCurve(to: CGPoint(x: 157.57, y: 107.71), controlPoint1: CGPoint(x: 160.98, y: 51.98), controlPoint2: CGPoint(x: 175.24, y: 102))
        manLongsleeveBody.addCurve(to: CGPoint(x: 121.94, y: 58.55), controlPoint1: CGPoint(x: 145.78, y: 111.52), controlPoint2: CGPoint(x: 133.91, y: 95.13))
        manLongsleeveBody.addCurve(to: CGPoint(x: 124.72, y: 110.36), controlPoint1: CGPoint(x: 122.09, y: 69.89), controlPoint2: CGPoint(x: 123.01, y: 87.15))
        manLongsleeveBody.addCurve(to: CGPoint(x: 128.49, y: 179.14), controlPoint1: CGPoint(x: 127.27, y: 145.16), controlPoint2: CGPoint(x: 129.7, y: 177.08))
        manLongsleeveBody.addCurve(to: CGPoint(x: 46.82, y: 179.14), controlPoint1: CGPoint(x: 127.27, y: 181.19), controlPoint2: CGPoint(x: 47.94, y: 180))
        manLongsleeveBody.addCurve(to: CGPoint(x: 49.07, y: 110.36), controlPoint1: CGPoint(x: 45.7, y: 178.28), controlPoint2: CGPoint(x: 49.07, y: 132.14))
        manLongsleeveBody.addCurve(to: CGPoint(x: 45.55, y: 59.71), controlPoint1: CGPoint(x: 49.07, y: 95.84), controlPoint2: CGPoint(x: 47.9, y: 78.95))
        manLongsleeveBody.addCurve(to: CGPoint(x: 14.21, y: 155.87), controlPoint1: CGPoint(x: 25.37, y: 122.1), controlPoint2: CGPoint(x: 14.93, y: 154.15))
        manLongsleeveBody.addCurve(to: CGPoint(x: 0.01, y: 150.09), controlPoint1: CGPoint(x: 13.14, y: 158.44), controlPoint2: CGPoint(x: -0.51, y: 153.5))
        manLongsleeveBody.close()
        let body = CAShapeLayer()
        body.path = manLongsleeveBody.cgPath
        body.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        body.position = CGPoint(x: 42.99, y: 83.33)
        
        [_22, _11, body].forEach {longsleeve.layer.addSublayer($0)}
        return longsleeve
    }
    
    class func createSweatShirtWhenRain() -> UIView {
        let sweat = UIView()
        
        let manSweatShirtLayer = UIBezierPath()
        manSweatShirtLayer.move(to: CGPoint(x: 41.27, y: 8.95))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 70.79, y: 0.64), controlPoint1: CGPoint(x: 51.5, y: 0.26), controlPoint2: CGPoint(x: 70.79, y: -1.06))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 89.62, y: 8.95), controlPoint1: CGPoint(x: 70.79, y: 1.6), controlPoint2: CGPoint(x: 79.27, y: 8.95))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 100.37, y: 1.1), controlPoint1: CGPoint(x: 99.97, y: 8.95), controlPoint2: CGPoint(x: 100.37, y: 2.07))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 123.89, y: 7.71), controlPoint1: CGPoint(x: 100.37, y: -1.56), controlPoint2: CGPoint(x: 117.49, y: 3.58))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 144.43, y: 47.12), controlPoint1: CGPoint(x: 131.57, y: 12.67), controlPoint2: CGPoint(x: 138.42, y: 25.8))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 144.43, y: 33.23), controlPoint1: CGPoint(x: 144.13, y: 42.51), controlPoint2: CGPoint(x: 144.13, y: 37.88))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 158.54, y: 37.69), controlPoint1: CGPoint(x: 144.89, y: 26.26), controlPoint2: CGPoint(x: 157.23, y: 32))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 159.1, y: 107.51), controlPoint1: CGPoint(x: 159.47, y: 41.75), controlPoint2: CGPoint(x: 174.14, y: 99.11))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 134.44, y: 92.13), controlPoint1: CGPoint(x: 149.27, y: 110.37), controlPoint2: CGPoint(x: 138.47, y: 99.11))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 130.44, y: 104.05), controlPoint1: CGPoint(x: 129.22, y: 83.05), controlPoint2: CGPoint(x: 122.23, y: 51.68))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 128.65, y: 177.87), controlPoint1: CGPoint(x: 138.65, y: 156.42), controlPoint2: CGPoint(x: 129.87, y: 175.81))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 46.94, y: 177.87), controlPoint1: CGPoint(x: 127.44, y: 179.92), controlPoint2: CGPoint(x: 48.06, y: 178.72))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 38.31, y: 109.2), controlPoint1: CGPoint(x: 45.82, y: 177.01), controlPoint2: CGPoint(x: 37.65, y: 130.79))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 36.06, y: 95.86), controlPoint1: CGPoint(x: 38.98, y: 87.62), controlPoint2: CGPoint(x: 39.49, y: 85.33))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 15.75, y: 153.87), controlPoint1: CGPoint(x: 24.99, y: 129.8), controlPoint2: CGPoint(x: 19.09, y: 149.62))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 0, y: 148.59), controlPoint1: CGPoint(x: 12.41, y: 158.13), controlPoint2: CGPoint(x: 0.03, y: 156.02))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 41.27, y: 8.95), controlPoint1: CGPoint(x: -0.05, y: 134.86), controlPoint2: CGPoint(x: 11.82, y: 33.97))
        manSweatShirtLayer.close()
        let ss = CAShapeLayer()
        ss.path = manSweatShirtLayer.cgPath
        ss.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        ss.position = CGPoint(x: 43, y: 83)
        sweat.layer.addSublayer(ss)
        
        return sweat
    }
    
    class func createSkeletonWhenRain() -> UIView {
        let skeleton = UIView()
        
        let leftLegLayer = UIBezierPath()
        leftLegLayer.move(to: CGPoint.zero)
        leftLegLayer.addLine(to: CGPoint(x: 58.61, y: 0))
        leftLegLayer.addLine(to: CGPoint(x: 73.4, y: 221.15))
        leftLegLayer.addCurve(to: CGPoint(x: 105.73, y: 229.43), controlPoint1: CGPoint(x: 91.31, y: 226.67), controlPoint2: CGPoint(x: 102.08, y: 229.43))
        leftLegLayer.addCurve(to: CGPoint(x: 109.01, y: 232.07), controlPoint1: CGPoint(x: 108.08, y: 229.43), controlPoint2: CGPoint(x: 108.76, y: 230.58))
        leftLegLayer.addCurve(to: CGPoint(x: 108.08, y: 235.09), controlPoint1: CGPoint(x: 109.26, y: 233.56), controlPoint2: CGPoint(x: 108.76, y: 235.09))
        leftLegLayer.addCurve(to: CGPoint(x: 59.47, y: 235.09), controlPoint1: CGPoint(x: 102.94, y: 235.09), controlPoint2: CGPoint(x: 86.74, y: 235.09))
        leftLegLayer.addLine(to: CGPoint(x: 59.47, y: 225.18))
        leftLegLayer.addCurve(to: CGPoint(x: 42.78, y: 131.87), controlPoint1: CGPoint(x: 53.33, y: 184.06), controlPoint2: CGPoint(x: 47.77, y: 152.95))
        leftLegLayer.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 37.78, y: 110.79), controlPoint2: CGPoint(x: 23.52, y: 66.83))
        leftLegLayer.close()
        let ll = CAShapeLayer()
        ll.path = leftLegLayer.cgPath
        ll.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        ll.position = CGPoint(x: 110.61, y: 256.53)
        
        let rightLegLayer = UIBezierPath()
        rightLegLayer.move(to: CGPoint(x: 1.4, y: 0))
        rightLegLayer.addLine(to: CGPoint(x: 53.5, y: 0))
        rightLegLayer.addCurve(to: CGPoint(x: 34.84, y: 123.53), controlPoint1: CGPoint(x: 45.74, y: 55.81), controlPoint2: CGPoint(x: 39.52, y: 96.98))
        rightLegLayer.addCurve(to: CGPoint(x: 13.91, y: 220.99), controlPoint1: CGPoint(x: 30.17, y: 150.07), controlPoint2: CGPoint(x: 23.19, y: 182.56))
        rightLegLayer.addCurve(to: CGPoint(x: 46.77, y: 229.51), controlPoint1: CGPoint(x: 34.98, y: 226.67), controlPoint2: CGPoint(x: 45.93, y: 229.51))
        rightLegLayer.addCurve(to: CGPoint(x: 48.63, y: 235.29), controlPoint1: CGPoint(x: 50.46, y: 229.51), controlPoint2: CGPoint(x: 51.36, y: 235.63))
        rightLegLayer.addCurve(to: CGPoint(x: 0, y: 235.29), controlPoint1: CGPoint(x: 46.53, y: 235.03), controlPoint2: CGPoint(x: 30.32, y: 235.03))
        rightLegLayer.addCurve(to: CGPoint(x: 7.91, y: 131.6), controlPoint1: CGPoint(x: 5.27, y: 184.7), controlPoint2: CGPoint(x: 7.91, y: 150.14))
        rightLegLayer.addCurve(to: CGPoint(x: 1.4, y: 0), controlPoint1: CGPoint(x: 7.91, y: 113.07), controlPoint2: CGPoint(x: 5.74, y: 69.2))
        rightLegLayer.close()
        let rl = CAShapeLayer()
        rl.path = rightLegLayer.cgPath
        rl.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        rl.position = CGPoint(x: 89.68, y: 256.53)
        
        let headNeckLayer = UIBezierPath()
        headNeckLayer.move(to: CGPoint(x: 26.99, y: 63.87))
        headNeckLayer.addLine(to: CGPoint(x: 28.64, y: 79.78))
        headNeckLayer.addLine(to: CGPoint(x: 8.5, y: 79.78))
        headNeckLayer.addLine(to: CGPoint(x: 10.5, y: 49.38))
        headNeckLayer.addCurve(to: CGPoint(x: 3.1, y: 11.28), controlPoint1: CGPoint(x: -1.66, y: 35.09), controlPoint2: CGPoint(x: -1.98, y: 22.55))
        headNeckLayer.addCurve(to: CGPoint(x: 44.1, y: 10.17), controlPoint1: CGPoint(x: 9.19, y: -2.21), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeckLayer.addCurve(to: CGPoint(x: 26.99, y: 63.87), controlPoint1: CGPoint(x: 54.41, y: 27.08), controlPoint2: CGPoint(x: 55.22, y: 80.44))
        headNeckLayer.close()
        let hn = CAShapeLayer()
        hn.path = headNeckLayer.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 109.69, y: 8)
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 15.52, y: 10.89))
        body.addCurve(to: CGPoint(x: 59.76, y: 0.03), controlPoint1: CGPoint(x: 20.34, y: 4.45), controlPoint2: CGPoint(x: 39.09, y: 0.41))
        body.addCurve(to: CGPoint(x: 100.29, y: 9.3), controlPoint1: CGPoint(x: 80.42, y: -0.35), controlPoint2: CGPoint(x: 93.69, y: 3.26))
        body.addCurve(to: CGPoint(x: 117.27, y: 45.85), controlPoint1: CGPoint(x: 106.89, y: 15.35), controlPoint2: CGPoint(x: 114.13, y: 34.51))
        body.addCurve(to: CGPoint(x: 102.8, y: 63.6), controlPoint1: CGPoint(x: 119.04, y: 52.27), controlPoint2: CGPoint(x: 108.06, y: 79.5))
        body.addCurve(to: CGPoint(x: 96.28, y: 45.85), controlPoint1: CGPoint(x: 101.37, y: 59.31), controlPoint2: CGPoint(x: 99.2, y: 53.4))
        body.addLine(to: CGPoint(x: 101.84, y: 173.28))
        body.addLine(to: CGPoint(x: 23.7, y: 173.28))
        body.addCurve(to: CGPoint(x: 26.29, y: 101.89), controlPoint1: CGPoint(x: 26.04, y: 141.02), controlPoint2: CGPoint(x: 26.91, y: 117.22))
        body.addCurve(to: CGPoint(x: 21.33, y: 49.78), controlPoint1: CGPoint(x: 25.66, y: 86.55), controlPoint2: CGPoint(x: 24.01, y: 69.18))
        body.addCurve(to: CGPoint(x: 15.52, y: 64.83), controlPoint1: CGPoint(x: 18.28, y: 59.94), controlPoint2: CGPoint(x: 16.34, y: 64.96))
        body.addCurve(to: CGPoint(x: 0.33, y: 51.71), controlPoint1: CGPoint(x: 3.92, y: 63.01), controlPoint2: CGPoint(x: -1.45, y: 59.02))
        body.addCurve(to: CGPoint(x: 15.52, y: 10.89), controlPoint1: CGPoint(x: 3.3, y: 39.53), controlPoint2: CGPoint(x: 10.69, y: 17.33))
        body.close()
        let bd = CAShapeLayer()
        bd.path = body.cgPath
        bd.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        bd.position = CGPoint(x: 67.38, y: 83.25)
        
        let leftArmLayer = UIBezierPath()
        leftArmLayer.move(to: CGPoint(x: 20.03, y: 18.8))
        leftArmLayer.addLine(to: CGPoint(x: 53.4, y: 21.71))
        leftArmLayer.addLine(to: CGPoint(x: 0, y: 9.49))
        leftArmLayer.addLine(to: CGPoint(x: 10.34, y: 0))
        leftArmLayer.addCurve(to: CGPoint(x: 80.28, y: 26.69), controlPoint1: CGPoint(x: 61.17, y: 6.24), controlPoint2: CGPoint(x: 84.49, y: 15.14))
        leftArmLayer.addCurve(to: CGPoint(x: 12.74, y: 38.78), controlPoint1: CGPoint(x: 76.08, y: 38.23), controlPoint2: CGPoint(x: 53.57, y: 42.27))
        leftArmLayer.addLine(to: CGPoint(x: 20.03, y: 18.8))
        leftArmLayer.close()
        let la = CAShapeLayer()
        la.path = leftArmLayer.cgPath
        la.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        la.position = CGPoint(x: 195, y: 102)
        la.transform = CATransform3DMakeRotation(430 * CGFloat.pi/180, 0, 0, 1)
        
        let rightArmLayer = UIBezierPath()
        rightArmLayer.move(to: CGPoint(x: 6.25, y: 0))
        rightArmLayer.addLine(to: CGPoint(x: 109.47, y: 11.27))
        rightArmLayer.addCurve(to: CGPoint(x: 143.38, y: 4.71), controlPoint1: CGPoint(x: 132.08, y: 2.53), controlPoint2: CGPoint(x: 143.38, y: 0.34))
        rightArmLayer.addCurve(to: CGPoint(x: 122.55, y: 22.93), controlPoint1: CGPoint(x: 143.38, y: 11.25), controlPoint2: CGPoint(x: 126.49, y: 17.82))
        rightArmLayer.addCurve(to: CGPoint(x: 126.66, y: 34.61), controlPoint1: CGPoint(x: 120.43, y: 25.68), controlPoint2: CGPoint(x: 128.96, y: 31.87))
        rightArmLayer.addCurve(to: CGPoint(x: 109.46, y: 25.59), controlPoint1: CGPoint(x: 125.12, y: 36.44), controlPoint2: CGPoint(x: 119.39, y: 33.44))
        rightArmLayer.addLine(to: CGPoint(x: 0, y: 19.19))
        rightArmLayer.addLine(to: CGPoint(x: 6.25, y: 0))
        rightArmLayer.close()
        let ra = CAShapeLayer()
        ra.path = rightArmLayer.cgPath
        ra.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        ra.position = CGPoint(x: 70, y: 129)
        ra.transform = CATransform3DMakeRotation(430 * CGFloat.pi/180, 0, 0, 1)
        ra.transform = CATransform3DConcat(ra.transform, CATransform3DMakeRotation(CGFloat(Double.pi),0.0,1.0,0.0))
        
        [ll, rl, hn, bd, la, ra].forEach {skeleton.layer.addSublayer($0)}
        return skeleton
    }
    
    class func createUmbrellaUnderHairCut() -> UIView {
        let umbrella = UIView()
        
        let umbrellaUnder = UIBezierPath()
        umbrellaUnder.move(to: CGPoint(x: 0, y: 7.46))
        umbrellaUnder.addCurve(to: CGPoint(x: 90.5, y: 0), controlPoint1: CGPoint(x: 0.55, y: 4.47), controlPoint2: CGPoint(x: 57.43, y: 0))
        umbrellaUnder.addCurve(to: CGPoint(x: 191, y: 7.46), controlPoint1: CGPoint(x: 123.57, y: 0), controlPoint2: CGPoint(x: 190.07, y: 4.45))
        umbrellaUnder.addCurve(to: CGPoint(x: 90.5, y: 13.94), controlPoint1: CGPoint(x: 191.94, y: 10.46), controlPoint2: CGPoint(x: 137, y: 13.94))
        umbrellaUnder.addCurve(to: CGPoint(x: 0, y: 7.46), controlPoint1: CGPoint(x: 44.01, y: 13.94), controlPoint2: CGPoint(x: -0.54, y: 10.45))
        umbrellaUnder.close()
        let uu = CAShapeLayer()
        uu.path = umbrellaUnder.cgPath
        uu.fillColor = UIColor(red: 21/255, green: 34/255, blue: 83/255, alpha: 1).cgColor
        uu.position = CGPoint(x: 72.9, y: 13.73)
        uu.transform = CATransform3DMakeRotation(350 * CGFloat.pi/180, 0, 0, 1)
        
        let umbrellaHandle = UIBezierPath()
        umbrellaHandle.move(to: CGPoint(x: 23, y: 107.46))
        umbrellaHandle.addCurve(to: CGPoint(x: 26.5, y: 103.96), controlPoint1: CGPoint(x: 23, y: 105.52), controlPoint2: CGPoint(x: 24.57, y: 103.96))
        umbrellaHandle.addCurve(to: CGPoint(x: 30, y: 107.46), controlPoint1: CGPoint(x: 28.43, y: 103.96), controlPoint2: CGPoint(x: 30, y: 105.52))
        umbrellaHandle.addCurve(to: CGPoint(x: 29.99, y: 107.74), controlPoint1: CGPoint(x: 30, y: 107.55), controlPoint2: CGPoint(x: 30, y: 107.65))
        umbrellaHandle.addCurve(to: CGPoint(x: 15, y: 122.15), controlPoint1: CGPoint(x: 29.68, y: 115.75), controlPoint2: CGPoint(x: 23.08, y: 122.15))
        umbrellaHandle.addCurve(to: CGPoint(x: 0, y: 107.46), controlPoint1: CGPoint(x: 6.82, y: 122.15), controlPoint2: CGPoint(x: 0.17, y: 115.6))
        umbrellaHandle.addLine(to: CGPoint(x: 0, y: 107.46))
        umbrellaHandle.addLine(to: CGPoint(x: 0, y: 0.02))
        umbrellaHandle.addCurve(to: CGPoint(x: 3.5, y: 0), controlPoint1: CGPoint(x: 1.44, y: 0.01), controlPoint2: CGPoint(x: 2.6, y: 0))
        umbrellaHandle.addCurve(to: CGPoint(x: 7, y: 0.02), controlPoint1: CGPoint(x: 4.4, y: 0), controlPoint2: CGPoint(x: 5.56, y: 0.01))
        umbrellaHandle.addLine(to: CGPoint(x: 7, y: 107.15))
        umbrellaHandle.addCurve(to: CGPoint(x: 15, y: 115.15), controlPoint1: CGPoint(x: 7, y: 111.57), controlPoint2: CGPoint(x: 10.58, y: 115.15))
        umbrellaHandle.addCurve(to: CGPoint(x: 22.99, y: 107.46), controlPoint1: CGPoint(x: 19.31, y: 115.15), controlPoint2: CGPoint(x: 22.83, y: 111.73))
        umbrellaHandle.addLine(to: CGPoint(x: 23, y: 107.46))
        umbrellaHandle.close()
        let uh = CAShapeLayer()
        uh.path = umbrellaHandle.cgPath
        uh.fillColor = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1).cgColor
        uh.position = CGPoint(x: 158.58, y: -0.88)
        uh.transform = CATransform3DMakeRotation(350 * CGFloat.pi/180, 0, 0, 1)
        
        [uu, uh].forEach {umbrella.layer.addSublayer($0)}
        return umbrella
    }
    
    class func createUmbrellaAfterHaircut() -> UIView {
        let umbrella = UIView()
        
        let umbrellaMiddle = UIBezierPath()
        umbrellaMiddle.move(to: CGPoint(x: 90.51, y: 0))
        umbrellaMiddle.addCurve(to: CGPoint(x: 191.01, y: 84.23), controlPoint1: CGPoint(x: 140.77, y: 0), controlPoint2: CGPoint(x: 174.27, y: 28.08))
        umbrellaMiddle.addCurve(to: CGPoint(x: 90.55, y: 76.99), controlPoint1: CGPoint(x: 146.32, y: 79.4), controlPoint2: CGPoint(x: 112.84, y: 76.99))
        umbrellaMiddle.addCurve(to: CGPoint(x: 0.01, y: 84.23), controlPoint1: CGPoint(x: 57.13, y: 76.99), controlPoint2: CGPoint(x: 0.52, y: 81.38))
        umbrellaMiddle.addCurve(to: CGPoint(x: 90.51, y: 0), controlPoint1: CGPoint(x: -0.49, y: 87.09), controlPoint2: CGPoint(x: 15.12, y: 0))
        umbrellaMiddle.close()
        let um = CAShapeLayer()
        um.path = umbrellaMiddle.cgPath
        um.fillColor = UIColor(red: 39/255, green: 59/255, blue: 131/255, alpha: 1).cgColor
        um.position = CGPoint(x: 59.56, y: -61)
        um.transform = CATransform3DMakeRotation(350 * CGFloat.pi/180, 0, 0, 1)
        
        let umbrellaTop = UIBezierPath()
        umbrellaTop.move(to: CGPoint(x: 3.5, y: 0))
        umbrellaTop.addCurve(to: CGPoint(x: 7, y: 3.5), controlPoint1: CGPoint(x: 5.43, y: 0), controlPoint2: CGPoint(x: 7, y: 1.57))
        umbrellaTop.addLine(to: CGPoint(x: 7, y: 4.82))
        umbrellaTop.addCurve(to: CGPoint(x: 3.51, y: 4.81), controlPoint1: CGPoint(x: 5.48, y: 4.81), controlPoint2: CGPoint(x: 4.31, y: 4.81))
        umbrellaTop.addCurve(to: CGPoint(x: 0, y: 4.82), controlPoint1: CGPoint(x: 2.71, y: 4.81), controlPoint2: CGPoint(x: 1.54, y: 4.81))
        umbrellaTop.addLine(to: CGPoint(x: 0, y: 3.5))
        umbrellaTop.addCurve(to: CGPoint(x: 3.5, y: 0), controlPoint1: CGPoint(x: 0, y: 1.57), controlPoint2: CGPoint(x: 1.57, y: 0))
        umbrellaTop.close()
        let ut = CAShapeLayer()
        ut.path = umbrellaTop.cgPath
        ut.fillColor = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1).cgColor
        ut.position = CGPoint(x: 144.42, y: -80)
        ut.transform = CATransform3DMakeRotation(350 * CGFloat.pi/180, 0, 0, 1)
        
        let hand = UIBezierPath()
        hand.move(to: CGPoint(x: 13.58, y: 4.15))
        hand.addCurve(to: CGPoint(x: 16.95, y: 14.67), controlPoint1: CGPoint(x: 19.9, y: 10.25), controlPoint2: CGPoint(x: 17.86, y: 13.44))
        hand.addCurve(to: CGPoint(x: 1.56, y: 12.01), controlPoint1: CGPoint(x: 16.04, y: 15.9), controlPoint2: CGPoint(x: 7.83, y: 17.86))
        hand.addCurve(to: CGPoint(x: 1.56, y: 2.14), controlPoint1: CGPoint(x: -1.11, y: 9.51), controlPoint2: CGPoint(x: 0.17, y: 3.68))
        hand.addCurve(to: CGPoint(x: 13.58, y: 4.15), controlPoint1: CGPoint(x: 4.94, y: -1.6), controlPoint2: CGPoint(x: 9.16, y: -0.13))
        hand.close()
        let h = CAShapeLayer()
        h.path = hand.cgPath
        h.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        h.position = CGPoint(x: 182, y: 97)
        
        [um, ut, h].forEach {umbrella.layer.addSublayer($0)}
        return umbrella
    }
}




