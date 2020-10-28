//
//  WomanWhenRain.swift
//  theWearPersons
//
//  Created by Max Reshetov on 10/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class WomanWhenRain: NSObject {
    
    class func createRightGloveWhenRain() -> UIView {
        let gloves = UIView()
        
        let right2 = UIBezierPath()
        right2.move(to: CGPoint(x: 18.97, y: 0))
        right2.addLine(to: CGPoint(x: 31.37, y: 4.47))
        right2.addCurve(to: CGPoint(x: 30.37, y: 9.56), controlPoint1: CGPoint(x: 30.85, y: 5.76), controlPoint2: CGPoint(x: 30.51, y: 7.46))
        right2.addCurve(to: CGPoint(x: 32.96, y: 27.65), controlPoint1: CGPoint(x: 30.16, y: 12.71), controlPoint2: CGPoint(x: 35.46, y: 25.17))
        right2.addCurve(to: CGPoint(x: 23.28, y: 20.78), controlPoint1: CGPoint(x: 30.47, y: 30.13), controlPoint2: CGPoint(x: 27.39, y: 19.48))
        right2.addCurve(to: CGPoint(x: 0.36, y: 29.31), controlPoint1: CGPoint(x: 19.18, y: 22.07), controlPoint2: CGPoint(x: 3.53, y: 35.72))
        right2.addCurve(to: CGPoint(x: 17.26, y: 3.46), controlPoint1: CGPoint(x: -2.81, y: 22.9), controlPoint2: CGPoint(x: 15.99, y: 5.48))
        right2.addCurve(to: CGPoint(x: 18.97, y: 0), controlPoint1: CGPoint(x: 18.1, y: 2.11), controlPoint2: CGPoint(x: 18.67, y: 0.96))
        right2.close()
        let r = CAShapeLayer()
        r.path = right2.cgPath
        r.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        r.position = CGPoint(x: 24.3, y: 231.64)
        
        gloves.layer.addSublayer(r)
        return gloves
    }
    
    class func createLeftGloveWhenRain() -> UIView {
        let glove = UIView()
        
        let left2 = UIBezierPath()
        left2.move(to: CGPoint(x: 1.59, y: 2.89))
        left2.addCurve(to: CGPoint(x: 14.24, y: 3.42), controlPoint1: CGPoint(x: 3.45, y: 0.06), controlPoint2: CGPoint(x: 8.74, y: -2.08))
        left2.addCurve(to: CGPoint(x: 16.77, y: 14.54), controlPoint1: CGPoint(x: 19.74, y: 8.92), controlPoint2: CGPoint(x: 18.77, y: 12.25))
        left2.addCurve(to: CGPoint(x: 3.06, y: 13.1), controlPoint1: CGPoint(x: 14.78, y: 16.83), controlPoint2: CGPoint(x: 7.39, y: 16.79))
        left2.addCurve(to: CGPoint(x: 1.59, y: 2.89), controlPoint1: CGPoint(x: -1.27, y: 9.41), controlPoint2: CGPoint(x: -0.27, y: 5.73))
        left2.close()
        let l = CAShapeLayer()
        l.path = left2.cgPath
        l.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        l.position = CGPoint(x: 179.68, y: 109.13)
        
        glove.layer.addSublayer(l)
        return glove
    }
    
    class func createSkeleton() -> UIView {
        let skeleton = UIView()
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 26.98, y: 80.05))
        headNeck.addLine(to: CGPoint(x: 9.3, y: 79.99))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 109.86, y: 9)
        
        let leftArm = UIBezierPath()
        leftArm.move(to: CGPoint(x: 5.4, y: 18.21))
        leftArm.addLine(to: CGPoint(x: 35.6, y: 21.6))
        leftArm.addLine(to: CGPoint(x: 0, y: 9.47))
        leftArm.addLine(to: CGPoint(x: 5.8, y: 0))
        leftArm.addCurve(to: CGPoint(x: 55.35, y: 26.21), controlPoint1: CGPoint(x: 41.14, y: 9.64), controlPoint2: CGPoint(x: 57.66, y: 18.38))
        leftArm.addCurve(to: CGPoint(x: 11.23, y: 33.67), controlPoint1: CGPoint(x: 53.03, y: 34.04), controlPoint2: CGPoint(x: 38.33, y: 36.53))
        leftArm.addLine(to: CGPoint(x: 5.4, y: 18.21))
        leftArm.close()
        let lA = CAShapeLayer()
        lA.path = leftArm.cgPath
        lA.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        lA.position = CGPoint(x: 193.75, y: 114.6)
        lA.transform = CATransform3DMakeRotation(428 * CGFloat.pi/180, 0, 0, 1)
        
        let rightArm = UIBezierPath()
        rightArm.move(to: CGPoint(x: 5.7, y: 0))
        rightArm.addLine(to: CGPoint(x: 108.89, y: 11.3))
        rightArm.addCurve(to: CGPoint(x: 140.13, y: 6.52), controlPoint1: CGPoint(x: 129.72, y: 3.75), controlPoint2: CGPoint(x: 140.13, y: 2.16))
        rightArm.addCurve(to: CGPoint(x: 121.97, y: 22.94), controlPoint1: CGPoint(x: 140.13, y: 13.06), controlPoint2: CGPoint(x: 125.91, y: 17.85))
        rightArm.addCurve(to: CGPoint(x: 125.79, y: 33.45), controlPoint1: CGPoint(x: 119.85, y: 25.69), controlPoint2: CGPoint(x: 126.7, y: 30.95))
        rightArm.addCurve(to: CGPoint(x: 110.37, y: 24.08), controlPoint1: CGPoint(x: 125.18, y: 35.12), controlPoint2: CGPoint(x: 120.04, y: 31.99))
        rightArm.addLine(to: CGPoint(x: 0, y: 15.66))
        rightArm.addLine(to: CGPoint(x: 5.7, y: 0))
        rightArm.close()
        let rA = CAShapeLayer()
        rA.path = rightArm.cgPath
        rA.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        rA.position = CGPoint(x: 75, y: 130)
        rA.transform = CATransform3DMakeRotation(67 * CGFloat.pi/180, 0, 0, 1)
        rA.transform = CATransform3DConcat(rA.transform, CATransform3DMakeRotation(CGFloat(Double.pi),0.0,1.0,0.0))
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 18.86, y: 9.38))
        body.addCurve(to: CGPoint(x: 54.27, y: 0.03), controlPoint1: CGPoint(x: 26.19, y: 0.99), controlPoint2: CGPoint(x: 44.1, y: -0.23))
        body.addCurve(to: CGPoint(x: 86.09, y: 4.75), controlPoint1: CGPoint(x: 71.65, y: 0.49), controlPoint2: CGPoint(x: 82.38, y: 2.85))
        body.addCurve(to: CGPoint(x: 107.24, y: 41.37), controlPoint1: CGPoint(x: 94.89, y: 9.26), controlPoint2: CGPoint(x: 103.41, y: 27.18))
        body.addCurve(to: CGPoint(x: 95.64, y: 53.67), controlPoint1: CGPoint(x: 111.07, y: 55.57), controlPoint2: CGPoint(x: 97.63, y: 60.02))
        body.addCurve(to: CGPoint(x: 88.14, y: 38.98), controlPoint1: CGPoint(x: 93.65, y: 47.32), controlPoint2: CGPoint(x: 89.13, y: 37.99))
        body.addCurve(to: CGPoint(x: 89.87, y: 51.31), controlPoint1: CGPoint(x: 87.14, y: 39.96), controlPoint2: CGPoint(x: 89.05, y: 41.35))
        body.addCurve(to: CGPoint(x: 84.69, y: 79.42), controlPoint1: CGPoint(x: 90.69, y: 61.27), controlPoint2: CGPoint(x: 84.69, y: 68.69))
        body.addCurve(to: CGPoint(x: 91.97, y: 144.52), controlPoint1: CGPoint(x: 84.69, y: 86.57), controlPoint2: CGPoint(x: 87.12, y: 108.27))
        body.addLine(to: CGPoint(x: 20.05, y: 144.53))
        body.addCurve(to: CGPoint(x: 26.57, y: 85.79), controlPoint1: CGPoint(x: 24.57, y: 118.21), controlPoint2: CGPoint(x: 26.74, y: 98.63))
        body.addCurve(to: CGPoint(x: 16.95, y: 48.15), controlPoint1: CGPoint(x: 26.32, y: 66.53), controlPoint2: CGPoint(x: 18.7, y: 42.94))
        body.addCurve(to: CGPoint(x: 0.31, y: 47.27), controlPoint1: CGPoint(x: 15.2, y: 53.35), controlPoint2: CGPoint(x: -2.54, y: 56.92))
        body.addCurve(to: CGPoint(x: 18.86, y: 9.38), controlPoint1: CGPoint(x: 3.17, y: 37.62), controlPoint2: CGPoint(x: 11.53, y: 17.78))
        body.close()
        let b = CAShapeLayer()
        b.path = body.cgPath
        b.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        b.position = CGPoint(x: 72.32, y: 87.6)
        
        let leftLeg = UIBezierPath()
        leftLeg.move(to: CGPoint.zero)
        leftLeg.addLine(to: CGPoint(x: 51.86, y: 0.01))
        leftLeg.addCurve(to: CGPoint(x: 61.31, y: 122.23), controlPoint1: CGPoint(x: 56.51, y: 52.96), controlPoint2: CGPoint(x: 59.66, y: 93.7))
        leftLeg.addCurve(to: CGPoint(x: 68.98, y: 241.81), controlPoint1: CGPoint(x: 62.96, y: 150.77), controlPoint2: CGPoint(x: 65.52, y: 190.62))
        leftLeg.addCurve(to: CGPoint(x: 99.04, y: 248.75), controlPoint1: CGPoint(x: 85.82, y: 246.44), controlPoint2: CGPoint(x: 95.84, y: 248.75))
        leftLeg.addCurve(to: CGPoint(x: 102.48, y: 254.79), controlPoint1: CGPoint(x: 103.85, y: 248.75), controlPoint2: CGPoint(x: 104.31, y: 252.06))
        leftLeg.addCurve(to: CGPoint(x: 58.83, y: 254.47), controlPoint1: CGPoint(x: 101.26, y: 256.6), controlPoint2: CGPoint(x: 86.71, y: 256.5))
        leftLeg.addLine(to: CGPoint(x: 58.83, y: 243.64))
        leftLeg.addCurve(to: CGPoint(x: 42.8, y: 151.53), controlPoint1: CGPoint(x: 50.22, y: 192.68), controlPoint2: CGPoint(x: 44.88, y: 161.98))
        leftLeg.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 38.93, y: 132), controlPoint2: CGPoint(x: 24.66, y: 81.49))
        leftLeg.close()
        let ll = CAShapeLayer()
        ll.path = leftLeg.cgPath
        ll.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        ll.position = CGPoint(x: 112.34, y: 232.12)
        
        let rightLeg = UIBezierPath()
        rightLeg.move(to: CGPoint(x: 2.48, y: 0))
        rightLeg.addLine(to: CGPoint(x: 43.98, y: 0))
        rightLeg.addCurve(to: CGPoint(x: 31.06, y: 144.28), controlPoint1: CGPoint(x: 40.04, y: 69.64), controlPoint2: CGPoint(x: 35.73, y: 117.74))
        rightLeg.addCurve(to: CGPoint(x: 10.13, y: 243.17), controlPoint1: CGPoint(x: 26.39, y: 170.82), controlPoint2: CGPoint(x: 19.41, y: 203.78))
        rightLeg.addCurve(to: CGPoint(x: 40.21, y: 250.04), controlPoint1: CGPoint(x: 26.98, y: 247.75), controlPoint2: CGPoint(x: 37.01, y: 250.04))
        rightLeg.addCurve(to: CGPoint(x: 43.98, y: 255.7), controlPoint1: CGPoint(x: 45.02, y: 250.04), controlPoint2: CGPoint(x: 45.81, y: 252.97))
        rightLeg.addCurve(to: CGPoint(x: 0, y: 255.7), controlPoint1: CGPoint(x: 42.76, y: 257.51), controlPoint2: CGPoint(x: 28.1, y: 257.51))
        rightLeg.addLine(to: CGPoint(x: 1.19, y: 245.61))
        rightLeg.addCurve(to: CGPoint(x: 7.95, y: 163.15), controlPoint1: CGPoint(x: 5.01, y: 202.15), controlPoint2: CGPoint(x: 7.27, y: 174.66))
        rightLeg.addCurve(to: CGPoint(x: 0, y: 23.88), controlPoint1: CGPoint(x: 9.76, y: 132.85), controlPoint2: CGPoint(x: 0, y: 48.42))
        rightLeg.addCurve(to: CGPoint(x: 2.48, y: 0), controlPoint1: CGPoint(x: 0, y: 18.77), controlPoint2: CGPoint(x: 0.83, y: 10.81))
        rightLeg.close()
        let rl = CAShapeLayer()
        rl.path = rightLeg.cgPath
        rl.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        rl.position = CGPoint(x: 89.9, y: 232.13)
        
        [hn, b, ll, rl, lA, rA].forEach {skeleton.layer.addSublayer($0)}
        
        return skeleton
    }
    
    class func createSweatShirt() -> UIView {
        let sweatShirt = UIView()
        
        let womanSweatShirt2 = UIBezierPath()
        womanSweatShirt2.move(to: CGPoint(x: 44.26, y: 9.57))
        womanSweatShirt2.addCurve(to: CGPoint(x: 69.04, y: 0.23), controlPoint1: CGPoint(x: 53.29, y: -0.54), controlPoint2: CGPoint(x: 68.52, y: -0.37))
        womanSweatShirt2.addCurve(to: CGPoint(x: 86.41, y: 14.62), controlPoint1: CGPoint(x: 69.64, y: 0.94), controlPoint2: CGPoint(x: 75.32, y: 14.62))
        womanSweatShirt2.addCurve(to: CGPoint(x: 102.04, y: 1.13), controlPoint1: CGPoint(x: 97.51, y: 14.62), controlPoint2: CGPoint(x: 102.04, y: 2.09))
        womanSweatShirt2.addCurve(to: CGPoint(x: 125.41, y: 7.47), controlPoint1: CGPoint(x: 102.04, y: -1.54), controlPoint2: CGPoint(x: 119.85, y: 2.1))
        womanSweatShirt2.addCurve(to: CGPoint(x: 143.32, y: 54.92), controlPoint1: CGPoint(x: 130.74, y: 12.6), controlPoint2: CGPoint(x: 136.7, y: 28.42))
        womanSweatShirt2.addCurve(to: CGPoint(x: 141.99, y: 35.14), controlPoint1: CGPoint(x: 142.43, y: 46.35), controlPoint2: CGPoint(x: 141.99, y: 39.75))
        womanSweatShirt2.addCurve(to: CGPoint(x: 156.33, y: 35.5), controlPoint1: CGPoint(x: 141.99, y: 32.11), controlPoint2: CGPoint(x: 155.9, y: 31.68))
        womanSweatShirt2.addCurve(to: CGPoint(x: 150.16, y: 92.13), controlPoint1: CGPoint(x: 156.77, y: 39.44), controlPoint2: CGPoint(x: 163.66, y: 90.78))
        womanSweatShirt2.addCurve(to: CGPoint(x: 123.39, y: 52.03), controlPoint1: CGPoint(x: 135.71, y: 93.6), controlPoint2: CGPoint(x: 125.39, y: 57.43))
        womanSweatShirt2.addCurve(to: CGPoint(x: 123.07, y: 62.44), controlPoint1: CGPoint(x: 121.18, y: 46.08), controlPoint2: CGPoint(x: 123.07, y: 50.6))
        womanSweatShirt2.addCurve(to: CGPoint(x: 118.82, y: 97.57), controlPoint1: CGPoint(x: 123.07, y: 74.27), controlPoint2: CGPoint(x: 116.63, y: 80.63))
        womanSweatShirt2.addCurve(to: CGPoint(x: 128.09, y: 172.81), controlPoint1: CGPoint(x: 122.42, y: 125.32), controlPoint2: CGPoint(x: 132.89, y: 157.78))
        womanSweatShirt2.addCurve(to: CGPoint(x: 46.21, y: 172.81), controlPoint1: CGPoint(x: 123.28, y: 187.83), controlPoint2: CGPoint(x: 52.31, y: 188.43))
        womanSweatShirt2.addCurve(to: CGPoint(x: 54.44, y: 93.63), controlPoint1: CGPoint(x: 40.1, y: 157.18), controlPoint2: CGPoint(x: 53.78, y: 115.23))
        womanSweatShirt2.addCurve(to: CGPoint(x: 47.58, y: 59.39), controlPoint1: CGPoint(x: 55.11, y: 72.02), controlPoint2: CGPoint(x: 51.01, y: 48.85))
        womanSweatShirt2.addCurve(to: CGPoint(x: 16.91, y: 149.24), controlPoint1: CGPoint(x: 36.52, y: 93.36), controlPoint2: CGPoint(x: 20.04, y: 144.43))
        womanSweatShirt2.addCurve(to: CGPoint(x: 0.13, y: 141.94), controlPoint1: CGPoint(x: 13.78, y: 154.05), controlPoint2: CGPoint(x: -1.59, y: 149.15))
        womanSweatShirt2.addCurve(to: CGPoint(x: 44.26, y: 9.57), controlPoint1: CGPoint(x: 3.79, y: 126.62), controlPoint2: CGPoint(x: 27.14, y: 28.74))
        womanSweatShirt2.close()
        let hb = CAShapeLayer()
        hb.path = womanSweatShirt2.cgPath
        hb.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        hb.position = CGPoint(x: 42, y: 86)
        
        sweatShirt.layer.addSublayer(hb)
        return sweatShirt
    }
    
    class func createCoat() -> UIView {
        let coat = UIView()
        
        let under = UIBezierPath()
        under.move(to: CGPoint.zero)
        under.addCurve(to: CGPoint(x: 14, y: 9.27), controlPoint1: CGPoint(x: 2.33, y: 6.18), controlPoint2: CGPoint(x: 7, y: 9.27))
        under.addCurve(to: CGPoint(x: 29, y: 0), controlPoint1: CGPoint(x: 21, y: 9.27), controlPoint2: CGPoint(x: 26, y: 6.18))
        under.addLine(to: CGPoint(x: 29, y: 61.47))
        under.addLine(to: CGPoint(x: 0, y: 61.47))
        under.addLine(to: CGPoint.zero)
        under.close()
        let u = CAShapeLayer()
        u.path = under.cgPath
        u.fillColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1).cgColor
        u.position = CGPoint(x: 114, y: 86.53)
        
        let coat2 = UIBezierPath()
        coat2.move(to: CGPoint(x: 51.69, y: 8.79))
        coat2.addCurve(to: CGPoint(x: 74.12, y: 0), controlPoint1: CGPoint(x: 56.73, y: 4.64), controlPoint2: CGPoint(x: 64.2, y: 1.71))
        coat2.addLine(to: CGPoint(x: 80.08, y: 29.72))
        coat2.addLine(to: CGPoint(x: 88.89, y: 59.13))
        coat2.addLine(to: CGPoint(x: 93.59, y: 237.44))
        coat2.addCurve(to: CGPoint(x: 44.98, y: 234.36), controlPoint1: CGPoint(x: 63.84, y: 240.2), controlPoint2: CGPoint(x: 47.64, y: 239.18))
        coat2.addCurve(to: CGPoint(x: 44.98, y: 166.44), controlPoint1: CGPoint(x: 41, y: 227.13), controlPoint2: CGPoint(x: 41.65, y: 205.25))
        coat2.addCurve(to: CGPoint(x: 55.53, y: 106.63), controlPoint1: CGPoint(x: 48.31, y: 127.64), controlPoint2: CGPoint(x: 55.53, y: 121.13))
        coat2.addCurve(to: CGPoint(x: 48.71, y: 68.23), controlPoint1: CGPoint(x: 55.53, y: 96.96), controlPoint2: CGPoint(x: 53.26, y: 84.16))
        coat2.addCurve(to: CGPoint(x: 16.14, y: 154.03), controlPoint1: CGPoint(x: 29.33, y: 124.13), controlPoint2: CGPoint(x: 18.47, y: 152.73))
        coat2.addCurve(to: CGPoint(x: 0, y: 142.44), controlPoint1: CGPoint(x: 12.65, y: 155.99), controlPoint2: CGPoint(x: 0, y: 148.91))
        coat2.addCurve(to: CGPoint(x: 26.86, y: 55.37), controlPoint1: CGPoint(x: 0, y: 135.97), controlPoint2: CGPoint(x: 17.48, y: 81.97))
        coat2.addCurve(to: CGPoint(x: 51.69, y: 8.79), controlPoint1: CGPoint(x: 36.25, y: 28.78), controlPoint2: CGPoint(x: 44.13, y: 15.01))
        coat2.close()
        let c2 = CAShapeLayer()
        c2.path = coat2.cgPath
        c2.fillColor = UIColor(red: 201/255, green: 201/255, blue: 201/255, alpha: 1).cgColor
        c2.position = CGPoint(x: 41.19, y: 85.37)
        
        let coat1 = UIBezierPath()
        coat1.move(to: CGPoint(x: 30.39, y: 0))
        coat1.addCurve(to: CGPoint(x: 56.88, y: 8.6), controlPoint1: CGPoint(x: 42.2, y: 0.97), controlPoint2: CGPoint(x: 51.03, y: 3.83))
        coat1.addCurve(to: CGPoint(x: 74.49, y: 40.5), controlPoint1: CGPoint(x: 60.03, y: 11.18), controlPoint2: CGPoint(x: 70.11, y: 25.85))
        coat1.addCurve(to: CGPoint(x: 78.13, y: 53.71), controlPoint1: CGPoint(x: 74.94, y: 42), controlPoint2: CGPoint(x: 76.15, y: 46.4))
        coat1.addCurve(to: CGPoint(x: 78.13, y: 34.22), controlPoint1: CGPoint(x: 78.18, y: 44.63), controlPoint2: CGPoint(x: 78.18, y: 38.14))
        coat1.addCurve(to: CGPoint(x: 91.09, y: 35.6), controlPoint1: CGPoint(x: 78.07, y: 30.35), controlPoint2: CGPoint(x: 91.09, y: 32.82))
        coat1.addCurve(to: CGPoint(x: 86.97, y: 93.23), controlPoint1: CGPoint(x: 91.09, y: 38.37), controlPoint2: CGPoint(x: 99.21, y: 93.23))
        coat1.addCurve(to: CGPoint(x: 59.83, y: 65.27), controlPoint1: CGPoint(x: 76.01, y: 93.23), controlPoint2: CGPoint(x: 66.96, y: 83.91))
        coat1.addCurve(to: CGPoint(x: 59.19, y: 105.32), controlPoint1: CGPoint(x: 59.24, y: 82.53), controlPoint2: CGPoint(x: 59.03, y: 95.88))
        coat1.addCurve(to: CGPoint(x: 77.73, y: 231.99), controlPoint1: CGPoint(x: 59.42, y: 119.49), controlPoint2: CGPoint(x: 80.48, y: 221.11))
        coat1.addCurve(to: CGPoint(x: 3.38, y: 241.52), controlPoint1: CGPoint(x: 74.99, y: 242.87), controlPoint2: CGPoint(x: 16.91, y: 245.37))
        coat1.addCurve(to: CGPoint(x: 19.45, y: 63.42), controlPoint1: CGPoint(x: -4.33, y: 239.33), controlPoint2: CGPoint(x: 1.2, y: 178.78))
        coat1.addCurve(to: CGPoint(x: 28.74, y: 40.5), controlPoint1: CGPoint(x: 20.69, y: 55.6), controlPoint2: CGPoint(x: 27.39, y: 48.84))
        coat1.addCurve(to: CGPoint(x: 30.39, y: 0), controlPoint1: CGPoint(x: 30.1, y: 32.16), controlPoint2: CGPoint(x: 30.64, y: 18.66))
        coat1.close()
        let c1 = CAShapeLayer()
        c1.path = coat1.cgPath
        c1.fillColor = UIColor(red: 201/255, green: 201/255, blue: 201/255, alpha: 1).cgColor
        c1.position = CGPoint(x: 105.76, y: 85.37)
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint(x: 3.5, y: 7))
        _2.addCurve(to: CGPoint(x: 7, y: 3.5), controlPoint1: CGPoint(x: 5.43, y: 7), controlPoint2: CGPoint(x: 7, y: 5.43))
        _2.addCurve(to: CGPoint(x: 3.5, y: 0), controlPoint1: CGPoint(x: 7, y: 1.57), controlPoint2: CGPoint(x: 5.43, y: 0))
        _2.addCurve(to: CGPoint(x: 0, y: 3.5), controlPoint1: CGPoint(x: 1.57, y: 0), controlPoint2: CGPoint(x: 0, y: 1.57))
        _2.addCurve(to: CGPoint(x: 3.5, y: 7), controlPoint1: CGPoint(x: 0, y: 5.43), controlPoint2: CGPoint(x: 1.57, y: 7))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1).cgColor
        _22.position = CGPoint(x: 128, y: 166)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 3.5, y: 7))
        _1.addCurve(to: CGPoint(x: 7, y: 3.5), controlPoint1: CGPoint(x: 5.43, y: 7), controlPoint2: CGPoint(x: 7, y: 5.43))
        _1.addCurve(to: CGPoint(x: 3.5, y: 0), controlPoint1: CGPoint(x: 7, y: 1.57), controlPoint2: CGPoint(x: 5.43, y: 0))
        _1.addCurve(to: CGPoint(x: 0, y: 3.5), controlPoint1: CGPoint(x: 1.57, y: 0), controlPoint2: CGPoint(x: 0, y: 1.57))
        _1.addCurve(to: CGPoint(x: 3.5, y: 7), controlPoint1: CGPoint(x: 0, y: 5.43), controlPoint2: CGPoint(x: 1.57, y: 7))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1).cgColor
        _11.position = CGPoint(x: 127, y: 185)
        
        let neck2 = UIBezierPath()
        neck2.move(to: CGPoint(x: 5.36, y: 17.78))
        neck2.addCurve(to: CGPoint(x: 12.65, y: 4.6), controlPoint1: CGPoint(x: 3.45, y: 17.01), controlPoint2: CGPoint(x: 6.49, y: 7.99))
        neck2.addCurve(to: CGPoint(x: 26.44, y: 0), controlPoint1: CGPoint(x: 16.76, y: 2.35), controlPoint2: CGPoint(x: 21.36, y: 0.81))
        neck2.addCurve(to: CGPoint(x: 25.88, y: 7), controlPoint1: CGPoint(x: 26.18, y: 3.32), controlPoint2: CGPoint(x: 25.99, y: 5.66))
        neck2.addCurve(to: CGPoint(x: 25.96, y: 8.8), controlPoint1: CGPoint(x: 25.84, y: 7.57), controlPoint2: CGPoint(x: 25.88, y: 8.17))
        neck2.addCurve(to: CGPoint(x: 43.55, y: 82.66), controlPoint1: CGPoint(x: 26.55, y: 13.43), controlPoint2: CGPoint(x: 32.41, y: 38.06))
        neck2.addCurve(to: CGPoint(x: 34.87, y: 70.71), controlPoint1: CGPoint(x: 40.99, y: 78.01), controlPoint2: CGPoint(x: 38.1, y: 74.02))
        neck2.addCurve(to: CGPoint(x: 0.57, y: 38.28), controlPoint1: CGPoint(x: 15.28, y: 50.67), controlPoint2: CGPoint(x: 2.86, y: 41.51))
        neck2.addCurve(to: CGPoint(x: 20.2, y: 20.39), controlPoint1: CGPoint(x: -2.08, y: 34.55), controlPoint2: CGPoint(x: 4.46, y: 28.59))
        neck2.addCurve(to: CGPoint(x: 5.36, y: 17.78), controlPoint1: CGPoint(x: 11.57, y: 19.16), controlPoint2: CGPoint(x: 6.63, y: 18.29))
        neck2.close()
        let n2 = CAShapeLayer()
        n2.path = neck2.cgPath
        n2.fillColor = UIColor(red: 167/255, green: 167/255, blue: 167/255, alpha: 1).cgColor
        n2.position = CGPoint(x: 94, y: 82)
        
        let close = UIBezierPath()
        close.move(to: CGPoint.zero)
        close.addLine(to: CGPoint(x: 10, y: 0))
        close.addLine(to: CGPoint(x: 10, y: 23))
        close.addLine(to: CGPoint(x: 0, y: 23))
        close.addLine(to: CGPoint.zero)
        close.close()
        let c = CAShapeLayer()
        c.path = close.cgPath
        c.fillColor = UIColor(red: 201/255, green: 201/255, blue: 201/255, alpha: 1).cgColor
        c.position = CGPoint(x: 129, y: 143)
        
        let neck1 = UIBezierPath()
        neck1.move(to: CGPoint(x: 11.75, y: 0))
        neck1.addCurve(to: CGPoint(x: 27.35, y: 3.83), controlPoint1: CGPoint(x: 18.38, y: 0.29), controlPoint2: CGPoint(x: 23.59, y: 1.57))
        neck1.addCurve(to: CGPoint(x: 34.69, y: 13.29), controlPoint1: CGPoint(x: 33.01, y: 7.22), controlPoint2: CGPoint(x: 37.53, y: 11.29))
        neck1.addCurve(to: CGPoint(x: 21.73, y: 20.24), controlPoint1: CGPoint(x: 32.8, y: 14.62), controlPoint2: CGPoint(x: 28.48, y: 16.94))
        neck1.addCurve(to: CGPoint(x: 41.08, y: 32.08), controlPoint1: CGPoint(x: 36.23, y: 23.57), controlPoint2: CGPoint(x: 42.67, y: 27.52))
        neck1.addCurve(to: CGPoint(x: 0, y: 86.33), controlPoint1: CGPoint(x: 39.48, y: 36.64), controlPoint2: CGPoint(x: 25.79, y: 54.73))
        neck1.addCurve(to: CGPoint(x: 8.91, y: 38.59), controlPoint1: CGPoint(x: 4.84, y: 62.68), controlPoint2: CGPoint(x: 7.81, y: 46.76))
        neck1.addCurve(to: CGPoint(x: 12.56, y: 7.06), controlPoint1: CGPoint(x: 9.92, y: 31.1), controlPoint2: CGPoint(x: 12.32, y: 21.8))
        neck1.addCurve(to: CGPoint(x: 11.75, y: 0), controlPoint1: CGPoint(x: 12.54, y: 6.94), controlPoint2: CGPoint(x: 12.27, y: 4.59))
        neck1.close()
        let n1 = CAShapeLayer()
        n1.path = neck1.cgPath
        n1.fillColor = UIColor(red: 167/255, green: 167/255, blue: 167/255, alpha: 1).cgColor
        n1.position = CGPoint(x: 124, y: 82)
        
        let tile3 = UIBezierPath()
        tile3.move(to: CGPoint(x: 5.98, y: 0))
        tile3.addLine(to: CGPoint(x: 16.12, y: 0))
        tile3.addCurve(to: CGPoint(x: 9.77, y: 47.83), controlPoint1: CGPoint(x: 12.14, y: 30.61), controlPoint2: CGPoint(x: 10.02, y: 46.55))
        tile3.addCurve(to: CGPoint(x: 0, y: 48.94), controlPoint1: CGPoint(x: 9.4, y: 49.76), controlPoint2: CGPoint(x: 0, y: 50.51))
        tile3.addCurve(to: CGPoint(x: 5.98, y: 0), controlPoint1: CGPoint(x: 0, y: 47.89), controlPoint2: CGPoint(x: 1.99, y: 31.58))
        tile3.close()
        let t3 = CAShapeLayer()
        t3.path = tile3.cgPath
        t3.fillColor = UIColor(red: 159/255, green: 159/255, blue: 159/255, alpha: 1).cgColor
        t3.position = CGPoint(x: 120.02, y: 209.82)
        
        let tile2 = UIBezierPath()
        tile2.move(to: CGPoint(x: 2.61, y: 0.05))
        tile2.addCurve(to: CGPoint(x: 40.47, y: 8.28), controlPoint1: CGPoint(x: 3.13, y: -0.44), controlPoint2: CGPoint(x: 20.34, y: 8.28))
        tile2.addCurve(to: CGPoint(x: 43.54, y: 8.41), controlPoint1: CGPoint(x: 41.43, y: 8.28), controlPoint2: CGPoint(x: 42.62, y: 8.44))
        tile2.addCurve(to: CGPoint(x: 71.69, y: 0.05), controlPoint1: CGPoint(x: 61.93, y: 7.8), controlPoint2: CGPoint(x: 70.17, y: -0.71))
        tile2.addCurve(to: CGPoint(x: 73.47, y: 5.43), controlPoint1: CGPoint(x: 72.46, y: 0.43), controlPoint2: CGPoint(x: 73.22, y: 2.92))
        tile2.addCurve(to: CGPoint(x: 73.31, y: 11.24), controlPoint1: CGPoint(x: 73.67, y: 7.29), controlPoint2: CGPoint(x: 73.69, y: 10.89))
        tile2.addCurve(to: CGPoint(x: 44.8, y: 16.74), controlPoint1: CGPoint(x: 72.64, y: 11.86), controlPoint2: CGPoint(x: 61.13, y: 16.07))
        tile2.addCurve(to: CGPoint(x: 40.47, y: 18.83), controlPoint1: CGPoint(x: 43.37, y: 16.8), controlPoint2: CGPoint(x: 41.93, y: 18.83))
        tile2.addCurve(to: CGPoint(x: 0.36, y: 11.24), controlPoint1: CGPoint(x: 22.27, y: 18.83), controlPoint2: CGPoint(x: 0.68, y: 11.58))
        tile2.addCurve(to: CGPoint(x: 0.36, y: 4.98), controlPoint1: CGPoint(x: -0.31, y: 10.52), controlPoint2: CGPoint(x: 0.12, y: 6.67))
        tile2.addCurve(to: CGPoint(x: 2.61, y: 0.05), controlPoint1: CGPoint(x: 0.59, y: 3.3), controlPoint2: CGPoint(x: 1.52, y: 1.07))
        tile2.close()
        let t2 = CAShapeLayer()
        t2.path = tile2.cgPath
        t2.fillColor = UIColor(red: 159/255, green: 159/255, blue: 159/255, alpha: 1).cgColor
        t2.position = CGPoint(x: 93.82, y: 196.01)
        
        let tile1 = UIBezierPath()
        tile1.move(to: CGPoint(x: 0.06, y: 1.47))
        tile1.addCurve(to: CGPoint(x: 6.16, y: 0), controlPoint1: CGPoint(x: -0.54, y: 0.31), controlPoint2: CGPoint(x: 3.73, y: 0))
        tile1.addCurve(to: CGPoint(x: 11.38, y: 1.47), controlPoint1: CGPoint(x: 8.6, y: 0), controlPoint2: CGPoint(x: 10.81, y: 0.58))
        tile1.addCurve(to: CGPoint(x: 14.05, y: 27.81), controlPoint1: CGPoint(x: 11.96, y: 2.36), controlPoint2: CGPoint(x: 12.96, y: 9.06))
        tile1.addCurve(to: CGPoint(x: 14.97, y: 66.03), controlPoint1: CGPoint(x: 14.63, y: 37.87), controlPoint2: CGPoint(x: 14.97, y: 64.21))
        tile1.addCurve(to: CGPoint(x: 4.8, y: 59.97), controlPoint1: CGPoint(x: 14.97, y: 67.86), controlPoint2: CGPoint(x: 5.07, y: 61.54))
        tile1.addCurve(to: CGPoint(x: 4.02, y: 27.81), controlPoint1: CGPoint(x: 4.54, y: 58.39), controlPoint2: CGPoint(x: 4.69, y: 36.49))
        tile1.addCurve(to: CGPoint(x: 0.06, y: 1.47), controlPoint1: CGPoint(x: 2.6, y: 9.44), controlPoint2: CGPoint(x: 0.33, y: 1.99))
        tile1.close()
        let t1 = CAShapeLayer()
        t1.path = tile1.cgPath
        t1.fillColor = UIColor(red: 159/255, green: 159/255, blue: 159/255, alpha: 1).cgColor
        t1.position = CGPoint(x: 129.98, y: 202.67)
        
        [u, c2, c1, _22, _11, n2, c, n1, t3, t2, t1].forEach {coat.layer.addSublayer($0)}
        return coat
    }
    
    class func createJacket() -> UIView {
        let jacket = UIView()
        
        let capeOut = UIBezierPath()
        capeOut.move(to: CGPoint(x: 1.84, y: 12.63))
        capeOut.addCurve(to: CGPoint(x: 26.41, y: 0.04), controlPoint1: CGPoint(x: 6.18, y: 3.55), controlPoint2: CGPoint(x: 12.78, y: 0.82))
        capeOut.addCurve(to: CGPoint(x: 51.63, y: 9.42), controlPoint1: CGPoint(x: 33.02, y: -0.34), controlPoint2: CGPoint(x: 40.53, y: 2.29))
        capeOut.addCurve(to: CGPoint(x: 67.51, y: 30.77), controlPoint1: CGPoint(x: 59.03, y: 14.17), controlPoint2: CGPoint(x: 64.32, y: 21.29))
        capeOut.addLine(to: CGPoint(x: 61.96, y: 32.98))
        capeOut.addCurve(to: CGPoint(x: 31.7, y: 33.75), controlPoint1: CGPoint(x: 48.72, y: 33.71), controlPoint2: CGPoint(x: 38.63, y: 33.96))
        capeOut.addCurve(to: CGPoint(x: 6.18, y: 37), controlPoint1: CGPoint(x: 21.29, y: 33.43), controlPoint2: CGPoint(x: 10.76, y: 39.94))
        capeOut.addCurve(to: CGPoint(x: 1.84, y: 12.63), controlPoint1: CGPoint(x: 1.61, y: 34.05), controlPoint2: CGPoint(x: -2.5, y: 21.71))
        capeOut.close()
        let co = CAShapeLayer()
        co.path = capeOut.cgPath
        co.fillColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1).cgColor
        co.position = CGPoint(x: 87.93, y: 62.3)
        
        let capeIn = UIBezierPath()
        capeIn.move(to: CGPoint(x: 0.35, y: 10.4))
        capeIn.addCurve(to: CGPoint(x: 13.95, y: 0.03), controlPoint1: CGPoint(x: -1.28, y: 6.22), controlPoint2: CGPoint(x: 2.74, y: -0.53))
        capeIn.addCurve(to: CGPoint(x: 32.84, y: 7.49), controlPoint1: CGPoint(x: 18.25, y: 0.25), controlPoint2: CGPoint(x: 26.44, y: 3.3))
        capeIn.addCurve(to: CGPoint(x: 43.25, y: 17.53), controlPoint1: CGPoint(x: 38.63, y: 11.28), controlPoint2: CGPoint(x: 42.84, y: 16.18))
        capeIn.addCurve(to: CGPoint(x: 37.5, y: 25.53), controlPoint1: CGPoint(x: 44.1, y: 20.37), controlPoint2: CGPoint(x: 46.82, y: 23.9))
        capeIn.addCurve(to: CGPoint(x: 12.75, y: 22.96), controlPoint1: CGPoint(x: 28.17, y: 27.16), controlPoint2: CGPoint(x: 20.15, y: 24.43))
        capeIn.addCurve(to: CGPoint(x: 0.35, y: 10.4), controlPoint1: CGPoint(x: 5.35, y: 21.5), controlPoint2: CGPoint(x: 1.98, y: 14.58))
        capeIn.close()
        let ci = CAShapeLayer()
        ci.path = capeIn.cgPath
        ci.fillColor = UIColor(red: 197/255, green: 197/255, blue: 197/255, alpha: 1).cgColor
        ci.position = CGPoint(x: 100.95, y: 66.2)
        
        let shoulders = UIBezierPath()
        shoulders.move(to: CGPoint(x: 0.46, y: 9.38))
        shoulders.addCurve(to: CGPoint(x: 35.91, y: 0.03), controlPoint1: CGPoint(x: 7.8, y: 0.99), controlPoint2: CGPoint(x: 25.73, y: -0.23))
        shoulders.addCurve(to: CGPoint(x: 67.77, y: 4.75), controlPoint1: CGPoint(x: 53.31, y: 0.49), controlPoint2: CGPoint(x: 64.06, y: 2.85))
        shoulders.addCurve(to: CGPoint(x: 0.46, y: 9.38), controlPoint1: CGPoint(x: 76.58, y: 9.26), controlPoint2: CGPoint(x: -6.88, y: 17.78))
        shoulders.close()
        let sh = CAShapeLayer()
        sh.path = shoulders.cgPath
        sh.fillColor = UIColor(red: 210/255, green: 168/255, blue: 133/255, alpha: 1).cgColor
        sh.position = CGPoint(x: 89.43, y: 87.6)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 26.98, y: 80.05))
        headNeck.addLine(to: CGPoint(x: 9.3, y: 79.99))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 108.59, y: 9.01)
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 40.42, y: 14.26))
        body.addCurve(to: CGPoint(x: 69.51, y: 0.37), controlPoint1: CGPoint(x: 43.69, y: 5.45), controlPoint2: CGPoint(x: 64.38, y: -1.74))
        body.addCurve(to: CGPoint(x: 87.18, y: 5.6), controlPoint1: CGPoint(x: 72.03, y: 1.01), controlPoint2: CGPoint(x: 74.24, y: 5.6))
        body.addCurve(to: CGPoint(x: 103.57, y: 0.68), controlPoint1: CGPoint(x: 92.25, y: 5.6), controlPoint2: CGPoint(x: 99.76, y: 6.76))
        body.addCurve(to: CGPoint(x: 123.97, y: 7.52), controlPoint1: CGPoint(x: 104.95, y: -1.53), controlPoint2: CGPoint(x: 120.49, y: 4.08))
        body.addCurve(to: CGPoint(x: 142.94, y: 50.64), controlPoint1: CGPoint(x: 126.96, y: 10.48), controlPoint2: CGPoint(x: 133.28, y: 24.85))
        body.addCurve(to: CGPoint(x: 142.94, y: 34.97), controlPoint1: CGPoint(x: 142.94, y: 41.98), controlPoint2: CGPoint(x: 142.94, y: 36.76))
        body.addCurve(to: CGPoint(x: 155.64, y: 36.34), controlPoint1: CGPoint(x: 142.94, y: 28.31), controlPoint2: CGPoint(x: 154.96, y: 29.66))
        body.addCurve(to: CGPoint(x: 149.44, y: 90.2), controlPoint1: CGPoint(x: 156.03, y: 40.22), controlPoint2: CGPoint(x: 165.28, y: 88.68))
        body.addCurve(to: CGPoint(x: 120.89, y: 45.22), controlPoint1: CGPoint(x: 133.61, y: 91.73), controlPoint2: CGPoint(x: 120.12, y: 42.27))
        body.addCurve(to: CGPoint(x: 123.97, y: 114.9), controlPoint1: CGPoint(x: 127.31, y: 69.92), controlPoint2: CGPoint(x: 123.97, y: 102.87))
        body.addCurve(to: CGPoint(x: 133.77, y: 219.22), controlPoint1: CGPoint(x: 123.97, y: 145.85), controlPoint2: CGPoint(x: 140.1, y: 204.78))
        body.addCurve(to: CGPoint(x: 35.45, y: 219.22), controlPoint1: CGPoint(x: 127.43, y: 233.66), controlPoint2: CGPoint(x: 41.37, y: 238.67))
        body.addCurve(to: CGPoint(x: 49.31, y: 61.16), controlPoint1: CGPoint(x: 29.52, y: 199.77), controlPoint2: CGPoint(x: 52.82, y: 71.93))
        body.addCurve(to: CGPoint(x: 15.45, y: 149.21), controlPoint1: CGPoint(x: 45.8, y: 50.38), controlPoint2: CGPoint(x: 17.9, y: 146.03))
        body.addCurve(to: CGPoint(x: 0, y: 144.19), controlPoint1: CGPoint(x: 13.01, y: 152.38), controlPoint2: CGPoint(x: 0, y: 154.45))
        body.addCurve(to: CGPoint(x: 40.42, y: 14.26), controlPoint1: CGPoint(x: 0, y: 133.92), controlPoint2: CGPoint(x: 32.02, y: 36.89))
        body.close()
        let bd = CAShapeLayer()
        bd.path = body.cgPath
        bd.fillColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1).cgColor
        bd.position = CGPoint(x: 41.45, y: 87.94)
        
        let zipper = UIBezierPath()
        zipper.move(to: CGPoint.zero)
        zipper.addLine(to: CGPoint(x: 4.81, y: 0.09))
        zipper.addCurve(to: CGPoint(x: 7.8, y: 124.1), controlPoint1: CGPoint(x: 6.74, y: 54.64), controlPoint2: CGPoint(x: 7.73, y: 95.98))
        zipper.addCurve(to: CGPoint(x: 5.41, y: 226), controlPoint1: CGPoint(x: 7.87, y: 152.22), controlPoint2: CGPoint(x: 7.07, y: 186.19))
        zipper.addCurve(to: CGPoint(x: 3.03, y: 226.15), controlPoint1: CGPoint(x: 4.36, y: 226.07), controlPoint2: CGPoint(x: 3.57, y: 226.12))
        zipper.addCurve(to: CGPoint(x: 0.6, y: 226.26), controlPoint1: CGPoint(x: 2.49, y: 226.18), controlPoint2: CGPoint(x: 1.68, y: 226.22))
        zipper.addLine(to: CGPoint(x: 3.03, y: 124.1))
        zipper.addLine(to: CGPoint.zero)
        zipper.close()
        let zip = CAShapeLayer()
        zip.path = zipper.cgPath
        zip.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        zip.position = CGPoint(x: 127.36, y: 93.53)
        
        [co, ci, sh, hn, bd, zip].forEach {jacket.layer.addSublayer($0)}
        return jacket
    }
    
    class func createBlouse() -> UIView {
        
        let blouse = UIView()
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint(x: 0.19, y: 0.68))
        _2.addCurve(to: CGPoint(x: 4.85, y: 4.19), controlPoint1: CGPoint(x: 0.67, y: -0.9), controlPoint2: CGPoint(x: 2.22, y: 0.27))
        _2.addLine(to: CGPoint(x: 1.55, y: 15.18))
        _2.addCurve(to: CGPoint(x: 0.19, y: 0.68), controlPoint1: CGPoint(x: 0.16, y: 7.1), controlPoint2: CGPoint(x: -0.3, y: 2.27))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1).cgColor
        _22.position = CGPoint(x: 49.25, y: 192.93)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 2.82, y: 0))
        _1.addCurve(to: CGPoint(x: 3.61, y: 8.8), controlPoint1: CGPoint(x: 3.89, y: 4.27), controlPoint2: CGPoint(x: 4.15, y: 7.2))
        _1.addCurve(to: CGPoint(x: 0, y: 8.42), controlPoint1: CGPoint(x: 3.07, y: 10.4), controlPoint2: CGPoint(x: 1.87, y: 10.27))
        _1.addLine(to: CGPoint(x: 2.82, y: 0))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1).cgColor
        _11.position = CGPoint(x: 60.54, y: 212.52)
        
        let rectangle = UIBezierPath()
        rectangle.move(to: CGPoint(x: 0, y: 0.53))
        rectangle.addCurve(to: CGPoint(x: 1.13, y: 0.26), controlPoint1: CGPoint(x: 0, y: -0.08), controlPoint2: CGPoint(x: 0.39, y: -0.16))
        rectangle.addCurve(to: CGPoint(x: 1.42, y: 5.52), controlPoint1: CGPoint(x: 1.17, y: 0.67), controlPoint2: CGPoint(x: 1.26, y: 2.43))
        rectangle.addLine(to: CGPoint(x: 0.22, y: 6.42))
        rectangle.addCurve(to: CGPoint(x: 0, y: 0.53), controlPoint1: CGPoint(x: 0.07, y: 3.64), controlPoint2: CGPoint(x: 0, y: 1.68))
        rectangle.close()
        let un = CAShapeLayer()
        un.path = rectangle.cgPath
        un.fillColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1).cgColor
        un.position = CGPoint(x: 183.81, y: 120.58)
        
        let bodyBlouse = UIBezierPath()
        bodyBlouse.move(to: CGPoint(x: 61.58, y: 0.05))
        bodyBlouse.addCurve(to: CGPoint(x: 79.5, y: 18.31), controlPoint1: CGPoint(x: 65.4, y: -1.06), controlPoint2: CGPoint(x: 64.04, y: 18.31))
        bodyBlouse.addCurve(to: CGPoint(x: 95, y: 0.47), controlPoint1: CGPoint(x: 94.96, y: 18.31), controlPoint2: CGPoint(x: 89.36, y: -0.98))
        bodyBlouse.addCurve(to: CGPoint(x: 117.15, y: 10.16), controlPoint1: CGPoint(x: 101.72, y: 2.2), controlPoint2: CGPoint(x: 109.34, y: 3.27))
        bodyBlouse.addCurve(to: CGPoint(x: 135.47, y: 50.51), controlPoint1: CGPoint(x: 119.61, y: 12.33), controlPoint2: CGPoint(x: 125.72, y: 25.78))
        bodyBlouse.addCurve(to: CGPoint(x: 134.8, y: 34.71), controlPoint1: CGPoint(x: 134.77, y: 37.42), controlPoint2: CGPoint(x: 134.55, y: 32.15))
        bodyBlouse.addCurve(to: CGPoint(x: 149.63, y: 51.36), controlPoint1: CGPoint(x: 135.71, y: 44.29), controlPoint2: CGPoint(x: 149.28, y: 48.57))
        bodyBlouse.addCurve(to: CGPoint(x: 142.74, y: 93.1), controlPoint1: CGPoint(x: 149.85, y: 53.07), controlPoint2: CGPoint(x: 158.48, y: 93.1))
        bodyBlouse.addCurve(to: CGPoint(x: 114.08, y: 44.69), controlPoint1: CGPoint(x: 127, y: 93.1), controlPoint2: CGPoint(x: 121.97, y: 64.29))
        bodyBlouse.addCurve(to: CGPoint(x: 112, y: 41.22), controlPoint1: CGPoint(x: 113.14, y: 42.37), controlPoint2: CGPoint(x: 112.45, y: 41.21))
        bodyBlouse.addCurve(to: CGPoint(x: 114.08, y: 55.12), controlPoint1: CGPoint(x: 113.63, y: 44.43), controlPoint2: CGPoint(x: 114.33, y: 49.07))
        bodyBlouse.addCurve(to: CGPoint(x: 108.7, y: 82.83), controlPoint1: CGPoint(x: 113.59, y: 67.07), controlPoint2: CGPoint(x: 108.7, y: 74.05))
        bodyBlouse.addCurve(to: CGPoint(x: 118.61, y: 149.74), controlPoint1: CGPoint(x: 108.7, y: 101.41), controlPoint2: CGPoint(x: 119.38, y: 139.25))
        bodyBlouse.addCurve(to: CGPoint(x: 79.5, y: 166), controlPoint1: CGPoint(x: 117.83, y: 160.23), controlPoint2: CGPoint(x: 101.53, y: 166))
        bodyBlouse.addCurve(to: CGPoint(x: 38.47, y: 149.74), controlPoint1: CGPoint(x: 57.47, y: 166), controlPoint2: CGPoint(x: 39.88, y: 159.08))
        bodyBlouse.addCurve(to: CGPoint(x: 47.06, y: 85.86), controlPoint1: CGPoint(x: 37.07, y: 140.4), controlPoint2: CGPoint(x: 46.8, y: 108.36))
        bodyBlouse.addCurve(to: CGPoint(x: 41.15, y: 51.36), controlPoint1: CGPoint(x: 47.23, y: 70.86), controlPoint2: CGPoint(x: 45.26, y: 59.36))
        bodyBlouse.addCurve(to: CGPoint(x: 30.42, y: 81.33), controlPoint1: CGPoint(x: 35.91, y: 64.12), controlPoint2: CGPoint(x: 32.33, y: 74.11))
        bodyBlouse.addCurve(to: CGPoint(x: 15.07, y: 134.32), controlPoint1: CGPoint(x: 20.28, y: 119.57), controlPoint2: CGPoint(x: 15.05, y: 134.33))
        bodyBlouse.addCurve(to: CGPoint(x: 0, y: 107.6), controlPoint1: CGPoint(x: 16.2, y: 127.72), controlPoint2: CGPoint(x: 0, y: 119.37))
        bodyBlouse.addCurve(to: CGPoint(x: 36.86, y: 10.85), controlPoint1: CGPoint(x: 0, y: 100.68), controlPoint2: CGPoint(x: 32.26, y: 19.01))
        bodyBlouse.addCurve(to: CGPoint(x: 61.58, y: 0.05), controlPoint1: CGPoint(x: 41.46, y: 2.7), controlPoint2: CGPoint(x: 53.2, y: 2.49))
        bodyBlouse.close()
        let bb = CAShapeLayer()
        bb.path = bodyBlouse.cgPath
        bb.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        bb.position = CGPoint(x: 49.29, y: 87)
        
        [_22, _11, un, bb].forEach {blouse.layer.addSublayer($0)}
        return blouse
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
        uu.position = CGPoint(x: 65.9, y: 26.73)
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
        uh.position = CGPoint(x: 158.58, y: 10.88)
        uh.transform = CATransform3DMakeRotation(350 * CGFloat.pi/180, 0, 0, 1)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 25.17, y: 62.59))
        headNeck.addLine(to: CGPoint(x: 26.83, y: 80.23))
        headNeck.addLine(to: CGPoint(x: 9.6, y: 80.23))
        headNeck.addLine(to: CGPoint(x: 11.9, y: 51.22))
        headNeck.addCurve(to: CGPoint(x: 3.4, y: 11.51), controlPoint1: CGPoint(x: -2.21, y: 36.07), controlPoint2: CGPoint(x: -1.98, y: 23.41))
        headNeck.addCurve(to: CGPoint(x: 44.11, y: 9.96), controlPoint1: CGPoint(x: 9.49, y: -1.96), controlPoint2: CGPoint(x: 34.97, y: -5.01))
        headNeck.addCurve(to: CGPoint(x: 25.17, y: 62.59), controlPoint1: CGPoint(x: 52.54, y: 27.03), controlPoint2: CGPoint(x: 52.5, y: 81))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 109.86, y: 9)
        
        [uu, uh, hn].forEach {umbrella.layer.addSublayer($0)}
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
        um.position = CGPoint(x: 52.56, y: -48.7)
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
        ut.position = CGPoint(x: 140.42, y: -69)
        ut.transform = CATransform3DMakeRotation(350 * CGFloat.pi/180, 0, 0, 1)
        
        let hand = UIBezierPath()
        hand.move(to: CGPoint(x: 12.08, y: 3.63))
        hand.addCurve(to: CGPoint(x: 15.07, y: 12.84), controlPoint1: CGPoint(x: 17.69, y: 8.97), controlPoint2: CGPoint(x: 15.88, y: 11.76))
        hand.addCurve(to: CGPoint(x: 1.39, y: 10.51), controlPoint1: CGPoint(x: 14.26, y: 13.91), controlPoint2: CGPoint(x: 6.96, y: 15.63))
        hand.addCurve(to: CGPoint(x: 1.39, y: 1.87), controlPoint1: CGPoint(x: -0.99, y: 8.32), controlPoint2: CGPoint(x: 0.15, y: 3.22))
        hand.addCurve(to: CGPoint(x: 12.08, y: 3.63), controlPoint1: CGPoint(x: 4.39, y: -1.4), controlPoint2: CGPoint(x: 8.14, y: -0.12))
        hand.close()
        let h = CAShapeLayer()
        h.path = hand.cgPath
        h.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        h.position = CGPoint(x: 181, y: 110)
        
        [um, ut, h].forEach {umbrella.layer.addSublayer($0)}
        return umbrella
    }
}



