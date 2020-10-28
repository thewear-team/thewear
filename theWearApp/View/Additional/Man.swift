//
//  Man.swift
//  theWearPersons
//
//  Created by Max Reshetov on 10/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class Man: NSObject {

    static let hairstyles = ["crew","spiky","another spiky","stylish hair","bald"]
   
    static let beards = ["ordinary","no","mustache","spain","puaro"]
    
    class func createMask() -> UIView {
        let mask = UIView()
        
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: 0.03))
        bezierPath.addCurve(to: CGPoint(x: 0.44, y: 1.17), controlPoint1: CGPoint(x: 0.16, y: 0.42), controlPoint2: CGPoint(x: 0.3, y: 0.8))
        bezierPath.addLine(to: CGPoint(x: 1.28, y: 0.61))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 0.03), controlPoint1: CGPoint(x: 0.85, y: 0.12), controlPoint2: CGPoint(x: 0.42, y: -0.08))
        bezierPath.close()
        let bp = CAShapeLayer()
        bp.path = bezierPath.cgPath
        bp.fillColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp.position = CGPoint(x: 126, y: 37.3)
        
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 9.84, y: 4.22))
        bezier2Path.addCurve(to: CGPoint(x: 24.64, y: 1.26), controlPoint1: CGPoint(x: 16.04, y: 2.76), controlPoint2: CGPoint(x: 20.97, y: 1.78))
        bezier2Path.addCurve(to: CGPoint(x: 35.51, y: 0), controlPoint1: CGPoint(x: 28.32, y: 0.75), controlPoint2: CGPoint(x: 31.94, y: 0.33))
        bezier2Path.addCurve(to: CGPoint(x: 35.17, y: 13.01), controlPoint1: CGPoint(x: 35.63, y: 5.58), controlPoint2: CGPoint(x: 35.52, y: 9.91))
        bezier2Path.addCurve(to: CGPoint(x: 30.15, y: 26.37), controlPoint1: CGPoint(x: 34.65, y: 17.66), controlPoint2: CGPoint(x: 33.25, y: 22.38))
        bezier2Path.addCurve(to: CGPoint(x: 17.5, y: 32.19), controlPoint1: CGPoint(x: 27.06, y: 30.36), controlPoint2: CGPoint(x: 23.95, y: 33.5))
        bezier2Path.addCurve(to: CGPoint(x: 0, y: 15.77), controlPoint1: CGPoint(x: 11.05, y: 30.89), controlPoint2: CGPoint(x: 1.51, y: 18.85))
        bezier2Path.addCurve(to: CGPoint(x: 8.01, y: 12.35), controlPoint1: CGPoint(x: 2.76, y: 15.07), controlPoint2: CGPoint(x: 6.89, y: 15.27))
        bezier2Path.addCurve(to: CGPoint(x: 9.84, y: 4.22), controlPoint1: CGPoint(x: 8.76, y: 10.41), controlPoint2: CGPoint(x: 9.37, y: 7.7))
        bezier2Path.close()
        let bp2 = CAShapeLayer()
        bp2.path = bezier2Path.cgPath
        bp2.fillColor = UIColor.white.cgColor
        bp2.position = CGPoint(x: 125.17, y: 44.48)

        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 9.84, y: 4.22))
        bezier3Path.addCurve(to: CGPoint(x: 24.64, y: 1.26), controlPoint1: CGPoint(x: 16.04, y: 2.76), controlPoint2: CGPoint(x: 20.97, y: 1.78))
        bezier3Path.addCurve(to: CGPoint(x: 35.51, y: 0), controlPoint1: CGPoint(x: 28.32, y: 0.75), controlPoint2: CGPoint(x: 31.94, y: 0.33))
        bezier3Path.addCurve(to: CGPoint(x: 35.17, y: 13.01), controlPoint1: CGPoint(x: 35.63, y: 5.58), controlPoint2: CGPoint(x: 35.52, y: 9.91))
        bezier3Path.addCurve(to: CGPoint(x: 30.15, y: 26.37), controlPoint1: CGPoint(x: 34.65, y: 17.66), controlPoint2: CGPoint(x: 33.25, y: 22.38))
        bezier3Path.addCurve(to: CGPoint(x: 17.5, y: 32.19), controlPoint1: CGPoint(x: 27.06, y: 30.36), controlPoint2: CGPoint(x: 23.95, y: 33.5))
        bezier3Path.addCurve(to: CGPoint(x: 0, y: 15.77), controlPoint1: CGPoint(x: 11.05, y: 30.89), controlPoint2: CGPoint(x: 1.51, y: 18.85))
        bezier3Path.addCurve(to: CGPoint(x: 8.01, y: 12.35), controlPoint1: CGPoint(x: 2.76, y: 15.07), controlPoint2: CGPoint(x: 6.89, y: 15.27))
        bezier3Path.addCurve(to: CGPoint(x: 9.84, y: 4.22), controlPoint1: CGPoint(x: 8.76, y: 10.41), controlPoint2: CGPoint(x: 9.37, y: 7.7))
        bezier3Path.close()
        let bp3 = CAShapeLayer()
        bp3.path = bezier3Path.cgPath
        bp3.lineWidth = 1
        bp3.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp3.fillColor = UIColor.clear.cgColor
        bp3.position = CGPoint(x: 125.17, y: 44.48)

        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 7.5, y: 10.71))
        bezier4Path.addCurve(to: CGPoint(x: 3.69, y: 5.59), controlPoint1: CGPoint(x: 6.33, y: 9.35), controlPoint2: CGPoint(x: 5.06, y: 7.64))
        bezier4Path.addCurve(to: CGPoint(x: 0, y: 0), controlPoint1: CGPoint(x: 2.32, y: 3.54), controlPoint2: CGPoint(x: 1.09, y: 1.67))
        let bp4 = CAShapeLayer()
        bp4.path = bezier4Path.cgPath
        bp4.lineWidth = 1
        bp4.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp4.fillColor = UIColor.clear.cgColor
        bp4.position = CGPoint(x: 127, y: 38.2)

        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 6.39, y: 11.42))
        bezier5Path.addCurve(to: CGPoint(x: 2.33, y: 4.3), controlPoint1: CGPoint(x: 4.93, y: 8.82), controlPoint2: CGPoint(x: 3.58, y: 6.44))
        bezier5Path.addCurve(to: CGPoint(x: 0, y: 0), controlPoint1: CGPoint(x: 1.08, y: 2.15), controlPoint2: CGPoint(x: 0.3, y: 0.72))
        let bp5 = CAShapeLayer()
        bp5.path = bezier4Path.cgPath
        bp5.lineWidth = 1
        bp5.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp5.fillColor = UIColor.clear.cgColor
        bp5.position = CGPoint(x: 117.86, y: 48.93)
        
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: 0.09, y: 0))
        bezier6Path.addCurve(to: CGPoint(x: 0.78, y: 2.02), controlPoint1: CGPoint(x: 0.38, y: 0.38), controlPoint2: CGPoint(x: 0.67, y: 0.99))
        bezier6Path.addCurve(to: CGPoint(x: 1.17, y: 3.54), controlPoint1: CGPoint(x: 0.82, y: 2.39), controlPoint2: CGPoint(x: 0.95, y: 2.9))
        bezier6Path.addLine(to: CGPoint(x: 0.25, y: 3.94))
        bezier6Path.addCurve(to: CGPoint(x: 0.09, y: 0), controlPoint1: CGPoint(x: -0.02, y: 3.23), controlPoint2: CGPoint(x: -0.07, y: 1.92))
        bezier6Path.close()
        let bp6 = CAShapeLayer()
        bp6.path = bezier6Path.cgPath
        bp6.fillColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp6.position = CGPoint(x: 117.70, y: 45.75)
        
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: 0, y: 0.9))
        bezier7Path.addCurve(to: CGPoint(x: 13.18, y: 2.01), controlPoint1: CGPoint(x: 4.66, y: 1.64), controlPoint2: CGPoint(x: 9.06, y: 2.01))
        bezier7Path.addCurve(to: CGPoint(x: 26.23, y: 0), controlPoint1: CGPoint(x: 17.31, y: 2.01), controlPoint2: CGPoint(x: 21.66, y: 1.34))
        let bp7 = CAShapeLayer()
        bp7.path = bezier7Path.cgPath
        bp7.lineWidth = 1
        bp7.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp7.fillColor = UIColor.clear.cgColor
        bp7.position = CGPoint(x: 134.11, y: 54.94)
        
        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: 0, y: 0))
        bezier8Path.addCurve(to: CGPoint(x: 13.12, y: 8.33), controlPoint1: CGPoint(x: 4.45, y: 4.38), controlPoint2: CGPoint(x: 8.83, y: 7.16))
        bezier8Path.addCurve(to: CGPoint(x: 26.7, y: 8.33), controlPoint1: CGPoint(x: 17.41, y: 9.49), controlPoint2: CGPoint(x: 21.93, y: 9.49))
        let bp8 = CAShapeLayer()
        bp8.path = bezier8Path.cgPath
        bp8.lineWidth = 1
        bp8.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp8.fillColor = UIColor.clear.cgColor
        bp8.position = CGPoint(x: 130.5, y: 59.47)

        [bp, bp2, bp3, bp4, bp5, bp6, bp7, bp8].forEach {mask.layer.addSublayer($0)}

        return mask
    }
    
    class func createLongSnakeForCell() -> UIView {
        let snake = UIView()
        let beard = UIBezierPath()
        beard.move(to: CGPoint(x: 0.05, y: 1.03))
        beard.addCurve(to: CGPoint(x: 5.23, y: 2.2), controlPoint1: CGPoint(x: -0.66, y: -0.71), controlPoint2: CGPoint(x: 6.42, y: -0.2))
        beard.addCurve(to: CGPoint(x: 7.93, y: 29.98), controlPoint1: CGPoint(x: 4.36, y: 3.96), controlPoint2: CGPoint(x: 4.54, y: 26.13))
        beard.addCurve(to: CGPoint(x: 22.26, y: 37.18), controlPoint1: CGPoint(x: 13.53, y: 36.35), controlPoint2: CGPoint(x: 18.45, y: 37.18))
        beard.addCurve(to: CGPoint(x: 26.32, y: 38.95), controlPoint1: CGPoint(x: 26.06, y: 37.18), controlPoint2: CGPoint(x: 33.36, y: 33.76))
        beard.addCurve(to: CGPoint(x: 4.46, y: 30.36), controlPoint1: CGPoint(x: 19.27, y: 44.15), controlPoint2: CGPoint(x: 7.81, y: 36.47))
        beard.addCurve(to: CGPoint(x: 0.05, y: 1.03), controlPoint1: CGPoint(x: 1.12, y: 24.25), controlPoint2: CGPoint(x: 2.17, y: 6.25))
        beard.close()
        let bs = CAShapeLayer()
        bs.path = beard.cgPath
        bs.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bs.position = CGPoint(x: 16, y: 27)
        
        snake.layer.addSublayer(bs)
        return snake
    }
    
    class func createLongSnake() -> UIView {
        let snake = UIView()
        let beard = UIBezierPath()
        beard.move(to: CGPoint(x: 0.05, y: 1.03))
        beard.addCurve(to: CGPoint(x: 5.23, y: 2.2), controlPoint1: CGPoint(x: -0.66, y: -0.71), controlPoint2: CGPoint(x: 6.42, y: -0.2))
        beard.addCurve(to: CGPoint(x: 7.93, y: 29.98), controlPoint1: CGPoint(x: 4.36, y: 3.96), controlPoint2: CGPoint(x: 4.54, y: 26.13))
        beard.addCurve(to: CGPoint(x: 22.26, y: 37.18), controlPoint1: CGPoint(x: 13.53, y: 36.35), controlPoint2: CGPoint(x: 18.45, y: 37.18))
        beard.addCurve(to: CGPoint(x: 26.32, y: 38.95), controlPoint1: CGPoint(x: 26.06, y: 37.18), controlPoint2: CGPoint(x: 33.36, y: 33.76))
        beard.addCurve(to: CGPoint(x: 4.46, y: 30.36), controlPoint1: CGPoint(x: 19.27, y: 44.15), controlPoint2: CGPoint(x: 7.81, y: 36.47))
        beard.addCurve(to: CGPoint(x: 0.05, y: 1.03), controlPoint1: CGPoint(x: 1.12, y: 24.25), controlPoint2: CGPoint(x: 2.17, y: 6.25))
        beard.close()
        let bs = CAShapeLayer()
        bs.path = beard.cgPath
        bs.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bs.position = CGPoint(x: 125.45, y: 34.66)
        
        
        snake.layer.addSublayer(bs)
        return snake
    }
    
    class func createMustacheForCell() -> UIView {
        let mustache = UIView()
        
        let mustache2 = UIBezierPath()
        mustache2.move(to: CGPoint(x: 0.05, y: 4.8))
        mustache2.addCurve(to: CGPoint(x: 15.12, y: 1.93), controlPoint1: CGPoint(x: -0.95, y: 0.58), controlPoint2: CGPoint(x: 14.69, y: -1.97))
        mustache2.addCurve(to: CGPoint(x: 8.72, y: 5.82), controlPoint1: CGPoint(x: 15.55, y: 5.83), controlPoint2: CGPoint(x: 12.68, y: 5.26))
        mustache2.addCurve(to: CGPoint(x: 0.05, y: 4.8), controlPoint1: CGPoint(x: 4.04, y: 6.49), controlPoint2: CGPoint(x: 1.04, y: 9.03))
        mustache2.close()
        let p = CAShapeLayer()
        p.path = mustache2.cgPath
        p.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        p.position = CGPoint(x: 30.72, y: 45.4)
        
        mustache.layer.addSublayer(p)
        
        return mustache
    }
    
    class func createMustache() -> UIView {
        let mustache = UIView()
        
        let mustache2 = UIBezierPath()
        mustache2.move(to: CGPoint(x: 0.05, y: 4.8))
        mustache2.addCurve(to: CGPoint(x: 15.12, y: 1.93), controlPoint1: CGPoint(x: -0.95, y: 0.58), controlPoint2: CGPoint(x: 14.69, y: -1.97))
        mustache2.addCurve(to: CGPoint(x: 8.72, y: 5.82), controlPoint1: CGPoint(x: 15.55, y: 5.83), controlPoint2: CGPoint(x: 12.68, y: 5.26))
        mustache2.addCurve(to: CGPoint(x: 0.05, y: 4.8), controlPoint1: CGPoint(x: 4.04, y: 6.49), controlPoint2: CGPoint(x: 1.04, y: 9.03))
        mustache2.close()
        let p = CAShapeLayer()
        p.path = mustache2.cgPath
        p.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        p.position = CGPoint(x: 140.41, y: 53.4)
        
        mustache.layer.addSublayer(p)
        
        return mustache
    }
    
    class func createSpainBeardForCell() -> UIView {
        let sb = UIView()
        
        let beard = UIBezierPath()
        beard.move(to: CGPoint(x: 6.4, y: 0.97))
        beard.addCurve(to: CGPoint(x: 12.71, y: 0.71), controlPoint1: CGPoint(x: 9.54, y: 0.4), controlPoint2: CGPoint(x: 13.48, y: -0.74))
        beard.addCurve(to: CGPoint(x: 8.15, y: 4.38), controlPoint1: CGPoint(x: 11.95, y: 2.16), controlPoint2: CGPoint(x: 10.79, y: 3.46))
        beard.addCurve(to: CGPoint(x: 0.07, y: 3.64), controlPoint1: CGPoint(x: 5.5, y: 5.3), controlPoint2: CGPoint(x: 0.44, y: 5.16))
        beard.addCurve(to: CGPoint(x: 6.4, y: 0.97), controlPoint1: CGPoint(x: -0.58, y: 0.97), controlPoint2: CGPoint(x: 3.26, y: 1.55))
        beard.close()
        let p = CAShapeLayer()
        p.path = beard.cgPath
        p.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        p.position = CGPoint(x: 32, y: 63)
        
        sb.layer.addSublayer(p)
        return sb
    }
    
    class func createSpainBeard() -> UIView {
        let sb = UIView()
        
        let beard = UIBezierPath()
        beard.move(to: CGPoint(x: 6.4, y: 0.97))
        beard.addCurve(to: CGPoint(x: 12.71, y: 0.71), controlPoint1: CGPoint(x: 9.54, y: 0.4), controlPoint2: CGPoint(x: 13.48, y: -0.74))
        beard.addCurve(to: CGPoint(x: 8.15, y: 4.38), controlPoint1: CGPoint(x: 11.95, y: 2.16), controlPoint2: CGPoint(x: 10.79, y: 3.46))
        beard.addCurve(to: CGPoint(x: 0.07, y: 3.64), controlPoint1: CGPoint(x: 5.5, y: 5.3), controlPoint2: CGPoint(x: 0.44, y: 5.16))
        beard.addCurve(to: CGPoint(x: 6.4, y: 0.97), controlPoint1: CGPoint(x: -0.58, y: 0.97), controlPoint2: CGPoint(x: 3.26, y: 1.55))
        beard.close()
        let p = CAShapeLayer()
        p.path = beard.cgPath
        p.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        p.position = CGPoint(x: 141.91, y: 70.33)
        
        sb.layer.addSublayer(p)
        return sb
    }
    
    class func createLongHairCut() -> UIView {
        let long = UIView()
        
        let bobBack = UIBezierPath()
        bobBack.move(to: CGPoint(x: 7.96, y: 20.83))
        bobBack.addCurve(to: CGPoint(x: 16.61, y: 0.5), controlPoint1: CGPoint(x: 11.81, y: 12.49), controlPoint2: CGPoint(x: 14.69, y: 5.71))
        bobBack.addCurve(to: CGPoint(x: 48.95, y: 14.31), controlPoint1: CGPoint(x: 30.19, y: -1.62), controlPoint2: CGPoint(x: 40.96, y: 2.98))
        bobBack.addCurve(to: CGPoint(x: 54.67, y: 71.71), controlPoint1: CGPoint(x: 60.93, y: 31.31), controlPoint2: CGPoint(x: 54.67, y: 67.53))
        bobBack.addCurve(to: CGPoint(x: 4.14, y: 71.23), controlPoint1: CGPoint(x: 50.96, y: 71.71), controlPoint2: CGPoint(x: 12.79, y: 71.67))
        bobBack.addCurve(to: CGPoint(x: 7.96, y: 20.83), controlPoint1: CGPoint(x: -4.51, y: 70.78), controlPoint2: CGPoint(x: 2.2, y: 33.34))
        bobBack.close()
        let bb = CAShapeLayer()
        bb.path = bobBack.cgPath
        bb.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bb.position = CGPoint(x: 110.23, y: 5.4)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 26.99, y: 63.87))
        headNeck.addLine(to: CGPoint(x: 28.64, y: 79.78))
        headNeck.addLine(to: CGPoint(x: 8.5, y: 79.78))
        headNeck.addLine(to: CGPoint(x: 10.5, y: 49.38))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.28), controlPoint1: CGPoint(x: -1.66, y: 35.09), controlPoint2: CGPoint(x: -1.98, y: 22.55))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.17), controlPoint1: CGPoint(x: 9.19, y: -2.21), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 26.99, y: 63.87), controlPoint1: CGPoint(x: 54.41, y: 27.08), controlPoint2: CGPoint(x: 55.22, y: 80.44))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 109.64, y: 8)
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 2.46, y: 18.94))
        bobLeft.addCurve(to: CGPoint(x: 25.05, y: 0.53), controlPoint1: CGPoint(x: 5.99, y: 5.48), controlPoint2: CGPoint(x: 21.32, y: 1.03))
        bobLeft.addCurve(to: CGPoint(x: 35.91, y: 0.27), controlPoint1: CGPoint(x: 28.77, y: 0.02), controlPoint2: CGPoint(x: 32.62, y: -0.23))
        bobLeft.addCurve(to: CGPoint(x: 54.78, y: 13.43), controlPoint1: CGPoint(x: 39.21, y: 0.78), controlPoint2: CGPoint(x: 49.75, y: 6.53))
        bobLeft.addCurve(to: CGPoint(x: 25.05, y: 32.14), controlPoint1: CGPoint(x: 55.43, y: 14.32), controlPoint2: CGPoint(x: 45.52, y: 20.55))
        bobLeft.addCurve(to: CGPoint(x: 17.08, y: 27.42), controlPoint1: CGPoint(x: 23.16, y: 26.76), controlPoint2: CGPoint(x: 20.5, y: 25.19))
        bobLeft.addCurve(to: CGPoint(x: 16.66, y: 39.81), controlPoint1: CGPoint(x: 13.86, y: 29.52), controlPoint2: CGPoint(x: 14.93, y: 36.66))
        bobLeft.addCurve(to: CGPoint(x: 19.98, y: 71.73), controlPoint1: CGPoint(x: 17.69, y: 41.7), controlPoint2: CGPoint(x: 19.98, y: 70.25))
        bobLeft.addCurve(to: CGPoint(x: 0.23, y: 68.7), controlPoint1: CGPoint(x: 18.22, y: 71.73), controlPoint2: CGPoint(x: 0.23, y: 70.72))
        bobLeft.addCurve(to: CGPoint(x: 2.46, y: 18.94), controlPoint1: CGPoint(x: 0.23, y: 58.35), controlPoint2: CGPoint(x: -1.07, y: 32.39))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 101.8, y: 5.38)
        
        [bb, hn, bl].forEach {long.layer.addSublayer($0)}
        return long
    }
    
    class func createStyleHHairCutForCell() -> UIView {
        let style = UIView()
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 0.73, y: 20.83))
        bobLeft.addCurve(to: CGPoint(x: 20.61, y: 1.34), controlPoint1: CGPoint(x: 4.25, y: 7.38), controlPoint2: CGPoint(x: 16.22, y: 2.77))
        bobLeft.addCurve(to: CGPoint(x: 45.91, y: 1.34), controlPoint1: CGPoint(x: 24.99, y: -0.09), controlPoint2: CGPoint(x: 40.98, y: -0.77))
        bobLeft.addCurve(to: CGPoint(x: 48.31, y: 17.43), controlPoint1: CGPoint(x: 50.85, y: 3.45), controlPoint2: CGPoint(x: 54.12, y: 11.76))
        bobLeft.addCurve(to: CGPoint(x: 20.61, y: 34.24), controlPoint1: CGPoint(x: 45.89, y: 19.79), controlPoint2: CGPoint(x: 36.66, y: 25.39))
        bobLeft.addCurve(to: CGPoint(x: 12.64, y: 29.53), controlPoint1: CGPoint(x: 18.72, y: 28.87), controlPoint2: CGPoint(x: 16.06, y: 27.3))
        bobLeft.addCurve(to: CGPoint(x: 12.22, y: 41.92), controlPoint1: CGPoint(x: 9.42, y: 31.62), controlPoint2: CGPoint(x: 10.49, y: 38.76))
        bobLeft.addCurve(to: CGPoint(x: 9.33, y: 48.41), controlPoint1: CGPoint(x: 13.25, y: 43.81), controlPoint2: CGPoint(x: 10.75, y: 48.41))
        bobLeft.addCurve(to: CGPoint(x: 0.73, y: 20.83), controlPoint1: CGPoint(x: 7.57, y: 48.41), controlPoint2: CGPoint(x: -2.8, y: 34.29))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: -3, y: -3)
        
        style.layer.addSublayer(bl)
        return style
    }
    
    class func createStyleHHairCut() -> UIView {
        let style = UIView()
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 0.73, y: 20.83))
        bobLeft.addCurve(to: CGPoint(x: 20.61, y: 1.34), controlPoint1: CGPoint(x: 4.25, y: 7.38), controlPoint2: CGPoint(x: 16.22, y: 2.77))
        bobLeft.addCurve(to: CGPoint(x: 45.91, y: 1.34), controlPoint1: CGPoint(x: 24.99, y: -0.09), controlPoint2: CGPoint(x: 40.98, y: -0.77))
        bobLeft.addCurve(to: CGPoint(x: 48.31, y: 17.43), controlPoint1: CGPoint(x: 50.85, y: 3.45), controlPoint2: CGPoint(x: 54.12, y: 11.76))
        bobLeft.addCurve(to: CGPoint(x: 20.61, y: 34.24), controlPoint1: CGPoint(x: 45.89, y: 19.79), controlPoint2: CGPoint(x: 36.66, y: 25.39))
        bobLeft.addCurve(to: CGPoint(x: 12.64, y: 29.53), controlPoint1: CGPoint(x: 18.72, y: 28.87), controlPoint2: CGPoint(x: 16.06, y: 27.3))
        bobLeft.addCurve(to: CGPoint(x: 12.22, y: 41.92), controlPoint1: CGPoint(x: 9.42, y: 31.62), controlPoint2: CGPoint(x: 10.49, y: 38.76))
        bobLeft.addCurve(to: CGPoint(x: 9.33, y: 48.41), controlPoint1: CGPoint(x: 13.25, y: 43.81), controlPoint2: CGPoint(x: 10.75, y: 48.41))
        bobLeft.addCurve(to: CGPoint(x: 0.73, y: 20.83), controlPoint1: CGPoint(x: 7.57, y: 48.41), controlPoint2: CGPoint(x: -2.8, y: 34.29))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 106.24, y: 3.27)
        
        style.layer.addSublayer(bl)
        return style
    }
    
    class func createPuaroForCell() -> UIView {
        let puaro = UIView()
        
        let puaro2 = UIBezierPath()
        puaro2.move(to: CGPoint(x: 10.04, y: 0.55))
        puaro2.addCurve(to: CGPoint(x: 13.85, y: 0.46), controlPoint1: CGPoint(x: 10.99, y: 0.17), controlPoint2: CGPoint(x: 12.67, y: 0.06))
        puaro2.addCurve(to: CGPoint(x: 18.98, y: 0), controlPoint1: CGPoint(x: 15.4, y: 0.98), controlPoint2: CGPoint(x: 16.32, y: 1.94))
        puaro2.addCurve(to: CGPoint(x: 14.06, y: 5.48), controlPoint1: CGPoint(x: 18.29, y: 2.09), controlPoint2: CGPoint(x: 17.57, y: 4.98))
        puaro2.addCurve(to: CGPoint(x: 10.55, y: 4.78), controlPoint1: CGPoint(x: 12.69, y: 5.67), controlPoint2: CGPoint(x: 11.46, y: 5.36))
        puaro2.addCurve(to: CGPoint(x: 6.9, y: 6.07), controlPoint1: CGPoint(x: 9.78, y: 5.44), controlPoint2: CGPoint(x: 8.55, y: 5.92))
        puaro2.addCurve(to: CGPoint(x: 0, y: 2.08), controlPoint1: CGPoint(x: 2.83, y: 6.43), controlPoint2: CGPoint(x: 1.71, y: 5.03))
        puaro2.addCurve(to: CGPoint(x: 6.9, y: 1.18), controlPoint1: CGPoint(x: 2.83, y: 4.1), controlPoint2: CGPoint(x: 4.69, y: 2.36))
        puaro2.addCurve(to: CGPoint(x: 10.04, y: 0.55), controlPoint1: CGPoint(x: 8.27, y: 0.44), controlPoint2: CGPoint(x: 9.32, y: 0.35))
        puaro2.close()
        let p = CAShapeLayer()
        p.path = puaro2.cgPath
        p.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        p.position = CGPoint(x: 28.47, y: 46.73)
        
        puaro.layer.addSublayer(p)
        return puaro
    }
    
    class func createPuaro() -> UIView {
        let puaro = UIView()
        
        let puaro2 = UIBezierPath()
        puaro2.move(to: CGPoint(x: 10.04, y: 0.55))
        puaro2.addCurve(to: CGPoint(x: 13.85, y: 0.46), controlPoint1: CGPoint(x: 10.99, y: 0.17), controlPoint2: CGPoint(x: 12.67, y: 0.06))
        puaro2.addCurve(to: CGPoint(x: 18.98, y: 0), controlPoint1: CGPoint(x: 15.4, y: 0.98), controlPoint2: CGPoint(x: 16.32, y: 1.94))
        puaro2.addCurve(to: CGPoint(x: 14.06, y: 5.48), controlPoint1: CGPoint(x: 18.29, y: 2.09), controlPoint2: CGPoint(x: 17.57, y: 4.98))
        puaro2.addCurve(to: CGPoint(x: 10.55, y: 4.78), controlPoint1: CGPoint(x: 12.69, y: 5.67), controlPoint2: CGPoint(x: 11.46, y: 5.36))
        puaro2.addCurve(to: CGPoint(x: 6.9, y: 6.07), controlPoint1: CGPoint(x: 9.78, y: 5.44), controlPoint2: CGPoint(x: 8.55, y: 5.92))
        puaro2.addCurve(to: CGPoint(x: 0, y: 2.08), controlPoint1: CGPoint(x: 2.83, y: 6.43), controlPoint2: CGPoint(x: 1.71, y: 5.03))
        puaro2.addCurve(to: CGPoint(x: 6.9, y: 1.18), controlPoint1: CGPoint(x: 2.83, y: 4.1), controlPoint2: CGPoint(x: 4.69, y: 2.36))
        puaro2.addCurve(to: CGPoint(x: 10.04, y: 0.55), controlPoint1: CGPoint(x: 8.27, y: 0.44), controlPoint2: CGPoint(x: 9.32, y: 0.35))
        puaro2.close()
        let p = CAShapeLayer()
        p.path = puaro2.cgPath
        p.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        p.position = CGPoint(x: 138.16, y: 54.73)
        
        puaro.layer.addSublayer(p)
        return puaro
    }
    
    class func createBeardForCell() -> UIView {
        let beard = UIView()
        let manBeardLayer = UIBezierPath()
        manBeardLayer.move(to: CGPoint(x: 0.05, y: 1.03))
        manBeardLayer.addCurve(to: CGPoint(x: 5.23, y: 2.2), controlPoint1: CGPoint(x: -0.66, y: -0.71), controlPoint2: CGPoint(x: 6.42, y: -0.2))
        manBeardLayer.addCurve(to: CGPoint(x: 11.88, y: 21.21), controlPoint1: CGPoint(x: 4.36, y: 3.96), controlPoint2: CGPoint(x: 8.24, y: 18.72))
        manBeardLayer.addCurve(to: CGPoint(x: 22.7, y: 20.76), controlPoint1: CGPoint(x: 15.53, y: 23.7), controlPoint2: CGPoint(x: 18.01, y: 21.43))
        manBeardLayer.addCurve(to: CGPoint(x: 29.26, y: 20.84), controlPoint1: CGPoint(x: 26.65, y: 20.2), controlPoint2: CGPoint(x: 27.6, y: 21.38))
        manBeardLayer.addCurve(to: CGPoint(x: 34.91, y: 16.67), controlPoint1: CGPoint(x: 32.5, y: 19.78), controlPoint2: CGPoint(x: 34.36, y: 15.37))
        manBeardLayer.addCurve(to: CGPoint(x: 27.36, y: 39.25), controlPoint1: CGPoint(x: 35.46, y: 17.96), controlPoint2: CGPoint(x: 36.16, y: 32.92))
        manBeardLayer.addCurve(to: CGPoint(x: 4.03, y: 29.98), controlPoint1: CGPoint(x: 18.57, y: 45.58), controlPoint2: CGPoint(x: 7.38, y: 36.09))
        manBeardLayer.addCurve(to: CGPoint(x: 0.05, y: 1.03), controlPoint1: CGPoint(x: 0.69, y: 23.88), controlPoint2: CGPoint(x: 2.17, y: 6.25))
        manBeardLayer.close()
        manBeardLayer.move(to: CGPoint(x: 22.98, y: 25.03))
        manBeardLayer.addCurve(to: CGPoint(x: 18.72, y: 27.13), controlPoint1: CGPoint(x: 21.47, y: 25.32), controlPoint2: CGPoint(x: 18.54, y: 26.23))
        manBeardLayer.addCurve(to: CGPoint(x: 23.48, y: 27.6), controlPoint1: CGPoint(x: 18.89, y: 28.02), controlPoint2: CGPoint(x: 21.97, y: 27.89))
        manBeardLayer.addCurve(to: CGPoint(x: 27.75, y: 25.43), controlPoint1: CGPoint(x: 25, y: 27.31), controlPoint2: CGPoint(x: 27.96, y: 26.48))
        manBeardLayer.addCurve(to: CGPoint(x: 22.98, y: 25.03), controlPoint1: CGPoint(x: 27.55, y: 24.37), controlPoint2: CGPoint(x: 24.49, y: 24.74))
        manBeardLayer.close()
        let b = CAShapeLayer()
        b.path = manBeardLayer.cgPath
        b.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        b.position = CGPoint(x: 16, y: 27)
        beard.layer.addSublayer(b)
        return beard
    }
    
    class func createBeard() -> UIView {
        let beard = UIView()
        let manBeardLayer = UIBezierPath()
        manBeardLayer.move(to: CGPoint(x: 0.05, y: 1.03))
        manBeardLayer.addCurve(to: CGPoint(x: 5.23, y: 2.2), controlPoint1: CGPoint(x: -0.66, y: -0.71), controlPoint2: CGPoint(x: 6.42, y: -0.2))
        manBeardLayer.addCurve(to: CGPoint(x: 11.88, y: 21.21), controlPoint1: CGPoint(x: 4.36, y: 3.96), controlPoint2: CGPoint(x: 8.24, y: 18.72))
        manBeardLayer.addCurve(to: CGPoint(x: 22.7, y: 20.76), controlPoint1: CGPoint(x: 15.53, y: 23.7), controlPoint2: CGPoint(x: 18.01, y: 21.43))
        manBeardLayer.addCurve(to: CGPoint(x: 29.26, y: 20.84), controlPoint1: CGPoint(x: 26.65, y: 20.2), controlPoint2: CGPoint(x: 27.6, y: 21.38))
        manBeardLayer.addCurve(to: CGPoint(x: 34.91, y: 16.67), controlPoint1: CGPoint(x: 32.5, y: 19.78), controlPoint2: CGPoint(x: 34.36, y: 15.37))
        manBeardLayer.addCurve(to: CGPoint(x: 27.36, y: 39.25), controlPoint1: CGPoint(x: 35.46, y: 17.96), controlPoint2: CGPoint(x: 36.16, y: 32.92))
        manBeardLayer.addCurve(to: CGPoint(x: 4.03, y: 29.98), controlPoint1: CGPoint(x: 18.57, y: 45.58), controlPoint2: CGPoint(x: 7.38, y: 36.09))
        manBeardLayer.addCurve(to: CGPoint(x: 0.05, y: 1.03), controlPoint1: CGPoint(x: 0.69, y: 23.88), controlPoint2: CGPoint(x: 2.17, y: 6.25))
        manBeardLayer.close()
        manBeardLayer.move(to: CGPoint(x: 22.98, y: 25.03))
        manBeardLayer.addCurve(to: CGPoint(x: 18.72, y: 27.13), controlPoint1: CGPoint(x: 21.47, y: 25.32), controlPoint2: CGPoint(x: 18.54, y: 26.23))
        manBeardLayer.addCurve(to: CGPoint(x: 23.48, y: 27.6), controlPoint1: CGPoint(x: 18.89, y: 28.02), controlPoint2: CGPoint(x: 21.97, y: 27.89))
        manBeardLayer.addCurve(to: CGPoint(x: 27.75, y: 25.43), controlPoint1: CGPoint(x: 25, y: 27.31), controlPoint2: CGPoint(x: 27.96, y: 26.48))
        manBeardLayer.addCurve(to: CGPoint(x: 22.98, y: 25.03), controlPoint1: CGPoint(x: 27.55, y: 24.37), controlPoint2: CGPoint(x: 24.49, y: 24.74))
        manBeardLayer.close()
        let b = CAShapeLayer()
        b.path = manBeardLayer.cgPath
        b.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        b.position = CGPoint(x: 125.45, y: 34.66)
        beard.layer.addSublayer(b)
        return beard
    }
    
    class func createCrewCutForCell() -> UIView {
        let hairCut = UIView()
        
        let manHairCut3Layer = UIBezierPath()
        manHairCut3Layer.move(to: CGPoint(x: 26.99, y: 0.1))
        manHairCut3Layer.addCurve(to: CGPoint(x: 41.8, y: 5.58), controlPoint1: CGPoint(x: 29.7, y: 0.3), controlPoint2: CGPoint(x: 36.68, y: 1.64))
        manHairCut3Layer.addCurve(to: CGPoint(x: 48.72, y: 18.25), controlPoint1: CGPoint(x: 48.38, y: 10.62), controlPoint2: CGPoint(x: 52.13, y: 17.08))
        manHairCut3Layer.addCurve(to: CGPoint(x: 28.57, y: 21.21), controlPoint1: CGPoint(x: 45.98, y: 19.19), controlPoint2: CGPoint(x: 39.26, y: 20.18))
        manHairCut3Layer.addLine(to: CGPoint(x: 23.72, y: 34.64))
        manHairCut3Layer.addLine(to: CGPoint(x: 19.45, y: 34.64))
        manHairCut3Layer.addCurve(to: CGPoint(x: 12.68, y: 27.1), controlPoint1: CGPoint(x: 18.29, y: 27.84), controlPoint2: CGPoint(x: 16.04, y: 25.33))
        manHairCut3Layer.addCurve(to: CGPoint(x: 12.68, y: 46), controlPoint1: CGPoint(x: 9.32, y: 28.87), controlPoint2: CGPoint(x: 9.32, y: 35.17))
        manHairCut3Layer.addLine(to: CGPoint(x: 8.7, y: 46))
        manHairCut3Layer.addCurve(to: CGPoint(x: 0.05, y: 22.91), controlPoint1: CGPoint(x: 2.45, y: 39.25), controlPoint2: CGPoint(x: -0.43, y: 31.56))
        manHairCut3Layer.addCurve(to: CGPoint(x: 8.15, y: 5.58), controlPoint1: CGPoint(x: 0.4, y: 16.68), controlPoint2: CGPoint(x: 3.23, y: 9.87))
        manHairCut3Layer.addCurve(to: CGPoint(x: 26.99, y: 0.1), controlPoint1: CGPoint(x: 13.47, y: 0.93), controlPoint2: CGPoint(x: 20.08, y: -0.4))
        manHairCut3Layer.close()
        let cut = CAShapeLayer()
        cut.path = manHairCut3Layer.cgPath
        cut.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cut.position = CGPoint(x: -3, y: -2)
        
        hairCut.layer.addSublayer(cut)
        return hairCut
    }
    
    class func createCrewCut() -> UIView {
        let hairCut = UIView()
        
        let manHairCut3Layer = UIBezierPath()
        manHairCut3Layer.move(to: CGPoint(x: 26.99, y: 0.1))
        manHairCut3Layer.addCurve(to: CGPoint(x: 41.8, y: 5.58), controlPoint1: CGPoint(x: 29.7, y: 0.3), controlPoint2: CGPoint(x: 36.68, y: 1.64))
        manHairCut3Layer.addCurve(to: CGPoint(x: 48.72, y: 18.25), controlPoint1: CGPoint(x: 48.38, y: 10.62), controlPoint2: CGPoint(x: 52.13, y: 17.08))
        manHairCut3Layer.addCurve(to: CGPoint(x: 28.57, y: 21.21), controlPoint1: CGPoint(x: 45.98, y: 19.19), controlPoint2: CGPoint(x: 39.26, y: 20.18))
        manHairCut3Layer.addLine(to: CGPoint(x: 23.72, y: 34.64))
        manHairCut3Layer.addLine(to: CGPoint(x: 19.45, y: 34.64))
        manHairCut3Layer.addCurve(to: CGPoint(x: 12.68, y: 27.1), controlPoint1: CGPoint(x: 18.29, y: 27.84), controlPoint2: CGPoint(x: 16.04, y: 25.33))
        manHairCut3Layer.addCurve(to: CGPoint(x: 12.68, y: 46), controlPoint1: CGPoint(x: 9.32, y: 28.87), controlPoint2: CGPoint(x: 9.32, y: 35.17))
        manHairCut3Layer.addLine(to: CGPoint(x: 8.7, y: 46))
        manHairCut3Layer.addCurve(to: CGPoint(x: 0.05, y: 22.91), controlPoint1: CGPoint(x: 2.45, y: 39.25), controlPoint2: CGPoint(x: -0.43, y: 31.56))
        manHairCut3Layer.addCurve(to: CGPoint(x: 8.15, y: 5.58), controlPoint1: CGPoint(x: 0.4, y: 16.68), controlPoint2: CGPoint(x: 3.23, y: 9.87))
        manHairCut3Layer.addCurve(to: CGPoint(x: 26.99, y: 0.1), controlPoint1: CGPoint(x: 13.47, y: 0.93), controlPoint2: CGPoint(x: 20.08, y: -0.4))
        manHairCut3Layer.close()
        let cut = CAShapeLayer()
        cut.path = manHairCut3Layer.cgPath
        cut.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cut.position = CGPoint(x: 107, y: 5)
        
        hairCut.layer.addSublayer(cut)
        return hairCut
    }
    
    class func createSpikyCutForCell() -> UIView {
        let spiky = UIView()
        
        let manHairCut2Layer = UIBezierPath()
        manHairCut2Layer.move(to: CGPoint(x: 29.61, y: 0.1))
        manHairCut2Layer.addCurve(to: CGPoint(x: 42.59, y: 0.59), controlPoint1: CGPoint(x: 35.74, y: 0.54), controlPoint2: CGPoint(x: 38.71, y: 1.77))
        manHairCut2Layer.addCurve(to: CGPoint(x: 48.9, y: 19.82), controlPoint1: CGPoint(x: 46.47, y: -0.59), controlPoint2: CGPoint(x: 54.92, y: 17.75))
        manHairCut2Layer.addCurve(to: CGPoint(x: 28.37, y: 21.27), controlPoint1: CGPoint(x: 46.18, y: 20.76), controlPoint2: CGPoint(x: 39.33, y: 21.24))
        manHairCut2Layer.addCurve(to: CGPoint(x: 22.14, y: 34.66), controlPoint1: CGPoint(x: 25.87, y: 30.2), controlPoint2: CGPoint(x: 23.8, y: 34.66))
        manHairCut2Layer.addCurve(to: CGPoint(x: 12.59, y: 27.14), controlPoint1: CGPoint(x: 21.26, y: 34.66), controlPoint2: CGPoint(x: 17.59, y: 24.48))
        manHairCut2Layer.addCurve(to: CGPoint(x: 12.59, y: 46), controlPoint1: CGPoint(x: 9.26, y: 28.91), controlPoint2: CGPoint(x: 9.26, y: 35.2))
        manHairCut2Layer.addLine(to: CGPoint(x: 8.64, y: 46))
        manHairCut2Layer.addCurve(to: CGPoint(x: 0.05, y: 22.96), controlPoint1: CGPoint(x: 2.44, y: 39.27), controlPoint2: CGPoint(x: -0.42, y: 31.59))
        manHairCut2Layer.addCurve(to: CGPoint(x: 8.09, y: 5.66), controlPoint1: CGPoint(x: 0.39, y: 16.74), controlPoint2: CGPoint(x: 3.2, y: 9.95))
        manHairCut2Layer.addCurve(to: CGPoint(x: 29.61, y: 0.1), controlPoint1: CGPoint(x: 13.37, y: 1.02), controlPoint2: CGPoint(x: 22.75, y: -0.41))
        manHairCut2Layer.close()
        let cut = CAShapeLayer()
        cut.path = manHairCut2Layer.cgPath
        cut.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cut.position = CGPoint(x: -3, y: -2)
        
        spiky.layer.addSublayer(cut)
        return spiky
    }
    
    class func createSpikyCut() -> UIView {
        let spiky = UIView()
        
        let manHairCut2Layer = UIBezierPath()
        manHairCut2Layer.move(to: CGPoint(x: 29.61, y: 0.1))
        manHairCut2Layer.addCurve(to: CGPoint(x: 42.59, y: 0.59), controlPoint1: CGPoint(x: 35.74, y: 0.54), controlPoint2: CGPoint(x: 38.71, y: 1.77))
        manHairCut2Layer.addCurve(to: CGPoint(x: 48.9, y: 19.82), controlPoint1: CGPoint(x: 46.47, y: -0.59), controlPoint2: CGPoint(x: 54.92, y: 17.75))
        manHairCut2Layer.addCurve(to: CGPoint(x: 28.37, y: 21.27), controlPoint1: CGPoint(x: 46.18, y: 20.76), controlPoint2: CGPoint(x: 39.33, y: 21.24))
        manHairCut2Layer.addCurve(to: CGPoint(x: 22.14, y: 34.66), controlPoint1: CGPoint(x: 25.87, y: 30.2), controlPoint2: CGPoint(x: 23.8, y: 34.66))
        manHairCut2Layer.addCurve(to: CGPoint(x: 12.59, y: 27.14), controlPoint1: CGPoint(x: 21.26, y: 34.66), controlPoint2: CGPoint(x: 17.59, y: 24.48))
        manHairCut2Layer.addCurve(to: CGPoint(x: 12.59, y: 46), controlPoint1: CGPoint(x: 9.26, y: 28.91), controlPoint2: CGPoint(x: 9.26, y: 35.2))
        manHairCut2Layer.addLine(to: CGPoint(x: 8.64, y: 46))
        manHairCut2Layer.addCurve(to: CGPoint(x: 0.05, y: 22.96), controlPoint1: CGPoint(x: 2.44, y: 39.27), controlPoint2: CGPoint(x: -0.42, y: 31.59))
        manHairCut2Layer.addCurve(to: CGPoint(x: 8.09, y: 5.66), controlPoint1: CGPoint(x: 0.39, y: 16.74), controlPoint2: CGPoint(x: 3.2, y: 9.95))
        manHairCut2Layer.addCurve(to: CGPoint(x: 29.61, y: 0.1), controlPoint1: CGPoint(x: 13.37, y: 1.02), controlPoint2: CGPoint(x: 22.75, y: -0.41))
        manHairCut2Layer.close()
        let cut = CAShapeLayer()
        cut.path = manHairCut2Layer.cgPath
        cut.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cut.position = CGPoint(x: 106, y: 5)
        
        spiky.layer.addSublayer(cut)
        return spiky
    }
    
    class func createSpiky1CutForCell() -> UIView {
        let spiky = UIView()
        
        let hairCut1Layer = UIBezierPath()
        hairCut1Layer.move(to: CGPoint(x: 27.22, y: 0.1))
        hairCut1Layer.addCurve(to: CGPoint(x: 53.65, y: 2.7), controlPoint1: CGPoint(x: 33.45, y: 0.55), controlPoint2: CGPoint(x: 48.3, y: 4.12))
        hairCut1Layer.addCurve(to: CGPoint(x: 49.67, y: 19.77), controlPoint1: CGPoint(x: 55.92, y: 2.1), controlPoint2: CGPoint(x: 55.79, y: 17.69))
        hairCut1Layer.addCurve(to: CGPoint(x: 28.82, y: 21.21), controlPoint1: CGPoint(x: 46.91, y: 20.71), controlPoint2: CGPoint(x: 39.96, y: 21.19))
        hairCut1Layer.addLine(to: CGPoint(x: 24.74, y: 34.64))
        hairCut1Layer.addLine(to: CGPoint(x: 21.04, y: 34.64))
        hairCut1Layer.addCurve(to: CGPoint(x: 12.79, y: 27.1), controlPoint1: CGPoint(x: 18.92, y: 27.84), controlPoint2: CGPoint(x: 16.17, y: 25.33))
        hairCut1Layer.addCurve(to: CGPoint(x: 12.79, y: 46), controlPoint1: CGPoint(x: 9.4, y: 28.87), controlPoint2: CGPoint(x: 9.4, y: 35.17))
        hairCut1Layer.addLine(to: CGPoint(x: 8.77, y: 46))
        hairCut1Layer.addCurve(to: CGPoint(x: 0.05, y: 22.91), controlPoint1: CGPoint(x: 2.48, y: 39.25), controlPoint2: CGPoint(x: -0.43, y: 31.56))
        hairCut1Layer.addCurve(to: CGPoint(x: 8.22, y: 5.58), controlPoint1: CGPoint(x: 0.4, y: 16.68), controlPoint2: CGPoint(x: 3.25, y: 9.87))
        hairCut1Layer.addCurve(to: CGPoint(x: 27.22, y: 0.1), controlPoint1: CGPoint(x: 13.58, y: 0.93), controlPoint2: CGPoint(x: 20.25, y: -0.4))
        hairCut1Layer.close()
        let cut = CAShapeLayer()
        cut.path = hairCut1Layer.cgPath
        cut.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cut.position = CGPoint(x: -3, y: -2)
        
        spiky.layer.addSublayer(cut)
        return spiky
    }
    
    class func createSpiky1Cut() -> UIView {
        let spiky = UIView()
        
        let hairCut1Layer = UIBezierPath()
        hairCut1Layer.move(to: CGPoint(x: 27.22, y: 0.1))
        hairCut1Layer.addCurve(to: CGPoint(x: 53.65, y: 2.7), controlPoint1: CGPoint(x: 33.45, y: 0.55), controlPoint2: CGPoint(x: 48.3, y: 4.12))
        hairCut1Layer.addCurve(to: CGPoint(x: 49.67, y: 19.77), controlPoint1: CGPoint(x: 55.92, y: 2.1), controlPoint2: CGPoint(x: 55.79, y: 17.69))
        hairCut1Layer.addCurve(to: CGPoint(x: 28.82, y: 21.21), controlPoint1: CGPoint(x: 46.91, y: 20.71), controlPoint2: CGPoint(x: 39.96, y: 21.19))
        hairCut1Layer.addLine(to: CGPoint(x: 24.74, y: 34.64))
        hairCut1Layer.addLine(to: CGPoint(x: 21.04, y: 34.64))
        hairCut1Layer.addCurve(to: CGPoint(x: 12.79, y: 27.1), controlPoint1: CGPoint(x: 18.92, y: 27.84), controlPoint2: CGPoint(x: 16.17, y: 25.33))
        hairCut1Layer.addCurve(to: CGPoint(x: 12.79, y: 46), controlPoint1: CGPoint(x: 9.4, y: 28.87), controlPoint2: CGPoint(x: 9.4, y: 35.17))
        hairCut1Layer.addLine(to: CGPoint(x: 8.77, y: 46))
        hairCut1Layer.addCurve(to: CGPoint(x: 0.05, y: 22.91), controlPoint1: CGPoint(x: 2.48, y: 39.25), controlPoint2: CGPoint(x: -0.43, y: 31.56))
        hairCut1Layer.addCurve(to: CGPoint(x: 8.22, y: 5.58), controlPoint1: CGPoint(x: 0.4, y: 16.68), controlPoint2: CGPoint(x: 3.25, y: 9.87))
        hairCut1Layer.addCurve(to: CGPoint(x: 27.22, y: 0.1), controlPoint1: CGPoint(x: 13.58, y: 0.93), controlPoint2: CGPoint(x: 20.25, y: -0.4))
        hairCut1Layer.close()
        let cut = CAShapeLayer()
        cut.path = hairCut1Layer.cgPath
        cut.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cut.position = CGPoint(x: 106, y: 5)
        
        spiky.layer.addSublayer(cut)
        return spiky
    }
    
    class func createHat() -> UIView {
        let hat = UIView()
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint(x: 0.43, y: 18.39))
        _2.addCurve(to: CGPoint(x: 18.2, y: 0.54), controlPoint1: CGPoint(x: -1.19, y: 13.87), controlPoint2: CGPoint(x: 1.15, y: 2.88))
        _2.addCurve(to: CGPoint(x: 43.92, y: 8.32), controlPoint1: CGPoint(x: 35.24, y: -1.81), controlPoint2: CGPoint(x: 39.88, y: 4))
        _2.addCurve(to: CGPoint(x: 52.52, y: 24.37), controlPoint1: CGPoint(x: 47.96, y: 12.64), controlPoint2: CGPoint(x: 51.74, y: 20.54))
        _2.addCurve(to: CGPoint(x: 53.7, y: 36.19), controlPoint1: CGPoint(x: 53.03, y: 26.93), controlPoint2: CGPoint(x: 53.43, y: 30.87))
        _2.addLine(to: CGPoint(x: 1.36, y: 36.52))
        _2.addCurve(to: CGPoint(x: 0.43, y: 18.39), controlPoint1: CGPoint(x: 1.82, y: 27.44), controlPoint2: CGPoint(x: 1.51, y: 21.4))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 17/255, green: 17/255, blue: 17/255, alpha: 1).cgColor
        _22.transform = CATransform3DMakeRotation(-15 * CGFloat.pi/180, 0, 0, 1)
        _22.position = CGPoint(x: 94.68, y: -5.09)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 1.25, y: 0.1))
        _1.addCurve(to: CGPoint(x: 29.78, y: 1.11), controlPoint1: CGPoint(x: 1.81, y: -0.39), controlPoint2: CGPoint(x: 16.15, y: 1.11))
        _1.addCurve(to: CGPoint(x: 56.2, y: 0.1), controlPoint1: CGPoint(x: 43.08, y: 1.12), controlPoint2: CGPoint(x: 55.7, y: -0.38))
        _1.addCurve(to: CGPoint(x: 57.67, y: 4.57), controlPoint1: CGPoint(x: 57.21, y: 1.07), controlPoint2: CGPoint(x: 57.59, y: 2.84))
        _1.addCurve(to: CGPoint(x: 56.68, y: 10.43), controlPoint1: CGPoint(x: 57.75, y: 6.3), controlPoint2: CGPoint(x: 57.58, y: 9.74))
        _1.addCurve(to: CGPoint(x: 30, y: 11.56), controlPoint1: CGPoint(x: 56.24, y: 10.77), controlPoint2: CGPoint(x: 43.9, y: 11.67))
        _1.addCurve(to: CGPoint(x: 1.25, y: 9.74), controlPoint1: CGPoint(x: 16.11, y: 11.44), controlPoint2: CGPoint(x: 1.83, y: 10.31))
        _1.addCurve(to: CGPoint(x: 0.01, y: 5.26), controlPoint1: CGPoint(x: 0.12, y: 8.62), controlPoint2: CGPoint(x: 0.08, y: 6.95))
        _1.addCurve(to: CGPoint(x: 1.25, y: 0.1), controlPoint1: CGPoint(x: -0.06, y: 3.58), controlPoint2: CGPoint(x: 0.14, y: 1.07))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        _11.transform = CATransform3DMakeRotation(-15 * CGFloat.pi/180, 0, 0, 1)
        _11.position = CGPoint(x: 101.76, y: 24.88)
        
        [_22, _11].forEach {hat.layer.addSublayer($0)}
        return hat
    }
    
    class func createScarf() -> UIView {
        let scarf = UIView()
        
        let scarfInLayer = UIBezierPath()
        scarfInLayer.move(to: CGPoint(x: 0.85, y: 1.21))
        scarfInLayer.addCurve(to: CGPoint(x: 9.66, y: 0.91), controlPoint1: CGPoint(x: 2.74, y: -0.53), controlPoint2: CGPoint(x: 5.98, y: -0.18))
        scarfInLayer.addCurve(to: CGPoint(x: 20.2, y: 4.89), controlPoint1: CGPoint(x: 14.36, y: 2.31), controlPoint2: CGPoint(x: 18.07, y: 3.55))
        scarfInLayer.addCurve(to: CGPoint(x: 29.13, y: 13.58), controlPoint1: CGPoint(x: 22.57, y: 6.38), controlPoint2: CGPoint(x: 28.12, y: 8.67))
        scarfInLayer.addCurve(to: CGPoint(x: 26.09, y: 20.6), controlPoint1: CGPoint(x: 29.37, y: 14.78), controlPoint2: CGPoint(x: 28.36, y: 17.12))
        scarfInLayer.addCurve(to: CGPoint(x: 8.41, y: 20.6), controlPoint1: CGPoint(x: 17.42, y: 22.1), controlPoint2: CGPoint(x: 11.52, y: 22.1))
        scarfInLayer.addCurve(to: CGPoint(x: 1.28, y: 8.63), controlPoint1: CGPoint(x: 5.3, y: 19.1), controlPoint2: CGPoint(x: 2.92, y: 15.11))
        scarfInLayer.addCurve(to: CGPoint(x: 0.85, y: 1.21), controlPoint1: CGPoint(x: -0.27, y: 4.84), controlPoint2: CGPoint(x: -0.41, y: 2.37))
        scarfInLayer.close()
        let iscarf = CAShapeLayer()
        iscarf.path = scarfInLayer.cgPath
        iscarf.fillColor = UIColor(red: 28/255, green: 42/255, blue: 103/255, alpha: 1).cgColor
        iscarf.position = CGPoint(x: 113.44, y: 58.73)
        
        let rightScarfLayer = UIBezierPath()
        rightScarfLayer.move(to: CGPoint(x: 12.54, y: 1.85))
        rightScarfLayer.addCurve(to: CGPoint(x: 20.4, y: 1.85), controlPoint1: CGPoint(x: 15.25, y: -2.08), controlPoint2: CGPoint(x: 18.04, y: 1.4))
        rightScarfLayer.addCurve(to: CGPoint(x: 27.1, y: 2.57), controlPoint1: CGPoint(x: 22.75, y: 2.31), controlPoint2: CGPoint(x: 25.43, y: 0.79))
        rightScarfLayer.addCurve(to: CGPoint(x: 27.09, y: 23.09), controlPoint1: CGPoint(x: 28.77, y: 4.34), controlPoint2: CGPoint(x: 27.1, y: 12.31))
        rightScarfLayer.addCurve(to: CGPoint(x: 30.23, y: 49.44), controlPoint1: CGPoint(x: 27.09, y: 33.88), controlPoint2: CGPoint(x: 33.31, y: 42.37))
        rightScarfLayer.addCurve(to: CGPoint(x: 15.39, y: 51.83), controlPoint1: CGPoint(x: 28.82, y: 52.66), controlPoint2: CGPoint(x: 20.28, y: 50.7))
        rightScarfLayer.addCurve(to: CGPoint(x: 1.67, y: 51.84), controlPoint1: CGPoint(x: 9.55, y: 53.18), controlPoint2: CGPoint(x: 4.76, y: 53.7))
        rightScarfLayer.addCurve(to: CGPoint(x: 3.14, y: 21.86), controlPoint1: CGPoint(x: -1.81, y: 49.74), controlPoint2: CGPoint(x: 0.89, y: 32.92))
        rightScarfLayer.addCurve(to: CGPoint(x: 12.54, y: 1.85), controlPoint1: CGPoint(x: 5.4, y: 10.81), controlPoint2: CGPoint(x: 9.83, y: 5.79))
        rightScarfLayer.close()
        let rscarf = CAShapeLayer()
        rscarf.path = rightScarfLayer.cgPath
        rscarf.fillColor = UIColor(red: 51/255, green: 67/255, blue: 141/255, alpha: 1).cgColor
        rscarf.transform = CATransform3DMakeRotation(371 * CGFloat.pi/180, 0, 0, 1)
        rscarf.position = CGPoint(x: 110, y: 90)
        
        let leftScarfLayer = UIBezierPath()
        leftScarfLayer.move(to: CGPoint(x: 11.78, y: 1.86))
        leftScarfLayer.addCurve(to: CGPoint(x: 19.64, y: 1.85), controlPoint1: CGPoint(x: 14.49, y: -2.08), controlPoint2: CGPoint(x: 17.28, y: 1.4))
        leftScarfLayer.addCurve(to: CGPoint(x: 26.34, y: 2.57), controlPoint1: CGPoint(x: 21.99, y: 2.31), controlPoint2: CGPoint(x: 24.67, y: 0.79))
        leftScarfLayer.addCurve(to: CGPoint(x: 26.33, y: 23.09), controlPoint1: CGPoint(x: 28.01, y: 4.34), controlPoint2: CGPoint(x: 26.33, y: 12.31))
        leftScarfLayer.addCurve(to: CGPoint(x: 29.85, y: 55.64), controlPoint1: CGPoint(x: 26.32, y: 33.88), controlPoint2: CGPoint(x: 32.93, y: 48.57))
        leftScarfLayer.addCurve(to: CGPoint(x: 15.12, y: 58.5), controlPoint1: CGPoint(x: 28.45, y: 58.86), controlPoint2: CGPoint(x: 20.01, y: 57.37))
        leftScarfLayer.addCurve(to: CGPoint(x: 2.04, y: 61.05), controlPoint1: CGPoint(x: 9.28, y: 59.86), controlPoint2: CGPoint(x: 5.13, y: 62.91))
        leftScarfLayer.addCurve(to: CGPoint(x: 2.38, y: 21.87), controlPoint1: CGPoint(x: -1.44, y: 58.95), controlPoint2: CGPoint(x: 0.12, y: 32.92))
        leftScarfLayer.addCurve(to: CGPoint(x: 11.78, y: 1.86), controlPoint1: CGPoint(x: 4.63, y: 10.81), controlPoint2: CGPoint(x: 9.07, y: 5.79))
        leftScarfLayer.close()
        let lscarf = CAShapeLayer()
        lscarf.path = leftScarfLayer.cgPath
        lscarf.fillColor = UIColor(red: 51/255, green: 67/255, blue: 141/255, alpha: 1).cgColor
        lscarf.transform = CATransform3DMakeRotation(15 * CGFloat.pi/180, 0, 0, 1)
        lscarf.position = CGPoint(x: 155, y: 90)
        lscarf.transform = CATransform3DConcat(lscarf.transform, CATransform3DMakeRotation(CGFloat(Double.pi),0.0,1.0,0.0))
        
        let neckLayer = UIBezierPath()
        neckLayer.move(to: CGPoint(x: 2.2, y: 0))
        neckLayer.addLine(to: CGPoint(x: 17.87, y: 11.45))
        neckLayer.addLine(to: CGPoint(x: 20.15, y: 33.51))
        neckLayer.addLine(to: CGPoint(x: 0, y: 33.51))
        neckLayer.addLine(to: CGPoint(x: 2.2, y: 0))
        neckLayer.close()
        let n = CAShapeLayer()
        n.path = neckLayer.cgPath
        n.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        n.position = CGPoint(x: 118.06, y: 54.31)
        
        let mainScarfLayer = UIBezierPath()
        mainScarfLayer.move(to: CGPoint(x: 13.37, y: 0.63))
        mainScarfLayer.addCurve(to: CGPoint(x: 26.16, y: 16.83), controlPoint1: CGPoint(x: 11.74, y: 5.74), controlPoint2: CGPoint(x: 13.74, y: 14))
        mainScarfLayer.addCurve(to: CGPoint(x: 45.82, y: 10.07), controlPoint1: CGPoint(x: 38.58, y: 19.65), controlPoint2: CGPoint(x: 41.03, y: 7.02))
        mainScarfLayer.addCurve(to: CGPoint(x: 46.23, y: 35.48), controlPoint1: CGPoint(x: 50.6, y: 13.13), controlPoint2: CGPoint(x: 52.81, y: 33.15))
        mainScarfLayer.addCurve(to: CGPoint(x: 25.79, y: 38.99), controlPoint1: CGPoint(x: 39.66, y: 37.82), controlPoint2: CGPoint(x: 37.13, y: 38.99))
        mainScarfLayer.addCurve(to: CGPoint(x: 2.52, y: 31.12), controlPoint1: CGPoint(x: 16.95, y: 38.99), controlPoint2: CGPoint(x: 7.67, y: 35.41))
        mainScarfLayer.addCurve(to: CGPoint(x: 13.37, y: 0.63), controlPoint1: CGPoint(x: -7.33, y: 22.92), controlPoint2: CGPoint(x: 14.99, y: -4.48))
        mainScarfLayer.close()
        let ms = CAShapeLayer()
        ms.path = mainScarfLayer.cgPath
        ms.fillColor = UIColor(red: 59/255, green: 77/255, blue: 157/255, alpha: 1).cgColor
        ms.position = CGPoint(x: 101.94, y: 59.31)
        
        let headLayer = UIBezierPath()
        headLayer.move(to: CGPoint(x: 3.1, y: 11.29))
        headLayer.addCurve(to: CGPoint(x: 44.14, y: 10.18), controlPoint1: CGPoint(x: 9.2, y: -2.21), controlPoint2: CGPoint(x: 34.99, y: -4.82))
        headLayer.addCurve(to: CGPoint(x: 19.15, y: 58.08), controlPoint1: CGPoint(x: 55.33, y: 28.53), controlPoint2: CGPoint(x: 55.33, y: 89.84))
        headLayer.addCurve(to: CGPoint(x: 3.1, y: 11.29), controlPoint1: CGPoint(x: -1.32, y: 40.11), controlPoint2: CGPoint(x: -2.99, y: 24.79))
        headLayer.close()
        let h = CAShapeLayer()
        h.path = headLayer.cgPath
        h.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        h.position = CGPoint(x: 109.55, y: 8)
        
        [iscarf, rscarf, lscarf, n, ms, h].forEach {scarf.layer.addSublayer($0)}
        return scarf
    }
    
    class func createGloves() -> UIView {
        let gloves = UIView()
        
        let leftGloveLayer = UIBezierPath()
        leftGloveLayer.move(to: CGPoint(x: 0.63, y: 2.47))
        leftGloveLayer.addLine(to: CGPoint(x: 14.77, y: 0))
        leftGloveLayer.addCurve(to: CGPoint(x: 16.06, y: 3.14), controlPoint1: CGPoint(x: 15.4, y: 1.42), controlPoint2: CGPoint(x: 15.83, y: 2.46))
        leftGloveLayer.addCurve(to: CGPoint(x: 27.58, y: 38.27), controlPoint1: CGPoint(x: 16.41, y: 4.16), controlPoint2: CGPoint(x: 33.58, y: 29.78))
        leftGloveLayer.addCurve(to: CGPoint(x: 10.41, y: 25.2), controlPoint1: CGPoint(x: 21.59, y: 46.76), controlPoint2: CGPoint(x: 12.93, y: 26.28))
        leftGloveLayer.addCurve(to: CGPoint(x: 0.99, y: 29.82), controlPoint1: CGPoint(x: 7.88, y: 24.12), controlPoint2: CGPoint(x: 3.61, y: 35.51))
        leftGloveLayer.addCurve(to: CGPoint(x: 1.51, y: 7.91), controlPoint1: CGPoint(x: -1.63, y: 24.12), controlPoint2: CGPoint(x: 1.8, y: 10.95))
        leftGloveLayer.addCurve(to: CGPoint(x: 0.63, y: 2.47), controlPoint1: CGPoint(x: 1.32, y: 5.88), controlPoint2: CGPoint(x: 1.02, y: 4.07))
        leftGloveLayer.close()
        let lg = CAShapeLayer()
        lg.path = leftGloveLayer.cgPath
        lg.fillColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1).cgColor
        lg.position = CGPoint(x: 195.45, y: 222)
        
        let rightGloveLayer = UIBezierPath()
        rightGloveLayer.move(to: CGPoint(x: 20.88, y: 0))
        rightGloveLayer.addLine(to: CGPoint(x: 35.13, y: 3.28))
        rightGloveLayer.addCurve(to: CGPoint(x: 34.51, y: 9.5), controlPoint1: CGPoint(x: 34.72, y: 5.3), controlPoint2: CGPoint(x: 34.51, y: 7.37))
        rightGloveLayer.addCurve(to: CGPoint(x: 37.27, y: 29.46), controlPoint1: CGPoint(x: 34.51, y: 12.69), controlPoint2: CGPoint(x: 40.36, y: 26.02))
        rightGloveLayer.addCurve(to: CGPoint(x: 26.06, y: 22.85), controlPoint1: CGPoint(x: 34.19, y: 32.9), controlPoint2: CGPoint(x: 30.17, y: 21.55))
        rightGloveLayer.addCurve(to: CGPoint(x: 0.31, y: 33.96), controlPoint1: CGPoint(x: 21.96, y: 24.14), controlPoint2: CGPoint(x: 3.42, y: 41.25))
        rightGloveLayer.addCurve(to: CGPoint(x: 19.29, y: 4.06), controlPoint1: CGPoint(x: -2.8, y: 26.67), controlPoint2: CGPoint(x: 18.2, y: 6.16))
        rightGloveLayer.addCurve(to: CGPoint(x: 20.88, y: 0), controlPoint1: CGPoint(x: 20.02, y: 2.67), controlPoint2: CGPoint(x: 20.55, y: 1.31))
        rightGloveLayer.close()
        let rg = CAShapeLayer()
        rg.path = rightGloveLayer.cgPath
        rg.fillColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1).cgColor
        rg.position = CGPoint(x: 23, y: 232.13)
        
        [lg, rg].forEach {gloves.layer.addSublayer($0)}
        return gloves
    }
    
    class func createShorts() -> UIView {
        let shorts = UIView()
        
        let leftShortLayer = UIBezierPath()
        leftShortLayer.move(to: CGPoint.zero)
        leftShortLayer.addLine(to: CGPoint(x: 60.75, y: 0))
        leftShortLayer.addCurve(to: CGPoint(x: 69.66, y: 122.85), controlPoint1: CGPoint(x: 67.56, y: 77.96), controlPoint2: CGPoint(x: 70.53, y: 118.91))
        leftShortLayer.addCurve(to: CGPoint(x: 40.29, y: 124.7), controlPoint1: CGPoint(x: 68.35, y: 128.76), controlPoint2: CGPoint(x: 41.47, y: 129.54))
        leftShortLayer.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 39.51, y: 121.48), controlPoint2: CGPoint(x: 26.08, y: 79.91))
        leftShortLayer.close()
        let lj = CAShapeLayer()
        lj.path = leftShortLayer.cgPath
        lj.fillColor = UIColor(red: 76/255, green: 95/255, blue: 176/255, alpha: 1).cgColor
        lj.position = CGPoint(x: 109.9, y: 257)
        
        let rightShortLayer = UIBezierPath()
        rightShortLayer.move(to: CGPoint(x: 1, y: 0))
        rightShortLayer.addLine(to: CGPoint(x: 54.34, y: 0))
        rightShortLayer.addCurve(to: CGPoint(x: 37.63, y: 124.84), controlPoint1: CGPoint(x: 44.31, y: 79.34), controlPoint2: CGPoint(x: 38.74, y: 120.96))
        rightShortLayer.addCurve(to: CGPoint(x: 6.12, y: 124.84), controlPoint1: CGPoint(x: 35.96, y: 130.67), controlPoint2: CGPoint(x: 6.12, y: 129.38))
        rightShortLayer.addCurve(to: CGPoint(x: 1, y: 0), controlPoint1: CGPoint(x: 6.12, y: 121.82), controlPoint2: CGPoint(x: 4.08, y: 80.21))
        rightShortLayer.close()
        let rj = CAShapeLayer()
        rj.path = rightShortLayer.cgPath
        rj.fillColor = UIColor(red: 98/255, green: 120/255, blue: 217/255, alpha: 1).cgColor
        rj.position = CGPoint(x: 90, y: 257)
        
        [lj, rj].forEach {shorts.layer.addSublayer($0)}
        return shorts
    }
    
    class func createJeans() -> UIView {
        let jeans = UIView()
        
        let leftJeansLayer = UIBezierPath()
        leftJeansLayer.move(to: CGPoint.zero)
        leftJeansLayer.addLine(to: CGPoint(x: 60.35, y: 0))
        leftJeansLayer.addCurve(to: CGPoint(x: 73.64, y: 206.06), controlPoint1: CGPoint(x: 69.57, y: 135.13), controlPoint2: CGPoint(x: 74, y: 203.82))
        leftJeansLayer.addCurve(to: CGPoint(x: 55.95, y: 206.77), controlPoint1: CGPoint(x: 73.11, y: 209.43), controlPoint2: CGPoint(x: 57.64, y: 210.11))
        leftJeansLayer.addCurve(to: CGPoint(x: 42.45, y: 134.25), controlPoint1: CGPoint(x: 54.26, y: 203.44), controlPoint2: CGPoint(x: 48.24, y: 154.89))
        leftJeansLayer.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 38.6, y: 120.49), controlPoint2: CGPoint(x: 24.45, y: 75.74))
        leftJeansLayer.close()
        let lj = CAShapeLayer()
        lj.path = leftJeansLayer.cgPath
        lj.fillColor = UIColor(red: 76/255, green: 95/255, blue: 176/255, alpha: 1).cgColor
        lj.position = CGPoint(x: 109.98, y: 257)
        
        let rightJeansLayer = UIBezierPath()
        rightJeansLayer.move(to: CGPoint.zero)
        rightJeansLayer.addLine(to: CGPoint(x: 53.69, y: 0))
        rightJeansLayer.addCurve(to: CGPoint(x: 35.53, y: 124.55), controlPoint1: CGPoint(x: 47.18, y: 50.24), controlPoint2: CGPoint(x: 41.13, y: 91.76))
        rightJeansLayer.addCurve(to: CGPoint(x: 17.22, y: 206.84), controlPoint1: CGPoint(x: 27.12, y: 173.74), controlPoint2: CGPoint(x: 17.99, y: 205.19))
        rightJeansLayer.addCurve(to: CGPoint(x: 1.19, y: 204.89), controlPoint1: CGPoint(x: 16.45, y: 208.48), controlPoint2: CGPoint(x: 1.19, y: 208.18))
        rightJeansLayer.addCurve(to: CGPoint(x: 5.63, y: 130.37), controlPoint1: CGPoint(x: 1.19, y: 201.6), controlPoint2: CGPoint(x: 5.63, y: 171.31))
        rightJeansLayer.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 5.63, y: 103.07), controlPoint2: CGPoint(x: 3.76, y: 59.62))
        rightJeansLayer.close()
        let rj = CAShapeLayer()
        rj.path = rightJeansLayer.cgPath
        rj.fillColor = UIColor(red: 98/255, green: 120/255, blue: 217/255, alpha: 1).cgColor
        rj.position = CGPoint(x: 90.5, y: 257)
        
        [lj, rj].forEach {jeans.layer.addSublayer($0)}
        return jeans
    }
    
    class func createBoots() -> UIView {
        let boots = UIView()
        
        let rightBootLayer = UIBezierPath()
        rightBootLayer.move(to: CGPoint(x: 3.7, y: 0.52))
        rightBootLayer.addCurve(to: CGPoint(x: 20.54, y: 2.41), controlPoint1: CGPoint(x: 4.64, y: -0.99), controlPoint2: CGPoint(x: 19.27, y: 1.14))
        rightBootLayer.addCurve(to: CGPoint(x: 20.04, y: 9.76), controlPoint1: CGPoint(x: 21.81, y: 3.67), controlPoint2: CGPoint(x: 19.54, y: 7.38))
        rightBootLayer.addCurve(to: CGPoint(x: 36.12, y: 20.81), controlPoint1: CGPoint(x: 20.54, y: 12.15), controlPoint2: CGPoint(x: 29.51, y: 19.84))
        rightBootLayer.addCurve(to: CGPoint(x: 50.6, y: 21.6), controlPoint1: CGPoint(x: 42.74, y: 21.78), controlPoint2: CGPoint(x: 45.41, y: 19.28))
        rightBootLayer.addCurve(to: CGPoint(x: 55.21, y: 31.18), controlPoint1: CGPoint(x: 54.06, y: 23.15), controlPoint2: CGPoint(x: 55.6, y: 26.35))
        rightBootLayer.addCurve(to: CGPoint(x: 43.97, y: 34.31), controlPoint1: CGPoint(x: 54.06, y: 32.77), controlPoint2: CGPoint(x: 50.31, y: 33.81))
        rightBootLayer.addCurve(to: CGPoint(x: 18.35, y: 34.31), controlPoint1: CGPoint(x: 37.64, y: 34.81), controlPoint2: CGPoint(x: 29.1, y: 34.81))
        rightBootLayer.addCurve(to: CGPoint(x: 16.45, y: 33.04), controlPoint1: CGPoint(x: 17.63, y: 33.46), controlPoint2: CGPoint(x: 17, y: 33.04))
        rightBootLayer.addCurve(to: CGPoint(x: 14.58, y: 34.31), controlPoint1: CGPoint(x: 15.91, y: 33.04), controlPoint2: CGPoint(x: 15.28, y: 33.46))
        rightBootLayer.addCurve(to: CGPoint(x: 0.15, y: 34.31), controlPoint1: CGPoint(x: 5.51, y: 35.11), controlPoint2: CGPoint(x: 0.7, y: 35.11))
        rightBootLayer.addCurve(to: CGPoint(x: 2.96, y: 10.66), controlPoint1: CGPoint(x: -0.4, y: 33.51), controlPoint2: CGPoint(x: 0.54, y: 25.63))
        rightBootLayer.addCurve(to: CGPoint(x: 3.7, y: 0.52), controlPoint1: CGPoint(x: 2.83, y: 4.91), controlPoint2: CGPoint(x: 3.07, y: 1.53))
        rightBootLayer.close()
        let rb = CAShapeLayer()
        rb.path = rightBootLayer.cgPath
        rb.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        rb.position = CGPoint(x: 87.5, y: 461)
        
        let leftBootLayer = UIBezierPath()
        leftBootLayer.move(to: CGPoint(x: 0.25, y: 1.04))
        leftBootLayer.addCurve(to: CGPoint(x: 19.07, y: 1.04), controlPoint1: CGPoint(x: 1.19, y: -0.47), controlPoint2: CGPoint(x: 17.8, y: -0.22))
        leftBootLayer.addCurve(to: CGPoint(x: 20.14, y: 8.82), controlPoint1: CGPoint(x: 20.34, y: 2.31), controlPoint2: CGPoint(x: 19.64, y: 6.44))
        leftBootLayer.addCurve(to: CGPoint(x: 36.22, y: 19.87), controlPoint1: CGPoint(x: 20.64, y: 11.2), controlPoint2: CGPoint(x: 29.61, y: 18.89))
        leftBootLayer.addCurve(to: CGPoint(x: 50.7, y: 20.66), controlPoint1: CGPoint(x: 42.84, y: 20.84), controlPoint2: CGPoint(x: 45.51, y: 18.33))
        leftBootLayer.addCurve(to: CGPoint(x: 55.32, y: 30.24), controlPoint1: CGPoint(x: 54.16, y: 22.21), controlPoint2: CGPoint(x: 55.7, y: 25.4))
        leftBootLayer.addCurve(to: CGPoint(x: 44.08, y: 33.36), controlPoint1: CGPoint(x: 54.16, y: 31.82), controlPoint2: CGPoint(x: 50.41, y: 32.86))
        leftBootLayer.addCurve(to: CGPoint(x: 18.46, y: 33.36), controlPoint1: CGPoint(x: 37.74, y: 33.86), controlPoint2: CGPoint(x: 29.2, y: 33.86))
        leftBootLayer.addCurve(to: CGPoint(x: 16.55, y: 32.09), controlPoint1: CGPoint(x: 17.73, y: 32.52), controlPoint2: CGPoint(x: 17.1, y: 32.09))
        leftBootLayer.addCurve(to: CGPoint(x: 14.68, y: 33.36), controlPoint1: CGPoint(x: 16.01, y: 32.09), controlPoint2: CGPoint(x: 15.38, y: 32.52))
        leftBootLayer.addCurve(to: CGPoint(x: 0.25, y: 33.36), controlPoint1: CGPoint(x: 5.61, y: 34.16), controlPoint2: CGPoint(x: 0.8, y: 34.16))
        leftBootLayer.addCurve(to: CGPoint(x: 1.85, y: 9.68), controlPoint1: CGPoint(x: -0.29, y: 32.57), controlPoint2: CGPoint(x: 0.24, y: 24.67))
        leftBootLayer.addCurve(to: CGPoint(x: 0.25, y: 1.04), controlPoint1: CGPoint(x: 0.16, y: 4.93), controlPoint2: CGPoint(x: -0.37, y: 2.05))
        leftBootLayer.close()
        let lb = CAShapeLayer()
        lb.path = leftBootLayer.cgPath
        lb.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        lb.position = CGPoint(x: 165.29, y: 461.88)
        
        [rb, lb].forEach {boots.layer.addSublayer($0)}
        return boots
    }
    
    class func createSneakers() -> UIView {
        let sneakers = UIView()
        
        let rightSneakerLayer = UIBezierPath()
        rightSneakerLayer.move(to: CGPoint(x: 3.56, y: 0))
        rightSneakerLayer.addCurve(to: CGPoint(x: 12.45, y: 6.61), controlPoint1: CGPoint(x: 5.08, y: 0.05), controlPoint2: CGPoint(x: 4.79, y: 6.61))
        rightSneakerLayer.addCurve(to: CGPoint(x: 19.27, y: 1.07), controlPoint1: CGPoint(x: 18.16, y: 6.61), controlPoint2: CGPoint(x: 16.03, y: 1.37))
        rightSneakerLayer.addCurve(to: CGPoint(x: 33.89, y: 9.6), controlPoint1: CGPoint(x: 24.3, y: 0.6), controlPoint2: CGPoint(x: 23.14, y: 5.68))
        rightSneakerLayer.addCurve(to: CGPoint(x: 46.55, y: 14.83), controlPoint1: CGPoint(x: 44.63, y: 13.52), controlPoint2: CGPoint(x: 41.77, y: 12.92))
        rightSneakerLayer.addCurve(to: CGPoint(x: 53.37, y: 24.43), controlPoint1: CGPoint(x: 51.33, y: 16.74), controlPoint2: CGPoint(x: 55.87, y: 17.86))
        rightSneakerLayer.addCurve(to: CGPoint(x: 45.07, y: 28.56), controlPoint1: CGPoint(x: 52.55, y: 26.57), controlPoint2: CGPoint(x: 48.78, y: 28.56))
        rightSneakerLayer.addCurve(to: CGPoint(x: 4.45, y: 28.56), controlPoint1: CGPoint(x: 31.49, y: 28.56), controlPoint2: CGPoint(x: 14.23, y: 28.73))
        rightSneakerLayer.addCurve(to: CGPoint(x: 0.8, y: 27.38), controlPoint1: CGPoint(x: 1.79, y: 28.52), controlPoint2: CGPoint(x: 0.93, y: 27.48))
        rightSneakerLayer.addCurve(to: CGPoint(x: 0.22, y: 22.88), controlPoint1: CGPoint(x: 0.66, y: 27.26), controlPoint2: CGPoint(x: -0.13, y: 26.41))
        rightSneakerLayer.addCurve(to: CGPoint(x: 0.8, y: 18.79), controlPoint1: CGPoint(x: 0.3, y: 22.1), controlPoint2: CGPoint(x: 0.49, y: 20.74))
        rightSneakerLayer.addCurve(to: CGPoint(x: 0.03, y: 12.71), controlPoint1: CGPoint(x: 0.32, y: 15.78), controlPoint2: CGPoint(x: 0.06, y: 13.76))
        rightSneakerLayer.addCurve(to: CGPoint(x: 3.56, y: 0), controlPoint1: CGPoint(x: -0.12, y: 7.93), controlPoint2: CGPoint(x: 0.15, y: -0.12))
        rightSneakerLayer.close()
        let rs = CAShapeLayer()
        rs.path = rightSneakerLayer.cgPath
        rs.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        rs.position = CGPoint(x: 87.5, y: 468)
        
        let leftSneakerLayer = UIBezierPath()
        leftSneakerLayer.move(to: CGPoint(x: 2.36, y: 0))
        leftSneakerLayer.addCurve(to: CGPoint(x: 11.07, y: 6.6), controlPoint1: CGPoint(x: 3.89, y: 0.05), controlPoint2: CGPoint(x: 3.42, y: 6.6))
        leftSneakerLayer.addCurve(to: CGPoint(x: 18.43, y: 1.19), controlPoint1: CGPoint(x: 16.79, y: 6.6), controlPoint2: CGPoint(x: 15.19, y: 1.5))
        leftSneakerLayer.addCurve(to: CGPoint(x: 34.2, y: 9.6), controlPoint1: CGPoint(x: 23.46, y: 0.72), controlPoint2: CGPoint(x: 23.45, y: 5.68))
        leftSneakerLayer.addCurve(to: CGPoint(x: 46.86, y: 14.83), controlPoint1: CGPoint(x: 44.94, y: 13.52), controlPoint2: CGPoint(x: 42.08, y: 12.92))
        leftSneakerLayer.addCurve(to: CGPoint(x: 53.92, y: 24.43), controlPoint1: CGPoint(x: 51.64, y: 16.74), controlPoint2: CGPoint(x: 56.43, y: 17.86))
        leftSneakerLayer.addCurve(to: CGPoint(x: 45.37, y: 28.56), controlPoint1: CGPoint(x: 53.1, y: 26.57), controlPoint2: CGPoint(x: 49.09, y: 28.56))
        leftSneakerLayer.addCurve(to: CGPoint(x: 4.76, y: 28.56), controlPoint1: CGPoint(x: 31.8, y: 28.56), controlPoint2: CGPoint(x: 14.54, y: 28.73))
        leftSneakerLayer.addCurve(to: CGPoint(x: 1.11, y: 27.38), controlPoint1: CGPoint(x: 2.1, y: 28.52), controlPoint2: CGPoint(x: 1.24, y: 27.49))
        leftSneakerLayer.addCurve(to: CGPoint(x: 0.53, y: 22.88), controlPoint1: CGPoint(x: 0.97, y: 27.27), controlPoint2: CGPoint(x: 0.18, y: 26.41))
        leftSneakerLayer.addCurve(to: CGPoint(x: 1.11, y: 18.79), controlPoint1: CGPoint(x: 0.61, y: 22.1), controlPoint2: CGPoint(x: 0.8, y: 20.74))
        leftSneakerLayer.addCurve(to: CGPoint(x: 0.34, y: 12.71), controlPoint1: CGPoint(x: 0.63, y: 15.78), controlPoint2: CGPoint(x: 0.37, y: 13.76))
        leftSneakerLayer.addCurve(to: CGPoint(x: 2.36, y: 0), controlPoint1: CGPoint(x: 0.19, y: 7.94), controlPoint2: CGPoint(x: -1.05, y: -0.12))
        leftSneakerLayer.close()
        let ls = CAShapeLayer()
        ls.path = leftSneakerLayer.cgPath
        ls.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        ls.position = CGPoint(x: 165.43, y: 468)
        
        [rs, ls].forEach {sneakers.layer.addSublayer($0)}
        return sneakers
    }
    
    class func createShoes() -> UIView {
        let shoes = UIView()
        
        let rightShoeLayer = UIBezierPath()
        rightShoeLayer.move(to: CGPoint(x: 0.02, y: 3.35))
        rightShoeLayer.addCurve(to: CGPoint(x: 3, y: 0.04), controlPoint1: CGPoint(x: 0.02, y: 2.79), controlPoint2: CGPoint(x: -0.4, y: -0.07))
        rightShoeLayer.addCurve(to: CGPoint(x: 10.19, y: 4.05), controlPoint1: CGPoint(x: 4.52, y: 0.1), controlPoint2: CGPoint(x: 6.27, y: 4.05))
        rightShoeLayer.addCurve(to: CGPoint(x: 17.2, y: 0.04), controlPoint1: CGPoint(x: 12.7, y: 4.05), controlPoint2: CGPoint(x: 13.98, y: 0.35))
        rightShoeLayer.addCurve(to: CGPoint(x: 50.54, y: 9.21), controlPoint1: CGPoint(x: 24.81, y: -0.67), controlPoint2: CGPoint(x: 27.27, y: 7.45))
        rightShoeLayer.addCurve(to: CGPoint(x: 51.56, y: 19.48), controlPoint1: CGPoint(x: 55.38, y: 9.58), controlPoint2: CGPoint(x: 55.94, y: 19.48))
        rightShoeLayer.addCurve(to: CGPoint(x: 0.79, y: 19.48), controlPoint1: CGPoint(x: 47.17, y: 19.48), controlPoint2: CGPoint(x: 1.56, y: 20.13))
        rightShoeLayer.addCurve(to: CGPoint(x: 0.02, y: 3.35), controlPoint1: CGPoint(x: 0.02, y: 18.83), controlPoint2: CGPoint(x: 0.02, y: 5.87))
        rightShoeLayer.close()
        let rs = CAShapeLayer()
        rs.path = rightShoeLayer.cgPath
        rs.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        rs.position = CGPoint(x: 87, y: 473)
        
        let leftShoeLayer = UIBezierPath()
        leftShoeLayer.move(to: CGPoint(x: 0.02, y: 3.39))
        leftShoeLayer.addCurve(to: CGPoint(x: 3, y: 0.09), controlPoint1: CGPoint(x: 0.02, y: 2.84), controlPoint2: CGPoint(x: -0.4, y: -0.03))
        leftShoeLayer.addCurve(to: CGPoint(x: 10.56, y: 4.19), controlPoint1: CGPoint(x: 4.52, y: 0.14), controlPoint2: CGPoint(x: 6.65, y: 4.19))
        leftShoeLayer.addCurve(to: CGPoint(x: 17.77, y: 0.04), controlPoint1: CGPoint(x: 13.08, y: 4.19), controlPoint2: CGPoint(x: 14.55, y: 0.35))
        leftShoeLayer.addCurve(to: CGPoint(x: 50.54, y: 9.26), controlPoint1: CGPoint(x: 25.39, y: -0.67), controlPoint2: CGPoint(x: 27.27, y: 7.49))
        leftShoeLayer.addCurve(to: CGPoint(x: 51.56, y: 19.52), controlPoint1: CGPoint(x: 55.38, y: 9.62), controlPoint2: CGPoint(x: 55.94, y: 19.52))
        leftShoeLayer.addCurve(to: CGPoint(x: 0.79, y: 19.52), controlPoint1: CGPoint(x: 47.17, y: 19.52), controlPoint2: CGPoint(x: 1.56, y: 20.17))
        leftShoeLayer.addCurve(to: CGPoint(x: 0.02, y: 3.39), controlPoint1: CGPoint(x: 0.02, y: 18.88), controlPoint2: CGPoint(x: 0.02, y: 5.92))
        leftShoeLayer.close()
        let ls = CAShapeLayer()
        ls.path = leftShoeLayer.cgPath
        ls.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        ls.position = CGPoint(x: 166.18, y: 473)
        
        [rs, ls].forEach {shoes.layer.addSublayer($0)}
        return shoes
    }
    
    class func createSlippers() -> UIView {
        let slippers = UIView()
        
        let rectangle2 = UIBezierPath()
        rectangle2.move(to: CGPoint(x: 0.79, y: 0.57))
        rectangle2.addCurve(to: CGPoint(x: 51.28, y: 0.57), controlPoint1: CGPoint(x: 2.05, y: -0.04), controlPoint2: CGPoint(x: 49.79, y: -0.33))
        rectangle2.addCurve(to: CGPoint(x: 52.07, y: 1.99), controlPoint1: CGPoint(x: 51.98, y: 1), controlPoint2: CGPoint(x: 52.03, y: 1.47))
        rectangle2.addCurve(to: CGPoint(x: 51.07, y: 3.57), controlPoint1: CGPoint(x: 52.11, y: 2.57), controlPoint2: CGPoint(x: 51.86, y: 3.19))
        rectangle2.addCurve(to: CGPoint(x: 0.79, y: 3.57), controlPoint1: CGPoint(x: 49.58, y: 4.31), controlPoint2: CGPoint(x: 1.64, y: 3.88))
        rectangle2.addCurve(to: CGPoint(x: 0.79, y: 0.57), controlPoint1: CGPoint(x: -0.05, y: 3.26), controlPoint2: CGPoint(x: -0.46, y: 1.19))
        rectangle2.close()
        let rec2 = CAShapeLayer()
        rec2.path = rectangle2.cgPath
        rec2.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        rec2.position = CGPoint(x: 88.88, y: 488.55)
        
        let rectangle3 = UIBezierPath()
        rectangle3.move(to: CGPoint(x: 5.01, y: 0))
        rectangle3.addCurve(to: CGPoint(x: 17.94, y: 3.59), controlPoint1: CGPoint(x: 6.25, y: 0), controlPoint2: CGPoint(x: 18.49, y: 3.77))
        rectangle3.addCurve(to: CGPoint(x: 16.3, y: 6.09), controlPoint1: CGPoint(x: 17.39, y: 3.41), controlPoint2: CGPoint(x: 16.93, y: 4.57))
        rectangle3.addCurve(to: CGPoint(x: 15.74, y: 9.41), controlPoint1: CGPoint(x: 15.87, y: 7.09), controlPoint2: CGPoint(x: 15.69, y: 8.2))
        rectangle3.addLine(to: CGPoint(x: 0, y: 9.43))
        rectangle3.addCurve(to: CGPoint(x: 1.33, y: 3.71), controlPoint1: CGPoint(x: 0.15, y: 6.99), controlPoint2: CGPoint(x: 0.6, y: 5.08))
        rectangle3.addCurve(to: CGPoint(x: 5.01, y: 0), controlPoint1: CGPoint(x: 2.43, y: 1.64), controlPoint2: CGPoint(x: 3.77, y: 0))
        rectangle3.close()
        let rec3 = CAShapeLayer()
        rec3.path = rectangle3.cgPath
        rec3.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        rec3.position = CGPoint(x: 107.14, y: 479.52)
        
        let rectangle5 = UIBezierPath()
        rectangle5.move(to: CGPoint(x: 0.79, y: 0.57))
        rectangle5.addCurve(to: CGPoint(x: 51.03, y: 0.57), controlPoint1: CGPoint(x: 2.05, y: -0.04), controlPoint2: CGPoint(x: 49.54, y: -0.33))
        rectangle5.addCurve(to: CGPoint(x: 51.82, y: 1.99), controlPoint1: CGPoint(x: 51.74, y: 1), controlPoint2: CGPoint(x: 51.78, y: 1.47))
        rectangle5.addCurve(to: CGPoint(x: 50.85, y: 3.57), controlPoint1: CGPoint(x: 51.87, y: 2.57), controlPoint2: CGPoint(x: 51.64, y: 3.19))
        rectangle5.addCurve(to: CGPoint(x: 0.79, y: 3.57), controlPoint1: CGPoint(x: 49.36, y: 4.31), controlPoint2: CGPoint(x: 1.64, y: 3.88))
        rectangle5.addCurve(to: CGPoint(x: 0.79, y: 0.57), controlPoint1: CGPoint(x: -0.05, y: 3.26), controlPoint2: CGPoint(x: -0.46, y: 1.19))
        rectangle5.close()
        let rec5 = CAShapeLayer()
        rec5.path = rectangle5.cgPath
        rec5.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        rec5.position = CGPoint(x: 168.84, y: 488.55)
        
        let rectangle6 = UIBezierPath()
        rectangle6.move(to: CGPoint(x: 5.01, y: 0))
        rectangle6.addCurve(to: CGPoint(x: 17.94, y: 3.59), controlPoint1: CGPoint(x: 6.25, y: 0), controlPoint2: CGPoint(x: 18.49, y: 3.77))
        rectangle6.addCurve(to: CGPoint(x: 16.3, y: 6.09), controlPoint1: CGPoint(x: 17.39, y: 3.41), controlPoint2: CGPoint(x: 16.93, y: 4.57))
        rectangle6.addCurve(to: CGPoint(x: 15.74, y: 9.41), controlPoint1: CGPoint(x: 15.87, y: 7.09), controlPoint2: CGPoint(x: 15.69, y: 8.2))
        rectangle6.addLine(to: CGPoint(x: 0, y: 9.43))
        rectangle6.addCurve(to: CGPoint(x: 1.33, y: 3.71), controlPoint1: CGPoint(x: 0.15, y: 6.99), controlPoint2: CGPoint(x: 0.6, y: 5.08))
        rectangle6.addCurve(to: CGPoint(x: 5.01, y: 0), controlPoint1: CGPoint(x: 2.43, y: 1.64), controlPoint2: CGPoint(x: 3.77, y: 0))
        rectangle6.close()
        let rec6 = CAShapeLayer()
        rec6.path = rectangle3.cgPath
        rec6.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        rec6.position = CGPoint(x: 185.24, y: 479.52)
        
        [rec2, rec3, rec5, rec6].forEach {slippers.layer.addSublayer($0)}
        return slippers
    }
    
    class func createSlates() -> UIView {
        let slates = UIView()
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint(x: 0.79, y: 0.57))
        _2.addCurve(to: CGPoint(x: 51.13, y: 0.57), controlPoint1: CGPoint(x: 2.05, y: -0.04), controlPoint2: CGPoint(x: 49.64, y: -0.33))
        _2.addCurve(to: CGPoint(x: 51.91, y: 1.99), controlPoint1: CGPoint(x: 51.84, y: 1), controlPoint2: CGPoint(x: 51.87, y: 1.47))
        _2.addCurve(to: CGPoint(x: 51.13, y: 3.57), controlPoint1: CGPoint(x: 51.96, y: 2.57), controlPoint2: CGPoint(x: 51.92, y: 3.19))
        _2.addCurve(to: CGPoint(x: 0.79, y: 3.57), controlPoint1: CGPoint(x: 49.64, y: 4.31), controlPoint2: CGPoint(x: 1.64, y: 3.88))
        _2.addCurve(to: CGPoint(x: 0.79, y: 0.57), controlPoint1: CGPoint(x: -0.05, y: 3.26), controlPoint2: CGPoint(x: -0.46, y: 1.19))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        _22.position = CGPoint(x: 88.88, y: 488.55)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 20.34, y: 0))
        _1.addCurve(to: CGPoint(x: 24.05, y: 1.47), controlPoint1: CGPoint(x: 21.32, y: 0), controlPoint2: CGPoint(x: 22.55, y: 0.49))
        _1.addCurve(to: CGPoint(x: 12.57, y: 2.87), controlPoint1: CGPoint(x: 19.71, y: 1.31), controlPoint2: CGPoint(x: 15.88, y: 1.77))
        _1.addCurve(to: CGPoint(x: 4.87, y: 6.92), controlPoint1: CGPoint(x: 9.26, y: 3.96), controlPoint2: CGPoint(x: 6.69, y: 5.32))
        _1.addLine(to: CGPoint(x: 0, y: 6.92))
        _1.addCurve(to: CGPoint(x: 10.25, y: 1.75), controlPoint1: CGPoint(x: 4.25, y: 4.36), controlPoint2: CGPoint(x: 7.66, y: 2.64))
        _1.addCurve(to: CGPoint(x: 20.34, y: 0), controlPoint1: CGPoint(x: 14.14, y: 0.42), controlPoint2: CGPoint(x: 18.88, y: 0))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        _11.position = CGPoint(x: 101.87, y: 482)
        
        let _3 = UIBezierPath()
        _3.move(to: CGPoint(x: 0.79, y: 0.57))
        _3.addCurve(to: CGPoint(x: 51.22, y: 0.57), controlPoint1: CGPoint(x: 2.05, y: -0.04), controlPoint2: CGPoint(x: 49.73, y: -0.33))
        _3.addCurve(to: CGPoint(x: 51.84, y: 1.99), controlPoint1: CGPoint(x: 51.93, y: 1), controlPoint2: CGPoint(x: 51.8, y: 1.47))
        _3.addCurve(to: CGPoint(x: 50.83, y: 3.57), controlPoint1: CGPoint(x: 51.89, y: 2.57), controlPoint2: CGPoint(x: 51.62, y: 3.19))
        _3.addCurve(to: CGPoint(x: 0.79, y: 3.57), controlPoint1: CGPoint(x: 49.34, y: 4.31), controlPoint2: CGPoint(x: 1.64, y: 3.88))
        _3.addCurve(to: CGPoint(x: 0.79, y: 0.57), controlPoint1: CGPoint(x: -0.05, y: 3.26), controlPoint2: CGPoint(x: -0.46, y: 1.19))
        _3.close()
        let _33 = CAShapeLayer()
        _33.path = _3.cgPath
        _33.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        _33.position = CGPoint(x: 168.85, y: 488.55)
        
        let _4 = UIBezierPath()
        _4.move(to: CGPoint(x: 20.34, y: 0))
        _4.addCurve(to: CGPoint(x: 24.05, y: 1.47), controlPoint1: CGPoint(x: 21.32, y: 0), controlPoint2: CGPoint(x: 22.55, y: 0.49))
        _4.addCurve(to: CGPoint(x: 12.57, y: 2.87), controlPoint1: CGPoint(x: 19.71, y: 1.31), controlPoint2: CGPoint(x: 15.88, y: 1.77))
        _4.addCurve(to: CGPoint(x: 4.87, y: 6.92), controlPoint1: CGPoint(x: 9.26, y: 3.96), controlPoint2: CGPoint(x: 6.69, y: 5.32))
        _4.addLine(to: CGPoint(x: 0, y: 6.92))
        _4.addCurve(to: CGPoint(x: 10.25, y: 1.75), controlPoint1: CGPoint(x: 4.25, y: 4.36), controlPoint2: CGPoint(x: 7.66, y: 2.64))
        _4.addCurve(to: CGPoint(x: 20.34, y: 0), controlPoint1: CGPoint(x: 14.14, y: 0.42), controlPoint2: CGPoint(x: 18.88, y: 0))
        _4.close()
        let _44 = CAShapeLayer()
        _44.path = _4.cgPath
        _44.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        _44.position = CGPoint(x: 179.87, y: 482)
        
        [_22, _11, _33, _44].forEach {slates.layer.addSublayer($0)}
        return slates
    }
    
    class func createWindBreaker() -> UIView {
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
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 63, y: 1.64), controlPoint1: CGPoint(x: 44.1, y: 5.94), controlPoint2: CGPoint(x: 60.98, y: 1.1))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 88.45, y: 5.94), controlPoint1: CGPoint(x: 65.01, y: 2.18), controlPoint2: CGPoint(x: 82.59, y: 5.94))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 101.58, y: 1.17), controlPoint1: CGPoint(x: 99.89, y: 5.94), controlPoint2: CGPoint(x: 101.96, y: 3.49))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 120.42, y: 5.94), controlPoint1: CGPoint(x: 101.2, y: -1.15), controlPoint2: CGPoint(x: 100.66, y: -0.26))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 166.5, y: 137.72), controlPoint1: CGPoint(x: 140.19, y: 12.13), controlPoint2: CGPoint(x: 166.1, y: 131.01))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 152.09, y: 141.69), controlPoint1: CGPoint(x: 166.9, y: 144.43), controlPoint2: CGPoint(x: 155.78, y: 147.63))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 136.26, y: 96), controlPoint1: CGPoint(x: 150.69, y: 139.43), controlPoint2: CGPoint(x: 142.63, y: 112.61))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 123.46, y: 66.99), controlPoint1: CGPoint(x: 129.89, y: 79.38), controlPoint2: CGPoint(x: 121.31, y: 49.7))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 126.37, y: 108.53), controlPoint1: CGPoint(x: 125.61, y: 84.29), controlPoint2: CGPoint(x: 125.61, y: 95.12))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 128.56, y: 193.67), controlPoint1: CGPoint(x: 127.14, y: 121.94), controlPoint2: CGPoint(x: 129.78, y: 191.62))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 47.32, y: 193.67), controlPoint1: CGPoint(x: 127.35, y: 195.71), controlPoint2: CGPoint(x: 48.03, y: 195.5))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 47.32, y: 91.42), controlPoint1: CGPoint(x: 46.62, y: 191.83), controlPoint2: CGPoint(x: 47.82, y: 113.78))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 40.25, y: 73.6), controlPoint1: CGPoint(x: 46.44, y: 51.67), controlPoint2: CGPoint(x: 43.68, y: 63.09))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 14.81, y: 155.4), controlPoint1: CGPoint(x: 29.18, y: 107.5), controlPoint2: CGPoint(x: 18.15, y: 151.15))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 0, y: 148.9), controlPoint1: CGPoint(x: 11.47, y: 159.64), controlPoint2: CGPoint(x: 0.03, y: 156.32))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 14.81, y: 68.65), controlPoint1: CGPoint(x: -0.03, y: 141.34), controlPoint2: CGPoint(x: 5.52, y: 103.29))
        windBreakerBodyLayer.addCurve(to: CGPoint(x: 38.2, y: 11.16), controlPoint1: CGPoint(x: 22.34, y: 40.54), controlPoint2: CGPoint(x: 33.26, y: 15.52))
        windBreakerBodyLayer.close()
        let body = CAShapeLayer()
        body.path = windBreakerBodyLayer.cgPath
        body.fillColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1).cgColor
        body.position = CGPoint(x: 43.3, y: 81.71)
        
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
    
    
    class func createJacket() -> UIView {
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
        jacketBodyLayer.move(to: CGPoint(x: 41.42, y: 14.14))
        jacketBodyLayer.addCurve(to: CGPoint(x: 62, y: 6.14), controlPoint1: CGPoint(x: 47.29, y: 8.05), controlPoint2: CGPoint(x: 57.26, y: 3.91))
        jacketBodyLayer.addCurve(to: CGPoint(x: 88.72, y: 10.85), controlPoint1: CGPoint(x: 66.74, y: 8.37), controlPoint2: CGPoint(x: 77.45, y: 10.85))
        jacketBodyLayer.addCurve(to: CGPoint(x: 100.42, y: 0.79), controlPoint1: CGPoint(x: 99.99, y: 10.85), controlPoint2: CGPoint(x: 103.54, y: 4.94))
        jacketBodyLayer.addCurve(to: CGPoint(x: 114.15, y: 13.83), controlPoint1: CGPoint(x: 97.3, y: -3.36), controlPoint2: CGPoint(x: 122.52, y: 9.98))
        jacketBodyLayer.addCurve(to: CGPoint(x: 167.92, y: 152.54), controlPoint1: CGPoint(x: 167.76, y: 27.82), controlPoint2: CGPoint(x: 167.92, y: 147.27))
        jacketBodyLayer.addCurve(to: CGPoint(x: 152.23, y: 155.72), controlPoint1: CGPoint(x: 167.92, y: 157.81), controlPoint2: CGPoint(x: 155.92, y: 161.68))
        jacketBodyLayer.addCurve(to: CGPoint(x: 137.75, y: 116.63), controlPoint1: CGPoint(x: 150.83, y: 153.46), controlPoint2: CGPoint(x: 142.45, y: 135.37))
        jacketBodyLayer.addCurve(to: CGPoint(x: 135.95, y: 121.29), controlPoint1: CGPoint(x: 136.64, y: 112.22), controlPoint2: CGPoint(x: 128.39, y: 69.96))
        jacketBodyLayer.addCurve(to: CGPoint(x: 132.39, y: 203.37), controlPoint1: CGPoint(x: 143.51, y: 172.63), controlPoint2: CGPoint(x: 133.61, y: 201.32))
        jacketBodyLayer.addCurve(to: CGPoint(x: 45.33, y: 203.37), controlPoint1: CGPoint(x: 131.18, y: 205.43), controlPoint2: CGPoint(x: 46.45, y: 204.23))
        jacketBodyLayer.addCurve(to: CGPoint(x: 40.24, y: 124.33), controlPoint1: CGPoint(x: 44.9, y: 203.04), controlPoint2: CGPoint(x: 40.24, y: 146.74))
        jacketBodyLayer.addCurve(to: CGPoint(x: 39.16, y: 100.99), controlPoint1: CGPoint(x: 40.24, y: 87.73), controlPoint2: CGPoint(x: 42.59, y: 90.46))
        jacketBodyLayer.addCurve(to: CGPoint(x: 14.81, y: 169.53), controlPoint1: CGPoint(x: 28.1, y: 134.96), controlPoint2: CGPoint(x: 18.14, y: 165.28))
        jacketBodyLayer.addCurve(to: CGPoint(x: 0, y: 161.67), controlPoint1: CGPoint(x: 11.47, y: 173.79), controlPoint2: CGPoint(x: 0.03, y: 169.11))
        jacketBodyLayer.addCurve(to: CGPoint(x: 41.42, y: 14.14), controlPoint1: CGPoint(x: -0.05, y: 147.94), controlPoint2: CGPoint(x: 2.93, y: 46.96))
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
    
    
    class func createLongsleeve() -> UIView {
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
        manLongsleeveBody.addCurve(to: CGPoint(x: 167.49, y: 138.44), controlPoint1: CGPoint(x: 142.3, y: 28.64), controlPoint2: CGPoint(x: 166.72, y: 135.78))
        manLongsleeveBody.addCurve(to: CGPoint(x: 153.68, y: 144), controlPoint1: CGPoint(x: 168.26, y: 141.1), controlPoint2: CGPoint(x: 154.85, y: 146.59))
        manLongsleeveBody.addCurve(to: CGPoint(x: 121.94, y: 58.55), controlPoint1: CGPoint(x: 152.91, y: 142.28), controlPoint2: CGPoint(x: 142.32, y: 113.8))
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
    
    class func createHoodie() -> UIView {
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
//        co.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
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
//        ci.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
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
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 167.91, y: 138.61), controlPoint1: CGPoint(x: 148.71, y: 23.43), controlPoint2: CGPoint(x: 167.91, y: 134.43))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 152.21, y: 142.89), controlPoint1: CGPoint(x: 167.91, y: 142.79), controlPoint2: CGPoint(x: 157.47, y: 150.41))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 137.95, y: 110.19), controlPoint1: CGPoint(x: 150.71, y: 140.73), controlPoint2: CGPoint(x: 144.98, y: 127.82))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 132.97, y: 95.56), controlPoint1: CGPoint(x: 136.22, y: 105.84), controlPoint2: CGPoint(x: 134.98, y: 100.97))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 130.37, y: 103.77), controlPoint1: CGPoint(x: 129.28, y: 85.59), controlPoint2: CGPoint(x: 124.63, y: 51.12))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 128.58, y: 177.64), controlPoint1: CGPoint(x: 136.11, y: 156.42), controlPoint2: CGPoint(x: 129.8, y: 175.58))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 46.92, y: 177.64), controlPoint1: CGPoint(x: 127.37, y: 179.69), controlPoint2: CGPoint(x: 48.04, y: 178.5))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 38.29, y: 108.92), controlPoint1: CGPoint(x: 45.8, y: 176.78), controlPoint2: CGPoint(x: 37.63, y: 130.52))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 36.04, y: 95.56), controlPoint1: CGPoint(x: 38.96, y: 87.32), controlPoint2: CGPoint(x: 39.47, y: 85.03))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 15.74, y: 153.63), controlPoint1: CGPoint(x: 24.98, y: 129.54), controlPoint2: CGPoint(x: 19.08, y: 149.37))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 0, y: 148.33), controlPoint1: CGPoint(x: 12.4, y: 157.88), controlPoint2: CGPoint(x: 0.03, y: 155.77))
        manHoodieBodyLayer.addCurve(to: CGPoint(x: 41.25, y: 8.58), controlPoint1: CGPoint(x: -0.05, y: 134.6), controlPoint2: CGPoint(x: 11.81, y: 33.63))
        manHoodieBodyLayer.close()
        let body = CAShapeLayer()
        body.path = manHoodieBodyLayer.cgPath
//        body.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        body.fillColor = UIColor(red: 255/255, green: 211/255, blue: 78/255, alpha: 1).cgColor
        body.position = CGPoint(x: 43, y: 83.6)
        
        [co, ci, hn, hp, body].forEach {hoodie.layer.addSublayer($0)}
        return hoodie
    }
    
    class func createSweatshirt() -> UIView {
        let sweat = UIView()
        
        let manSweatShirtLayer = UIBezierPath()
        manSweatShirtLayer.move(to: CGPoint(x: 41.27, y: 8.95))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 70.79, y: 0.64), controlPoint1: CGPoint(x: 51.5, y: 0.26), controlPoint2: CGPoint(x: 70.79, y: -1.06))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 89.62, y: 8.95), controlPoint1: CGPoint(x: 70.79, y: 1.6), controlPoint2: CGPoint(x: 79.27, y: 8.95))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 100.37, y: 1.1), controlPoint1: CGPoint(x: 99.97, y: 8.95), controlPoint2: CGPoint(x: 100.37, y: 2.07))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 123.88, y: 7.71), controlPoint1: CGPoint(x: 100.37, y: -1.56), controlPoint2: CGPoint(x: 117.49, y: 3.58))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 168, y: 138.87), controlPoint1: CGPoint(x: 148.79, y: 23.78), controlPoint2: CGPoint(x: 168, y: 134.7))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 152.3, y: 143.15), controlPoint1: CGPoint(x: 168, y: 143.04), controlPoint2: CGPoint(x: 157.56, y: 150.66))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 138.03, y: 110.47), controlPoint1: CGPoint(x: 150.79, y: 140.99), controlPoint2: CGPoint(x: 145.05, y: 128.08))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 133.04, y: 95.86), controlPoint1: CGPoint(x: 136.29, y: 106.12), controlPoint2: CGPoint(x: 135.05, y: 101.26))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 130.44, y: 104.05), controlPoint1: CGPoint(x: 129.35, y: 85.89), controlPoint2: CGPoint(x: 124.7, y: 51.44))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 128.65, y: 177.87), controlPoint1: CGPoint(x: 136.19, y: 156.66), controlPoint2: CGPoint(x: 129.87, y: 175.81))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 46.94, y: 177.87), controlPoint1: CGPoint(x: 127.44, y: 179.92), controlPoint2: CGPoint(x: 48.06, y: 178.72))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 38.31, y: 109.2), controlPoint1: CGPoint(x: 45.82, y: 177.01), controlPoint2: CGPoint(x: 37.65, y: 130.79))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 36.06, y: 95.86), controlPoint1: CGPoint(x: 38.98, y: 87.62), controlPoint2: CGPoint(x: 39.49, y: 85.33))
        manSweatShirtLayer.addCurve(to: CGPoint(x: 15.74, y: 153.87), controlPoint1: CGPoint(x: 24.99, y: 129.8), controlPoint2: CGPoint(x: 19.08, y: 149.62))
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
    
    class func createTshirt() -> UIView {
        let tshirt = UIView()
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint(x: 0.95, y: 0))
        _2.addCurve(to: CGPoint(x: 4.46, y: 0.68), controlPoint1: CGPoint(x: 2.09, y: 0), controlPoint2: CGPoint(x: 3.26, y: 0.23))
        _2.addLine(to: CGPoint(x: 0.63, y: 1.11))
        _2.addCurve(to: CGPoint(x: 0.95, y: 0), controlPoint1: CGPoint(x: -0.3, y: 0.37), controlPoint2: CGPoint(x: -0.2, y: 0))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _22.position = CGPoint(x: 109.23, y: 83.39)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 0, y: 0.71))
        _1.addCurve(to: CGPoint(x: 2.58, y: 0.01), controlPoint1: CGPoint(x: 0.89, y: 0.18), controlPoint2: CGPoint(x: 1.75, y: -0.05))
        _1.addCurve(to: CGPoint(x: 2.43, y: 1.06), controlPoint1: CGPoint(x: 3.42, y: 0.08), controlPoint2: CGPoint(x: 3.37, y: 0.42))
        _1.addCurve(to: CGPoint(x: 1.34, y: 0.89), controlPoint1: CGPoint(x: 2, y: 0.99), controlPoint2: CGPoint(x: 1.64, y: 0.93))
        _1.addCurve(to: CGPoint(x: 0, y: 0.71), controlPoint1: CGPoint(x: 1.04, y: 0.84), controlPoint2: CGPoint(x: 0.6, y: 0.78))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _11.position = CGPoint(x: 144.7, y: 83.26)
        
        let _3 = UIBezierPath()
        _3.move(to: CGPoint(x: 3.05, y: 0.36))
        _3.addLine(to: CGPoint(x: 2.37, y: 3.22))
        _3.addCurve(to: CGPoint(x: 0.01, y: 0.44), controlPoint1: CGPoint(x: 0.67, y: 1.93), controlPoint2: CGPoint(x: -0.12, y: 1))
        _3.addCurve(to: CGPoint(x: 3.05, y: 0.36), controlPoint1: CGPoint(x: 0.15, y: -0.12), controlPoint2: CGPoint(x: 1.16, y: -0.15))
        _3.close()
        let _33 = CAShapeLayer()
        _33.path = _3.cgPath
        _33.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _33.position = CGPoint(x: 62, y: 146.17)
        
        let _4 = UIBezierPath()
        _4.move(to: CGPoint(x: 1.2, y: 0))
        _4.addCurve(to: CGPoint(x: 2.96, y: 3.7), controlPoint1: CGPoint(x: 2.65, y: 1.62), controlPoint2: CGPoint(x: 3.24, y: 2.85))
        _4.addCurve(to: CGPoint(x: 0, y: 4.02), controlPoint1: CGPoint(x: 2.68, y: 4.54), controlPoint2: CGPoint(x: 1.69, y: 4.65))
        _4.addLine(to: CGPoint(x: 1.2, y: 0))
        _4.close()
        let _44 = CAShapeLayer()
        _44.path = _4.cgPath
        _44.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _44.position = CGPoint(x: 81.25, y: 153.8)
        
        let _5 = UIBezierPath()
        _5.move(to: CGPoint(x: 2.2, y: 0))
        _5.addLine(to: CGPoint(x: 2.92, y: 2.13))
        _5.addCurve(to: CGPoint(x: 0.02, y: 3.03), controlPoint1: CGPoint(x: 1.13, y: 3.17), controlPoint2: CGPoint(x: 0.17, y: 3.47))
        _5.addCurve(to: CGPoint(x: 2.2, y: 0), controlPoint1: CGPoint(x: -0.13, y: 2.59), controlPoint2: CGPoint(x: 0.6, y: 1.58))
        _5.close()
        let _55 = CAShapeLayer()
        _55.path = _5.cgPath
        _55.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _55.position = CGPoint(x: 170.77, y: 155.37)
        
        let _6 = UIBezierPath()
        _6.move(to: CGPoint(x: 0, y: 0.42))
        _6.addCurve(to: CGPoint(x: 2.9, y: 0.29), controlPoint1: CGPoint(x: 1.84, y: -0.09), controlPoint2: CGPoint(x: 2.81, y: -0.14))
        _6.addCurve(to: CGPoint(x: 0.53, y: 2.4), controlPoint1: CGPoint(x: 3, y: 0.72), controlPoint2: CGPoint(x: 2.21, y: 1.43))
        _6.addLine(to: CGPoint(x: 0, y: 0.42))
        _6.close()
        let _66 = CAShapeLayer()
        _66.path = _6.cgPath
        _66.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _66.position = CGPoint(x: 189.3, y: 147.04)
        
        let manTShirtBodyLayer = UIBezierPath()
        manTShirtBodyLayer.move(to: CGPoint(x: 0.01, y: 63.22))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 19.9, y: 10.69), controlPoint1: CGPoint(x: -0.37, y: 65.16), controlPoint2: CGPoint(x: 7.32, y: 27.23))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 48.23, y: 0), controlPoint1: CGPoint(x: 28.08, y: 0.48), controlPoint2: CGPoint(x: 47.32, y: 0))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 66.69, y: 15.18), controlPoint1: CGPoint(x: 49.14, y: 0), controlPoint2: CGPoint(x: 51.45, y: 15.18))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 85.28, y: 0), controlPoint1: CGPoint(x: 76.85, y: 15.18), controlPoint2: CGPoint(x: 83.05, y: 10.12))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 107.66, y: 10.06), controlPoint1: CGPoint(x: 95.04, y: 0.91), controlPoint2: CGPoint(x: 102.5, y: 4.26))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 130.19, y: 63.89), controlPoint1: CGPoint(x: 120.71, y: 27.65), controlPoint2: CGPoint(x: 130.64, y: 65.5))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 108.84, y: 75.1), controlPoint1: CGPoint(x: 129.74, y: 62.28), controlPoint2: CGPoint(x: 107.63, y: 72.7))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 103.19, y: 58.55), controlPoint1: CGPoint(x: 108.6, y: 74.62), controlPoint2: CGPoint(x: 106.71, y: 69.11))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 105.96, y: 110.36), controlPoint1: CGPoint(x: 103.34, y: 69.89), controlPoint2: CGPoint(x: 104.26, y: 87.15))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 109.72, y: 179.14), controlPoint1: CGPoint(x: 108.51, y: 145.16), controlPoint2: CGPoint(x: 110.93, y: 177.08))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 28.24, y: 179.14), controlPoint1: CGPoint(x: 108.51, y: 181.19), controlPoint2: CGPoint(x: 29.36, y: 180))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 30.49, y: 110.36), controlPoint1: CGPoint(x: 27.12, y: 178.28), controlPoint2: CGPoint(x: 30.49, y: 132.14))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 26.97, y: 59.71), controlPoint1: CGPoint(x: 30.49, y: 95.84), controlPoint2: CGPoint(x: 29.32, y: 78.95))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 22.21, y: 74.11), controlPoint1: CGPoint(x: 23.75, y: 69.44), controlPoint2: CGPoint(x: 22.16, y: 74.24))
        manTShirtBodyLayer.addCurve(to: CGPoint(x: 0.01, y: 63.22), controlPoint1: CGPoint(x: 22.73, y: 72.54), controlPoint2: CGPoint(x: 0.39, y: 61.27))
        manTShirtBodyLayer.close()
        let body = CAShapeLayer()
        body.path = manTShirtBodyLayer.cgPath
        body.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        body.position = CGPoint(x: 62, y: 83.39)
        
        [_22, _11, _33, _44, _55, _66, body].forEach {tshirt.layer.addSublayer($0)}
        return tshirt
    }
    
    class func createSkeleton() -> UIView {
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
        leftArmLayer.move(to: CGPoint.zero)
        leftArmLayer.addLine(to: CGPoint(x: 98.37, y: 8.03))
        leftArmLayer.addCurve(to: CGPoint(x: 134.32, y: 8.44), controlPoint1: CGPoint(x: 118.92, y: 4.95), controlPoint2: CGPoint(x: 130.9, y: 5.08))
        leftArmLayer.addCurve(to: CGPoint(x: 115.43, y: 20.06), controlPoint1: CGPoint(x: 139.44, y: 13.47), controlPoint2: CGPoint(x: 119.37, y: 14.95))
        leftArmLayer.addCurve(to: CGPoint(x: 119.07, y: 29.63), controlPoint1: CGPoint(x: 113.31, y: 22.81), controlPoint2: CGPoint(x: 121.37, y: 26.89))
        leftArmLayer.addCurve(to: CGPoint(x: 98.38, y: 21.93), controlPoint1: CGPoint(x: 117.54, y: 31.46), controlPoint2: CGPoint(x: 110.64, y: 28.9))
        leftArmLayer.addLine(to: CGPoint(x: 7.12, y: 19.6))
        leftArmLayer.addLine(to: CGPoint.zero)
        leftArmLayer.close()
        let la = CAShapeLayer()
        la.path = leftArmLayer.cgPath
        la.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        la.position = CGPoint(x: 184.65, y: 129.11)
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
    
    class func createHead() -> UIView {
        let head = UIView()
        
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
        
        head.layer.addSublayer(hn)
        return head
    }
    
    class func createBald() -> UIView {
        let bald = UIView()
        
        let headLayer = UIBezierPath()
        headLayer.move(to: CGPoint(x: 3.1, y: 11.29))
        headLayer.addCurve(to: CGPoint(x: 44.14, y: 10.18), controlPoint1: CGPoint(x: 9.2, y: -2.21), controlPoint2: CGPoint(x: 34.99, y: -4.82))
        headLayer.addCurve(to: CGPoint(x: 19.15, y: 58.08), controlPoint1: CGPoint(x: 55.33, y: 28.53), controlPoint2: CGPoint(x: 55.33, y: 89.84))
        headLayer.addCurve(to: CGPoint(x: 3.1, y: 11.29), controlPoint1: CGPoint(x: -1.32, y: 40.11), controlPoint2: CGPoint(x: -2.99, y: 24.79))
        headLayer.close()
        let h = CAShapeLayer()
        h.path = headLayer.cgPath
        h.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        h.position = CGPoint(x: 109.55, y: 8)
        
        bald.layer.addSublayer(h)
        return bald
    }
}




