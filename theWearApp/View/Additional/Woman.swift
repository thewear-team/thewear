//
//  Woman.swift
//  theWearPersons
//
//  Created by Max Reshetov on 10/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class Woman: NSObject {
    

    static let hairstyles = ["bob","bun","long","brush","wavy","kosy"]
    
    class func createMask() -> UIView {
        let mask = UIView()
        
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 9.39, y: 2.17))
        bezierPath.addCurve(to: CGPoint(x: 21.99, y: 0.31), controlPoint1: CGPoint(x: 14.14, y: 1.2), controlPoint2: CGPoint(x: 18.34, y: 0.58))
        bezierPath.addCurve(to: CGPoint(x: 33.26, y: 0.03), controlPoint1: CGPoint(x: 25.63, y: 0.04), controlPoint2: CGPoint(x: 29.39, y: -0.05))
        bezierPath.addCurve(to: CGPoint(x: 32.95, y: 11.01), controlPoint1: CGPoint(x: 33.26, y: 5.15), controlPoint2: CGPoint(x: 33.16, y: 8.81))
        bezierPath.addCurve(to: CGPoint(x: 30.69, y: 21.45), controlPoint1: CGPoint(x: 32.63, y: 14.32), controlPoint2: CGPoint(x: 32.1, y: 18.43))
        bezierPath.addCurve(to: CGPoint(x: 16.38, y: 29.81), controlPoint1: CGPoint(x: 29.28, y: 24.48), controlPoint2: CGPoint(x: 25.17, y: 32.25))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 14.19), controlPoint1: CGPoint(x: 7.59, y: 27.36), controlPoint2: CGPoint(x: 1.06, y: 18.09))
        bezierPath.addCurve(to: CGPoint(x: 7.59, y: 10.31), controlPoint1: CGPoint(x: 2.72, y: 13.49), controlPoint2: CGPoint(x: 6.48, y: 13.22))
        bezierPath.addCurve(to: CGPoint(x: 9.39, y: 2.17), controlPoint1: CGPoint(x: 8.33, y: 8.36), controlPoint2: CGPoint(x: 8.92, y: 5.65))
        bezierPath.close()
        let bp = CAShapeLayer()
        bp.path = bezierPath.cgPath
        bp.fillColor = UIColor.white.cgColor
        bp.position = CGPoint(x: 127, y: 46.18)
        
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 9.53, y: 2.17))
        bezier2Path.addCurve(to: CGPoint(x: 22.32, y: 0.31), controlPoint1: CGPoint(x: 14.36, y: 1.2), controlPoint2: CGPoint(x: 18.62, y: 0.58))
        bezier2Path.addCurve(to: CGPoint(x: 33.76, y: 0.03), controlPoint1: CGPoint(x: 26.01, y: 0.04), controlPoint2: CGPoint(x: 29.83, y: -0.05))
        bezier2Path.addCurve(to: CGPoint(x: 33.44, y: 11.01), controlPoint1: CGPoint(x: 33.76, y: 5.15), controlPoint2: CGPoint(x: 33.65, y: 8.81))
        bezier2Path.addCurve(to: CGPoint(x: 31.15, y: 21.45), controlPoint1: CGPoint(x: 33.12, y: 14.32), controlPoint2: CGPoint(x: 32.58, y: 18.43))
        bezier2Path.addCurve(to: CGPoint(x: 16.62, y: 29.81), controlPoint1: CGPoint(x: 29.72, y: 24.48), controlPoint2: CGPoint(x: 25.54, y: 32.25))
        bezier2Path.addCurve(to: CGPoint(x: 0, y: 14.19), controlPoint1: CGPoint(x: 7.7, y: 27.36), controlPoint2: CGPoint(x: 1.08, y: 18.09))
        bezier2Path.addCurve(to: CGPoint(x: 7.7, y: 10.31), controlPoint1: CGPoint(x: 2.76, y: 13.49), controlPoint2: CGPoint(x: 6.57, y: 13.22))
        bezier2Path.addCurve(to: CGPoint(x: 9.53, y: 2.17), controlPoint1: CGPoint(x: 8.45, y: 8.36), controlPoint2: CGPoint(x: 9.06, y: 5.65))
        bezier2Path.close()
        let bp2 = CAShapeLayer()
        bp2.path = bezier2Path.cgPath
        bp2.lineWidth = 1
        bp2.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp2.fillColor = UIColor.clear.cgColor
        bp2.position = CGPoint(x: 126.5, y: 46.18)

        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 7.5, y: 10.71))
        bezier3Path.addCurve(to: CGPoint(x: 3.69, y: 5.59), controlPoint1: CGPoint(x: 6.33, y: 9.35), controlPoint2: CGPoint(x: 5.06, y: 7.64))
        bezier3Path.addCurve(to: CGPoint(x: -1, y: -0.72), controlPoint1: CGPoint(x: 2.32, y: 3.54), controlPoint2: CGPoint(x: 1.09, y: 1.67))
        bezier3Path.close()
        let bp3 = CAShapeLayer()
        bp3.path = bezier3Path.cgPath
        bp3.lineWidth = 1
        bp3.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp3.fillColor = UIColor.clear.cgColor
        bp3.position = CGPoint(x: 128.53, y: 37.64)

        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 4.14, y: 12.75))
        bezier4Path.addCurve(to: CGPoint(x: 1.58, y: 5.8), controlPoint1: CGPoint(x: 2.9, y: 9.65), controlPoint2: CGPoint(x: 2.05, y: 7.33))
        bezier4Path.addCurve(to: CGPoint(x: -1, y: -1.75), controlPoint1: CGPoint(x: 0.88, y: 3.51), controlPoint2: CGPoint(x: 0.15, y: 0.84))
        let bp4 = CAShapeLayer()
        bp4.path = bezier4Path.cgPath
        bp4.lineWidth = 1
        bp4.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp4.fillColor = UIColor.clear.cgColor
        bp4.position = CGPoint(x: 122.45, y: 47.96)

        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 0, y: 0.3))
        bezier5Path.addCurve(to: CGPoint(x: 13.65, y: 1.86), controlPoint1: CGPoint(x: 4.97, y: 1.34), controlPoint2: CGPoint(x: 9.52, y: 1.86))
        bezier5Path.addCurve(to: CGPoint(x: 24.6, y: 0), controlPoint1: CGPoint(x: 17.77, y: 1.86), controlPoint2: CGPoint(x: 21.43, y: 1.24))
        let bp5 = CAShapeLayer()
        bp5.path = bezier4Path.cgPath
        bp5.lineWidth = 1
        bp5.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp5.fillColor = UIColor.clear.cgColor
        bp5.position = CGPoint(x: 135.22, y: 54.33)
        
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: 0, y: 0))
        bezier6Path.addCurve(to: CGPoint(x: 12.45, y: 8.07), controlPoint1: CGPoint(x: 4.5, y: 4.44), controlPoint2: CGPoint(x: 8.64, y: 7.13))
        bezier6Path.addCurve(to: CGPoint(x: 24.9, y: 9.6), controlPoint1: CGPoint(x: 16.25, y: 9), controlPoint2: CGPoint(x: 20.4, y: 9.51))
        let bp6 = CAShapeLayer()
        bp6.path = bezier6Path.cgPath
        bp6.lineWidth = 1
        bp6.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp6.fillColor = UIColor.clear.cgColor
        bp6.position = CGPoint(x: 131.92, y: 59.26)
        
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: 0, y: 0.3))
        bezier7Path.addCurve(to: CGPoint(x: 13.65, y: 1.86), controlPoint1: CGPoint(x: 4.97, y: 1.34), controlPoint2: CGPoint(x: 9.52, y: 1.86))
        bezier7Path.addCurve(to: CGPoint(x: 25.6, y: 0), controlPoint1: CGPoint(x: 17.77, y: 1.86), controlPoint2: CGPoint(x: 21.43, y: 1.24))
        bezier7Path.addCurve(to: CGPoint(x: 24.6, y: 0), controlPoint1: CGPoint(x: 17.77, y: 1.86), controlPoint2: CGPoint(x: 21.43, y: 1.24))
        let bp7 = CAShapeLayer()
        bp7.path = bezier7Path.cgPath
        bp7.lineWidth = 1
        bp7.strokeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1).cgColor
        bp7.fillColor = UIColor.clear.cgColor
        bp7.position = CGPoint(x: 134.21, y: 54.34)
        
        [bp, bp2, bp3, bp4, bp6, bp7].forEach {mask.layer.addSublayer($0)}

        return mask
    }

    class func createKosyHairCutForCell() -> UIView {
        let hairCut = UIView()
        
        let kosyRight = UIBezierPath()
        kosyRight.move(to: CGPoint(x: 4.63, y: 0.44))
        kosyRight.addCurve(to: CGPoint(x: 34.12, y: 12.82), controlPoint1: CGPoint(x: 8.98, y: -0.51), controlPoint2: CGPoint(x: 27.43, y: -1.2))
        kosyRight.addCurve(to: CGPoint(x: 34.12, y: 41.72), controlPoint1: CGPoint(x: 40.81, y: 26.83), controlPoint2: CGPoint(x: 34.86, y: 36.14))
        kosyRight.addCurve(to: CGPoint(x: 29.55, y: 71.76), controlPoint1: CGPoint(x: 33.75, y: 44.57), controlPoint2: CGPoint(x: 30.09, y: 67.32))
        kosyRight.addCurve(to: CGPoint(x: 26.39, y: 80.6), controlPoint1: CGPoint(x: 29.02, y: 76.2), controlPoint2: CGPoint(x: 26.39, y: 78.96))
        kosyRight.addCurve(to: CGPoint(x: 26.93, y: 85.66), controlPoint1: CGPoint(x: 26.39, y: 82.23), controlPoint2: CGPoint(x: 27.39, y: 82.23))
        kosyRight.addCurve(to: CGPoint(x: 24.91, y: 95.49), controlPoint1: CGPoint(x: 26.47, y: 89.09), controlPoint2: CGPoint(x: 24.91, y: 92.2))
        kosyRight.addCurve(to: CGPoint(x: 21.95, y: 117.71), controlPoint1: CGPoint(x: 30.85, y: 100.86), controlPoint2: CGPoint(x: 25.42, y: 117.71))
        kosyRight.addCurve(to: CGPoint(x: 18.92, y: 94.57), controlPoint1: CGPoint(x: 18.48, y: 117.71), controlPoint2: CGPoint(x: 11.41, y: 105.03))
        kosyRight.addCurve(to: CGPoint(x: 16.07, y: 85.66), controlPoint1: CGPoint(x: 18.47, y: 90.89), controlPoint2: CGPoint(x: 16.87, y: 89.01))
        kosyRight.addCurve(to: CGPoint(x: 16.53, y: 78.54), controlPoint1: CGPoint(x: 15.54, y: 83.43), controlPoint2: CGPoint(x: 16.81, y: 81.25))
        kosyRight.addCurve(to: CGPoint(x: 14.02, y: 71.48), controlPoint1: CGPoint(x: 16.26, y: 75.83), controlPoint2: CGPoint(x: 14.69, y: 74.87))
        kosyRight.addCurve(to: CGPoint(x: 14.02, y: 64.21), controlPoint1: CGPoint(x: 13.57, y: 69.22), controlPoint2: CGPoint(x: 13.57, y: 66.8))
        kosyRight.addCurve(to: CGPoint(x: 6.98, y: 64.21), controlPoint1: CGPoint(x: 11.34, y: 64.47), controlPoint2: CGPoint(x: 8.99, y: 64.47))
        kosyRight.addCurve(to: CGPoint(x: 4.63, y: 0.44), controlPoint1: CGPoint(x: -4.09, y: 62.74), controlPoint2: CGPoint(x: 0.28, y: 1.4))
        kosyRight.close()
        let cr = CAShapeLayer()
        cr.path = kosyRight.cgPath
        cr.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cr.position = CGPoint(x: 14.07, y: -4.16)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25.63, y: 68.3))
        headNeck.addLine(to: CGPoint(x: 10.36, y: 66.66))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 0.14, y: -0.39)
        
        let kosyLeft = UIBezierPath()
        kosyLeft.move(to: CGPoint(x: 3.97, y: 13.57))
        kosyLeft.addCurve(to: CGPoint(x: 24.25, y: 0.42), controlPoint1: CGPoint(x: 8.84, y: 3.08), controlPoint2: CGPoint(x: 18.9, y: 1.17))
        kosyLeft.addCurve(to: CGPoint(x: 35.11, y: 0.42), controlPoint1: CGPoint(x: 29.6, y: -0.33), controlPoint2: CGPoint(x: 32.96, y: 0.09))
        kosyLeft.addCurve(to: CGPoint(x: 53.98, y: 13.57), controlPoint1: CGPoint(x: 38.41, y: 0.92), controlPoint2: CGPoint(x: 51.57, y: 4.57))
        kosyLeft.addCurve(to: CGPoint(x: 44.07, y: 22.62), controlPoint1: CGPoint(x: 54.55, y: 15.71), controlPoint2: CGPoint(x: 51.31, y: 19.6))
        kosyLeft.addCurve(to: CGPoint(x: 29.92, y: 26.28), controlPoint1: CGPoint(x: 40.37, y: 24.16), controlPoint2: CGPoint(x: 34.38, y: 24.41))
        kosyLeft.addCurve(to: CGPoint(x: 24.25, y: 32.28), controlPoint1: CGPoint(x: 27.74, y: 27.19), controlPoint2: CGPoint(x: 25.85, y: 29.19))
        kosyLeft.addCurve(to: CGPoint(x: 16.28, y: 27.57), controlPoint1: CGPoint(x: 22.36, y: 26.91), controlPoint2: CGPoint(x: 19.7, y: 25.34))
        kosyLeft.addCurve(to: CGPoint(x: 16.88, y: 39.59), controlPoint1: CGPoint(x: 13.06, y: 29.66), controlPoint2: CGPoint(x: 16.35, y: 34.75))
        kosyLeft.addCurve(to: CGPoint(x: 15.48, y: 48.6), controlPoint1: CGPoint(x: 17.44, y: 44.65), controlPoint2: CGPoint(x: 14.55, y: 44.65))
        kosyLeft.addCurve(to: CGPoint(x: 17.44, y: 57.1), controlPoint1: CGPoint(x: 16.28, y: 51.99), controlPoint2: CGPoint(x: 17.54, y: 54.13))
        kosyLeft.addCurve(to: CGPoint(x: 15.1, y: 65.77), controlPoint1: CGPoint(x: 17.25, y: 62.56), controlPoint2: CGPoint(x: 15.38, y: 63.6))
        kosyLeft.addCurve(to: CGPoint(x: 15.92, y: 73.49), controlPoint1: CGPoint(x: 14.82, y: 67.94), controlPoint2: CGPoint(x: 16.28, y: 68.75))
        kosyLeft.addCurve(to: CGPoint(x: 15.1, y: 84.02), controlPoint1: CGPoint(x: 15.56, y: 78.23), controlPoint2: CGPoint(x: 13.92, y: 80.26))
        kosyLeft.addCurve(to: CGPoint(x: 12.64, y: 95.15), controlPoint1: CGPoint(x: 16.28, y: 87.79), controlPoint2: CGPoint(x: 14.33, y: 91.44))
        kosyLeft.addCurve(to: CGPoint(x: 11.12, y: 118.44), controlPoint1: CGPoint(x: 19.92, y: 103.42), controlPoint2: CGPoint(x: 14.33, y: 118.44))
        kosyLeft.addCurve(to: CGPoint(x: 7.13, y: 95.63), controlPoint1: CGPoint(x: 7.92, y: 118.44), controlPoint2: CGPoint(x: 1.24, y: 105.92))
        kosyLeft.addCurve(to: CGPoint(x: 4.39, y: 83.32), controlPoint1: CGPoint(x: 5.7, y: 91.16), controlPoint2: CGPoint(x: 4.39, y: 89.33))
        kosyLeft.addCurve(to: CGPoint(x: 1.24, y: 74.16), controlPoint1: CGPoint(x: 4.39, y: 79.53), controlPoint2: CGPoint(x: 1.79, y: 79.74))
        kosyLeft.addCurve(to: CGPoint(x: 2.64, y: 64.77), controlPoint1: CGPoint(x: 0.69, y: 68.58), controlPoint2: CGPoint(x: 2.64, y: 67.71))
        kosyLeft.addCurve(to: CGPoint(x: 0.48, y: 55.43), controlPoint1: CGPoint(x: 2.64, y: 61.83), controlPoint2: CGPoint(x: 0.48, y: 60.64))
        kosyLeft.addCurve(to: CGPoint(x: 2.1, y: 45.67), controlPoint1: CGPoint(x: 0.48, y: 50.22), controlPoint2: CGPoint(x: 3.97, y: 50.57))
        kosyLeft.addCurve(to: CGPoint(x: 0, y: 38.65), controlPoint1: CGPoint(x: 1.09, y: 43.01), controlPoint2: CGPoint(x: 0, y: 41.74))
        kosyLeft.addCurve(to: CGPoint(x: 1.24, y: 32.28), controlPoint1: CGPoint(x: 0, y: 35.56), controlPoint2: CGPoint(x: 0.93, y: 34.87))
        kosyLeft.addCurve(to: CGPoint(x: 3.97, y: 13.57), controlPoint1: CGPoint(x: 1.91, y: 26.84), controlPoint2: CGPoint(x: -0.9, y: 24.06))
        kosyLeft.close()
        let cl = CAShapeLayer()
        cl.path = kosyLeft.cgPath
        cl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cl.position = CGPoint(x: -5.85, y: -4.17)
        
        let rectangle = UIBezierPath()
        rectangle.move(to: CGPoint(x: 0.04, y: 0.37))
        rectangle.addCurve(to: CGPoint(x: 6.44, y: 0.37), controlPoint1: CGPoint(x: 0.04, y: -0.32), controlPoint2: CGPoint(x: 5.63, y: 0.11))
        rectangle.addCurve(to: CGPoint(x: 6.44, y: 3.29), controlPoint1: CGPoint(x: 7.24, y: 0.64), controlPoint2: CGPoint(x: 6.76, y: 2.56))
        rectangle.addCurve(to: CGPoint(x: 0.38, y: 3.29), controlPoint1: CGPoint(x: 6.12, y: 4.02), controlPoint2: CGPoint(x: 0.92, y: 3.63))
        rectangle.addCurve(to: CGPoint(x: 0.04, y: 0.37), controlPoint1: CGPoint(x: -0.17, y: 2.96), controlPoint2: CGPoint(x: 0.04, y: 1.07))
        rectangle.close()
        let r = CAShapeLayer()
        r.path = rectangle.cgPath
        r.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        r.position = CGPoint(x: 32.61, y: 88.35)
        
        let rectangle2 = UIBezierPath()
        rectangle2.move(to: CGPoint(x: 0.03, y: 0.49))
        rectangle2.addCurve(to: CGPoint(x: 6.89, y: 0.23), controlPoint1: CGPoint(x: 0.03, y: -0.2), controlPoint2: CGPoint(x: 6.09, y: -0.04))
        rectangle2.addCurve(to: CGPoint(x: 7.09, y: 3.27), controlPoint1: CGPoint(x: 7.7, y: 0.49), controlPoint2: CGPoint(x: 7.41, y: 2.53))
        rectangle2.addCurve(to: CGPoint(x: 0.4, y: 3.57), controlPoint1: CGPoint(x: 6.77, y: 4), controlPoint2: CGPoint(x: 0.94, y: 3.91))
        rectangle2.addCurve(to: CGPoint(x: 0.03, y: 0.49), controlPoint1: CGPoint(x: -0.15, y: 3.24), controlPoint2: CGPoint(x: 0.03, y: 1.18))
        rectangle2.close()
        let r2 = CAShapeLayer()
        r2.path = rectangle2.cgPath
        r2.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        r2.position = CGPoint(x: 0.56, y: 88.87)
        
        [cr, hn, cl, r, r2].forEach {hairCut.layer.addSublayer($0)}
        return hairCut
    }
    
    class func createKosyHairCut() -> UIView {
        let hairCut = UIView()
        
        let kosyRight = UIBezierPath()
        kosyRight.move(to: CGPoint(x: 4.63, y: 0.44))
        kosyRight.addCurve(to: CGPoint(x: 34.12, y: 12.82), controlPoint1: CGPoint(x: 8.98, y: -0.51), controlPoint2: CGPoint(x: 27.43, y: -1.2))
        kosyRight.addCurve(to: CGPoint(x: 34.12, y: 41.72), controlPoint1: CGPoint(x: 40.81, y: 26.83), controlPoint2: CGPoint(x: 34.86, y: 36.14))
        kosyRight.addCurve(to: CGPoint(x: 29.55, y: 71.76), controlPoint1: CGPoint(x: 33.75, y: 44.57), controlPoint2: CGPoint(x: 30.09, y: 67.32))
        kosyRight.addCurve(to: CGPoint(x: 26.39, y: 80.6), controlPoint1: CGPoint(x: 29.02, y: 76.2), controlPoint2: CGPoint(x: 26.39, y: 78.96))
        kosyRight.addCurve(to: CGPoint(x: 26.93, y: 85.66), controlPoint1: CGPoint(x: 26.39, y: 82.23), controlPoint2: CGPoint(x: 27.39, y: 82.23))
        kosyRight.addCurve(to: CGPoint(x: 24.91, y: 95.49), controlPoint1: CGPoint(x: 26.47, y: 89.09), controlPoint2: CGPoint(x: 24.91, y: 92.2))
        kosyRight.addCurve(to: CGPoint(x: 21.95, y: 117.71), controlPoint1: CGPoint(x: 30.85, y: 100.86), controlPoint2: CGPoint(x: 25.42, y: 117.71))
        kosyRight.addCurve(to: CGPoint(x: 18.92, y: 94.57), controlPoint1: CGPoint(x: 18.48, y: 117.71), controlPoint2: CGPoint(x: 11.41, y: 105.03))
        kosyRight.addCurve(to: CGPoint(x: 16.07, y: 85.66), controlPoint1: CGPoint(x: 18.47, y: 90.89), controlPoint2: CGPoint(x: 16.87, y: 89.01))
        kosyRight.addCurve(to: CGPoint(x: 16.53, y: 78.54), controlPoint1: CGPoint(x: 15.54, y: 83.43), controlPoint2: CGPoint(x: 16.81, y: 81.25))
        kosyRight.addCurve(to: CGPoint(x: 14.02, y: 71.48), controlPoint1: CGPoint(x: 16.26, y: 75.83), controlPoint2: CGPoint(x: 14.69, y: 74.87))
        kosyRight.addCurve(to: CGPoint(x: 14.02, y: 64.21), controlPoint1: CGPoint(x: 13.57, y: 69.22), controlPoint2: CGPoint(x: 13.57, y: 66.8))
        kosyRight.addCurve(to: CGPoint(x: 6.98, y: 64.21), controlPoint1: CGPoint(x: 11.34, y: 64.47), controlPoint2: CGPoint(x: 8.99, y: 64.47))
        kosyRight.addCurve(to: CGPoint(x: 4.63, y: 0.44), controlPoint1: CGPoint(x: -4.09, y: 62.74), controlPoint2: CGPoint(x: 0.28, y: 1.4))
        kosyRight.close()
        let cr = CAShapeLayer()
        cr.path = kosyRight.cgPath
        cr.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cr.position = CGPoint(x: 122.52, y: 5.24)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25.63, y: 68.3))
        headNeck.addLine(to: CGPoint(x: 10.36, y: 66.66))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 109.59, y: 9.01)
        
        let kosyLeft = UIBezierPath()
        kosyLeft.move(to: CGPoint(x: 3.97, y: 13.57))
        kosyLeft.addCurve(to: CGPoint(x: 24.25, y: 0.42), controlPoint1: CGPoint(x: 8.84, y: 3.08), controlPoint2: CGPoint(x: 18.9, y: 1.17))
        kosyLeft.addCurve(to: CGPoint(x: 35.11, y: 0.42), controlPoint1: CGPoint(x: 29.6, y: -0.33), controlPoint2: CGPoint(x: 32.96, y: 0.09))
        kosyLeft.addCurve(to: CGPoint(x: 53.98, y: 13.57), controlPoint1: CGPoint(x: 38.41, y: 0.92), controlPoint2: CGPoint(x: 51.57, y: 4.57))
        kosyLeft.addCurve(to: CGPoint(x: 44.07, y: 22.62), controlPoint1: CGPoint(x: 54.55, y: 15.71), controlPoint2: CGPoint(x: 51.31, y: 19.6))
        kosyLeft.addCurve(to: CGPoint(x: 29.92, y: 26.28), controlPoint1: CGPoint(x: 40.37, y: 24.16), controlPoint2: CGPoint(x: 34.38, y: 24.41))
        kosyLeft.addCurve(to: CGPoint(x: 24.25, y: 32.28), controlPoint1: CGPoint(x: 27.74, y: 27.19), controlPoint2: CGPoint(x: 25.85, y: 29.19))
        kosyLeft.addCurve(to: CGPoint(x: 16.28, y: 27.57), controlPoint1: CGPoint(x: 22.36, y: 26.91), controlPoint2: CGPoint(x: 19.7, y: 25.34))
        kosyLeft.addCurve(to: CGPoint(x: 16.88, y: 39.59), controlPoint1: CGPoint(x: 13.06, y: 29.66), controlPoint2: CGPoint(x: 16.35, y: 34.75))
        kosyLeft.addCurve(to: CGPoint(x: 15.48, y: 48.6), controlPoint1: CGPoint(x: 17.44, y: 44.65), controlPoint2: CGPoint(x: 14.55, y: 44.65))
        kosyLeft.addCurve(to: CGPoint(x: 17.44, y: 57.1), controlPoint1: CGPoint(x: 16.28, y: 51.99), controlPoint2: CGPoint(x: 17.54, y: 54.13))
        kosyLeft.addCurve(to: CGPoint(x: 15.1, y: 65.77), controlPoint1: CGPoint(x: 17.25, y: 62.56), controlPoint2: CGPoint(x: 15.38, y: 63.6))
        kosyLeft.addCurve(to: CGPoint(x: 15.92, y: 73.49), controlPoint1: CGPoint(x: 14.82, y: 67.94), controlPoint2: CGPoint(x: 16.28, y: 68.75))
        kosyLeft.addCurve(to: CGPoint(x: 15.1, y: 84.02), controlPoint1: CGPoint(x: 15.56, y: 78.23), controlPoint2: CGPoint(x: 13.92, y: 80.26))
        kosyLeft.addCurve(to: CGPoint(x: 12.64, y: 95.15), controlPoint1: CGPoint(x: 16.28, y: 87.79), controlPoint2: CGPoint(x: 14.33, y: 91.44))
        kosyLeft.addCurve(to: CGPoint(x: 11.12, y: 118.44), controlPoint1: CGPoint(x: 19.92, y: 103.42), controlPoint2: CGPoint(x: 14.33, y: 118.44))
        kosyLeft.addCurve(to: CGPoint(x: 7.13, y: 95.63), controlPoint1: CGPoint(x: 7.92, y: 118.44), controlPoint2: CGPoint(x: 1.24, y: 105.92))
        kosyLeft.addCurve(to: CGPoint(x: 4.39, y: 83.32), controlPoint1: CGPoint(x: 5.7, y: 91.16), controlPoint2: CGPoint(x: 4.39, y: 89.33))
        kosyLeft.addCurve(to: CGPoint(x: 1.24, y: 74.16), controlPoint1: CGPoint(x: 4.39, y: 79.53), controlPoint2: CGPoint(x: 1.79, y: 79.74))
        kosyLeft.addCurve(to: CGPoint(x: 2.64, y: 64.77), controlPoint1: CGPoint(x: 0.69, y: 68.58), controlPoint2: CGPoint(x: 2.64, y: 67.71))
        kosyLeft.addCurve(to: CGPoint(x: 0.48, y: 55.43), controlPoint1: CGPoint(x: 2.64, y: 61.83), controlPoint2: CGPoint(x: 0.48, y: 60.64))
        kosyLeft.addCurve(to: CGPoint(x: 2.1, y: 45.67), controlPoint1: CGPoint(x: 0.48, y: 50.22), controlPoint2: CGPoint(x: 3.97, y: 50.57))
        kosyLeft.addCurve(to: CGPoint(x: 0, y: 38.65), controlPoint1: CGPoint(x: 1.09, y: 43.01), controlPoint2: CGPoint(x: 0, y: 41.74))
        kosyLeft.addCurve(to: CGPoint(x: 1.24, y: 32.28), controlPoint1: CGPoint(x: 0, y: 35.56), controlPoint2: CGPoint(x: 0.93, y: 34.87))
        kosyLeft.addCurve(to: CGPoint(x: 3.97, y: 13.57), controlPoint1: CGPoint(x: 1.91, y: 26.84), controlPoint2: CGPoint(x: -0.9, y: 24.06))
        kosyLeft.close()
        let cl = CAShapeLayer()
        cl.path = kosyLeft.cgPath
        cl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        cl.position = CGPoint(x: 102.6, y: 5.23)
        
        let rectangle = UIBezierPath()
        rectangle.move(to: CGPoint(x: 0.04, y: 0.37))
        rectangle.addCurve(to: CGPoint(x: 6.44, y: 0.37), controlPoint1: CGPoint(x: 0.04, y: -0.32), controlPoint2: CGPoint(x: 5.63, y: 0.11))
        rectangle.addCurve(to: CGPoint(x: 6.44, y: 3.29), controlPoint1: CGPoint(x: 7.24, y: 0.64), controlPoint2: CGPoint(x: 6.76, y: 2.56))
        rectangle.addCurve(to: CGPoint(x: 0.38, y: 3.29), controlPoint1: CGPoint(x: 6.12, y: 4.02), controlPoint2: CGPoint(x: 0.92, y: 3.63))
        rectangle.addCurve(to: CGPoint(x: 0.04, y: 0.37), controlPoint1: CGPoint(x: -0.17, y: 2.96), controlPoint2: CGPoint(x: 0.04, y: 1.07))
        rectangle.close()
        let r = CAShapeLayer()
        r.path = rectangle.cgPath
        r.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        r.position = CGPoint(x: 141.06, y: 97.75)
        
        let rectangle2 = UIBezierPath()
        rectangle2.move(to: CGPoint(x: 0.03, y: 0.49))
        rectangle2.addCurve(to: CGPoint(x: 6.89, y: 0.23), controlPoint1: CGPoint(x: 0.03, y: -0.2), controlPoint2: CGPoint(x: 6.09, y: -0.04))
        rectangle2.addCurve(to: CGPoint(x: 7.09, y: 3.27), controlPoint1: CGPoint(x: 7.7, y: 0.49), controlPoint2: CGPoint(x: 7.41, y: 2.53))
        rectangle2.addCurve(to: CGPoint(x: 0.4, y: 3.57), controlPoint1: CGPoint(x: 6.77, y: 4), controlPoint2: CGPoint(x: 0.94, y: 3.91))
        rectangle2.addCurve(to: CGPoint(x: 0.03, y: 0.49), controlPoint1: CGPoint(x: -0.15, y: 3.24), controlPoint2: CGPoint(x: 0.03, y: 1.18))
        rectangle2.close()
        let r2 = CAShapeLayer()
        r2.path = rectangle2.cgPath
        r2.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        r2.position = CGPoint(x: 109.01, y: 98.27)
        
        [cr, hn, cl, r, r2].forEach {hairCut.layer.addSublayer($0)}
        return hairCut
    }
    
    class func createWavyHairCutForCell() -> UIView {
        let hairCut = UIView()
        
        let wavyRight = UIBezierPath()
        wavyRight.move(to: CGPoint(x: 7.99, y: 0.5))
        wavyRight.addCurve(to: CGPoint(x: 40.33, y: 14.31), controlPoint1: CGPoint(x: 21.57, y: -1.62), controlPoint2: CGPoint(x: 32.34, y: 2.98))
        wavyRight.addCurve(to: CGPoint(x: 43.47, y: 37.76), controlPoint1: CGPoint(x: 45.66, y: 21.88), controlPoint2: CGPoint(x: 43.47, y: 28.78))
        wavyRight.addCurve(to: CGPoint(x: 46.56, y: 54.78), controlPoint1: CGPoint(x: 43.47, y: 43.03), controlPoint2: CGPoint(x: 46.56, y: 46.8))
        wavyRight.addCurve(to: CGPoint(x: 50.21, y: 70.27), controlPoint1: CGPoint(x: 46.56, y: 70.11), controlPoint2: CGPoint(x: 58.27, y: 63.96))
        wavyRight.addCurve(to: CGPoint(x: 33.04, y: 72.78), controlPoint1: CGPoint(x: 47.01, y: 72.78), controlPoint2: CGPoint(x: 37.48, y: 73.15))
        wavyRight.addCurve(to: CGPoint(x: 15.36, y: 71.87), controlPoint1: CGPoint(x: 30.24, y: 72.54), controlPoint2: CGPoint(x: 24.35, y: 72.24))
        wavyRight.addCurve(to: CGPoint(x: 4.85, y: 70.5), controlPoint1: CGPoint(x: 10.36, y: 71.22), controlPoint2: CGPoint(x: 6.85, y: 70.76))
        wavyRight.addCurve(to: CGPoint(x: 7.99, y: 0.5), controlPoint1: CGPoint(x: -2.53, y: 69.53), controlPoint2: CGPoint(x: -1.48, y: 46.19))
        wavyRight.close()
        let wr = CAShapeLayer()
        wr.path = wavyRight.cgPath
        wr.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        wr.position = CGPoint(x: 10.73, y: -1)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25.63, y: 68.3))
        headNeck.addLine(to: CGPoint(x: 10.36, y: 66.66))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 0.47, y: 2.61)
        
        let wavyLeft = UIBezierPath()
        wavyLeft.move(to: CGPoint(x: 19.08, y: 14.78))
        wavyLeft.addCurve(to: CGPoint(x: 39.74, y: 0.42), controlPoint1: CGPoint(x: 23.34, y: 4.68), controlPoint2: CGPoint(x: 34.39, y: 1.17))
        wavyLeft.addCurve(to: CGPoint(x: 50.6, y: 0.42), controlPoint1: CGPoint(x: 45.09, y: -0.33), controlPoint2: CGPoint(x: 48.45, y: 0.09))
        wavyLeft.addCurve(to: CGPoint(x: 69.47, y: 13.57), controlPoint1: CGPoint(x: 53.9, y: 0.92), controlPoint2: CGPoint(x: 67.06, y: 4.57))
        wavyLeft.addCurve(to: CGPoint(x: 59.56, y: 22.62), controlPoint1: CGPoint(x: 70.04, y: 15.71), controlPoint2: CGPoint(x: 66.8, y: 19.6))
        wavyLeft.addCurve(to: CGPoint(x: 45.41, y: 26.28), controlPoint1: CGPoint(x: 55.87, y: 24.16), controlPoint2: CGPoint(x: 49.87, y: 24.41))
        wavyLeft.addCurve(to: CGPoint(x: 39.74, y: 32.28), controlPoint1: CGPoint(x: 43.23, y: 27.19), controlPoint2: CGPoint(x: 41.34, y: 29.19))
        wavyLeft.addCurve(to: CGPoint(x: 31.77, y: 27.57), controlPoint1: CGPoint(x: 37.85, y: 26.91), controlPoint2: CGPoint(x: 35.19, y: 25.34))
        wavyLeft.addCurve(to: CGPoint(x: 31.35, y: 39.96), controlPoint1: CGPoint(x: 28.55, y: 29.66), controlPoint2: CGPoint(x: 29.62, y: 36.8))
        wavyLeft.addCurve(to: CGPoint(x: 34.67, y: 41.11), controlPoint1: CGPoint(x: 32.38, y: 41.84), controlPoint2: CGPoint(x: 34.67, y: 40.66))
        wavyLeft.addCurve(to: CGPoint(x: 33.07, y: 60.54), controlPoint1: CGPoint(x: 34.67, y: 43.37), controlPoint2: CGPoint(x: 33.04, y: 51.99))
        wavyLeft.addCurve(to: CGPoint(x: 31.75, y: 70.76), controlPoint1: CGPoint(x: 33.09, y: 68.83), controlPoint2: CGPoint(x: 33.41, y: 70.76))
        wavyLeft.addCurve(to: CGPoint(x: 0.2, y: 68.11), controlPoint1: CGPoint(x: 24.2, y: 70.76), controlPoint2: CGPoint(x: -2.56, y: 69.33))
        wavyLeft.addCurve(to: CGPoint(x: 12.12, y: 51.28), controlPoint1: CGPoint(x: 9.44, y: 64), controlPoint2: CGPoint(x: 10.93, y: 55.54))
        wavyLeft.addCurve(to: CGPoint(x: 11.2, y: 37.27), controlPoint1: CGPoint(x: 13.32, y: 47.02), controlPoint2: CGPoint(x: 10.21, y: 43.08))
        wavyLeft.addCurve(to: CGPoint(x: 16.74, y: 26.28), controlPoint1: CGPoint(x: 12.32, y: 30.67), controlPoint2: CGPoint(x: 15.58, y: 29.96))
        wavyLeft.addCurve(to: CGPoint(x: 19.08, y: 14.78), controlPoint1: CGPoint(x: 18.22, y: 21.52), controlPoint2: CGPoint(x: 17.55, y: 18.42))
        wavyLeft.close()
        let wl = CAShapeLayer()
        wl.path = wavyLeft.cgPath
        wl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        wl.position = CGPoint(x: -21.01, y: -1.17)
        
        [wr, hn, wl].forEach {hairCut.layer.addSublayer($0)}
        hairCut.frame.origin.x += 1.1
        return hairCut
    }
    
    class func createWavyHairCut() -> UIView {
        let hairCut = UIView()
        
        let wavyRight = UIBezierPath()
        wavyRight.move(to: CGPoint(x: 7.99, y: 0.5))
        wavyRight.addCurve(to: CGPoint(x: 40.33, y: 14.31), controlPoint1: CGPoint(x: 21.57, y: -1.62), controlPoint2: CGPoint(x: 32.34, y: 2.98))
        wavyRight.addCurve(to: CGPoint(x: 43.47, y: 37.76), controlPoint1: CGPoint(x: 45.66, y: 21.88), controlPoint2: CGPoint(x: 43.47, y: 28.78))
        wavyRight.addCurve(to: CGPoint(x: 46.56, y: 54.78), controlPoint1: CGPoint(x: 43.47, y: 43.03), controlPoint2: CGPoint(x: 46.56, y: 46.8))
        wavyRight.addCurve(to: CGPoint(x: 50.21, y: 70.27), controlPoint1: CGPoint(x: 46.56, y: 70.11), controlPoint2: CGPoint(x: 58.27, y: 63.96))
        wavyRight.addCurve(to: CGPoint(x: 33.04, y: 72.78), controlPoint1: CGPoint(x: 47.01, y: 72.78), controlPoint2: CGPoint(x: 37.48, y: 73.15))
        wavyRight.addCurve(to: CGPoint(x: 15.36, y: 71.87), controlPoint1: CGPoint(x: 30.24, y: 72.54), controlPoint2: CGPoint(x: 24.35, y: 72.24))
        wavyRight.addCurve(to: CGPoint(x: 4.85, y: 70.5), controlPoint1: CGPoint(x: 10.36, y: 71.22), controlPoint2: CGPoint(x: 6.85, y: 70.76))
        wavyRight.addCurve(to: CGPoint(x: 7.99, y: 0.5), controlPoint1: CGPoint(x: -2.53, y: 69.53), controlPoint2: CGPoint(x: -1.48, y: 46.19))
        wavyRight.close()
        let wr = CAShapeLayer()
        wr.path = wavyRight.cgPath
        wr.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        wr.position = CGPoint(x: 119.85, y: 5.4)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25.63, y: 68.3))
        headNeck.addLine(to: CGPoint(x: 10.36, y: 66.66))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 107.59, y: 9.01)
        
        let wavyLeft = UIBezierPath()
        wavyLeft.move(to: CGPoint(x: 19.08, y: 14.78))
        wavyLeft.addCurve(to: CGPoint(x: 39.74, y: 0.42), controlPoint1: CGPoint(x: 23.34, y: 4.68), controlPoint2: CGPoint(x: 34.39, y: 1.17))
        wavyLeft.addCurve(to: CGPoint(x: 50.6, y: 0.42), controlPoint1: CGPoint(x: 45.09, y: -0.33), controlPoint2: CGPoint(x: 48.45, y: 0.09))
        wavyLeft.addCurve(to: CGPoint(x: 69.47, y: 13.57), controlPoint1: CGPoint(x: 53.9, y: 0.92), controlPoint2: CGPoint(x: 67.06, y: 4.57))
        wavyLeft.addCurve(to: CGPoint(x: 59.56, y: 22.62), controlPoint1: CGPoint(x: 70.04, y: 15.71), controlPoint2: CGPoint(x: 66.8, y: 19.6))
        wavyLeft.addCurve(to: CGPoint(x: 45.41, y: 26.28), controlPoint1: CGPoint(x: 55.87, y: 24.16), controlPoint2: CGPoint(x: 49.87, y: 24.41))
        wavyLeft.addCurve(to: CGPoint(x: 39.74, y: 32.28), controlPoint1: CGPoint(x: 43.23, y: 27.19), controlPoint2: CGPoint(x: 41.34, y: 29.19))
        wavyLeft.addCurve(to: CGPoint(x: 31.77, y: 27.57), controlPoint1: CGPoint(x: 37.85, y: 26.91), controlPoint2: CGPoint(x: 35.19, y: 25.34))
        wavyLeft.addCurve(to: CGPoint(x: 31.35, y: 39.96), controlPoint1: CGPoint(x: 28.55, y: 29.66), controlPoint2: CGPoint(x: 29.62, y: 36.8))
        wavyLeft.addCurve(to: CGPoint(x: 34.67, y: 41.11), controlPoint1: CGPoint(x: 32.38, y: 41.84), controlPoint2: CGPoint(x: 34.67, y: 40.66))
        wavyLeft.addCurve(to: CGPoint(x: 33.07, y: 60.54), controlPoint1: CGPoint(x: 34.67, y: 43.37), controlPoint2: CGPoint(x: 33.04, y: 51.99))
        wavyLeft.addCurve(to: CGPoint(x: 31.75, y: 70.76), controlPoint1: CGPoint(x: 33.09, y: 68.83), controlPoint2: CGPoint(x: 33.41, y: 70.76))
        wavyLeft.addCurve(to: CGPoint(x: 0.2, y: 68.11), controlPoint1: CGPoint(x: 24.2, y: 70.76), controlPoint2: CGPoint(x: -2.56, y: 69.33))
        wavyLeft.addCurve(to: CGPoint(x: 12.12, y: 51.28), controlPoint1: CGPoint(x: 9.44, y: 64), controlPoint2: CGPoint(x: 10.93, y: 55.54))
        wavyLeft.addCurve(to: CGPoint(x: 11.2, y: 37.27), controlPoint1: CGPoint(x: 13.32, y: 47.02), controlPoint2: CGPoint(x: 10.21, y: 43.08))
        wavyLeft.addCurve(to: CGPoint(x: 16.74, y: 26.28), controlPoint1: CGPoint(x: 12.32, y: 30.67), controlPoint2: CGPoint(x: 15.58, y: 29.96))
        wavyLeft.addCurve(to: CGPoint(x: 19.08, y: 14.78), controlPoint1: CGPoint(x: 18.22, y: 21.52), controlPoint2: CGPoint(x: 17.55, y: 18.42))
        wavyLeft.close()
        let wl = CAShapeLayer()
        wl.path = wavyLeft.cgPath
        wl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        wl.position = CGPoint(x: 88.91, y: 5.23)
        
        [wr, hn, wl].forEach {hairCut.layer.addSublayer($0)}
        hairCut.frame.origin.x += 1.1
        return hairCut
    }
    
    class func createLowShoes() -> UIView {
        let shoes = UIView()
        
        let _6 = UIBezierPath()
        _6.move(to: CGPoint(x: 1.8, y: 0.13))
        _6.addCurve(to: CGPoint(x: 45.95, y: 3.55), controlPoint1: CGPoint(x: 3.93, y: -0.75), controlPoint2: CGPoint(x: 43.52, y: 3.01))
        _6.addCurve(to: CGPoint(x: 47.14, y: 7.99), controlPoint1: CGPoint(x: 48.37, y: 4.08), controlPoint2: CGPoint(x: 48.91, y: 7.99))
        _6.addCurve(to: CGPoint(x: 1.8, y: 7.99), controlPoint1: CGPoint(x: 45.37, y: 7.99), controlPoint2: CGPoint(x: 4.44, y: 8.41))
        _6.addCurve(to: CGPoint(x: 1.8, y: 0.13), controlPoint1: CGPoint(x: -0.85, y: 7.57), controlPoint2: CGPoint(x: -0.34, y: 1.02))
        _6.close()
        let _66 = CAShapeLayer()
        _66.path = _6.cgPath
        _66.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        _66.position = CGPoint(x: 87.65, y: 484.65)
        
        let _5 = UIBezierPath()
        _5.move(to: CGPoint(x: 1.65, y: 0))
        _5.addCurve(to: CGPoint(x: 11.68, y: 0), controlPoint1: CGPoint(x: 7.85, y: 0), controlPoint2: CGPoint(x: 11.19, y: 0))
        _5.addCurve(to: CGPoint(x: 11.42, y: 2.87), controlPoint1: CGPoint(x: 12.41, y: 0), controlPoint2: CGPoint(x: 12.24, y: 2.87))
        _5.addCurve(to: CGPoint(x: 4.59, y: 2.87), controlPoint1: CGPoint(x: 10.59, y: 2.87), controlPoint2: CGPoint(x: 5.62, y: 2.87))
        _5.addCurve(to: CGPoint(x: 6.96, y: 9.22), controlPoint1: CGPoint(x: 3.56, y: 2.87), controlPoint2: CGPoint(x: 4.1, y: 6.48))
        _5.addCurve(to: CGPoint(x: 9.55, y: 17.15), controlPoint1: CGPoint(x: 8.86, y: 11.04), controlPoint2: CGPoint(x: 9.73, y: 13.69))
        _5.addLine(to: CGPoint(x: 0, y: 16.87))
        _5.addLine(to: CGPoint(x: 1.65, y: 0))
        _5.close()
        let _55 = CAShapeLayer()
        _55.path = _5.cgPath
        _55.fillColor = UIColor(red: 167/255, green: 40/255, blue: 30/255, alpha: 1).cgColor
        _55.position = CGPoint(x: 89.9, y: 469)
        
        let _4 = UIBezierPath()
        _4.move(to: CGPoint(x: 1.02, y: 0.28))
        _4.addCurve(to: CGPoint(x: 9.84, y: 1.81), controlPoint1: CGPoint(x: -0.09, y: -0.56), controlPoint2: CGPoint(x: 8.79, y: 0.66))
        _4.addCurve(to: CGPoint(x: 9.28, y: 8.76), controlPoint1: CGPoint(x: 10.55, y: 2.58), controlPoint2: CGPoint(x: 10.36, y: 4.89))
        _4.addLine(to: CGPoint(x: 0, y: 7.94))
        _4.addCurve(to: CGPoint(x: 1.02, y: 0.28), controlPoint1: CGPoint(x: 1.42, y: 3.39), controlPoint2: CGPoint(x: 1.75, y: 0.83))
        _4.close()
        let _44 = CAShapeLayer()
        _44.path = _4.cgPath
        _44.fillColor = UIColor(red: 167/255, green: 40/255, blue: 30/255, alpha: 1).cgColor
        _44.position = CGPoint(x: 114.72, y: 479.06)
        
        let _3 = UIBezierPath()
        _3.move(to: CGPoint(x: 1.8, y: 0.13))
        _3.addCurve(to: CGPoint(x: 45.95, y: 3.55), controlPoint1: CGPoint(x: 3.93, y: -0.75), controlPoint2: CGPoint(x: 43.52, y: 3.01))
        _3.addCurve(to: CGPoint(x: 47.14, y: 7.99), controlPoint1: CGPoint(x: 48.37, y: 4.08), controlPoint2: CGPoint(x: 48.91, y: 7.99))
        _3.addCurve(to: CGPoint(x: 1.8, y: 7.99), controlPoint1: CGPoint(x: 45.37, y: 7.99), controlPoint2: CGPoint(x: 4.44, y: 8.41))
        _3.addCurve(to: CGPoint(x: 1.8, y: 0.13), controlPoint1: CGPoint(x: -0.85, y: 7.57), controlPoint2: CGPoint(x: -0.34, y: 1.02))
        _3.close()
        let _33 = CAShapeLayer()
        _33.path = _3.cgPath
        _33.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        _33.position = CGPoint(x: 169, y: 484)
        
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint.zero)
        _2.addCurve(to: CGPoint(x: 11.9, y: 0), controlPoint1: CGPoint(x: 7.45, y: 0), controlPoint2: CGPoint(x: 11.41, y: 0))
        _2.addCurve(to: CGPoint(x: 11.9, y: 2.87), controlPoint1: CGPoint(x: 12.63, y: 0), controlPoint2: CGPoint(x: 12.72, y: 2.87))
        _2.addCurve(to: CGPoint(x: 5.98, y: 2.87), controlPoint1: CGPoint(x: 11.08, y: 2.87), controlPoint2: CGPoint(x: 7.01, y: 2.87))
        _2.addCurve(to: CGPoint(x: 8.35, y: 9.22), controlPoint1: CGPoint(x: 4.95, y: 2.87), controlPoint2: CGPoint(x: 5.49, y: 6.48))
        _2.addCurve(to: CGPoint(x: 11.2, y: 16.87), controlPoint1: CGPoint(x: 10.25, y: 11.04), controlPoint2: CGPoint(x: 11.2, y: 13.59))
        _2.addLine(to: CGPoint(x: 1.39, y: 16.87))
        _2.addCurve(to: CGPoint(x: 1.39, y: 7.54), controlPoint1: CGPoint(x: 1.6, y: 13.2), controlPoint2: CGPoint(x: 1.6, y: 10.09))
        _2.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 1.18, y: 4.99), controlPoint2: CGPoint(x: 0.72, y: 2.48))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 167/255, green: 40/255, blue: 30/255, alpha: 1).cgColor
        _22.position = CGPoint(x: 169.61, y: 468)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 1.06, y: 0.25))
        _1.addCurve(to: CGPoint(x: 9.71, y: 2.01), controlPoint1: CGPoint(x: -0.05, y: -0.59), controlPoint2: CGPoint(x: 8.66, y: 0.86))
        _1.addCurve(to: CGPoint(x: 9.28, y: 9.16), controlPoint1: CGPoint(x: 10.42, y: 2.78), controlPoint2: CGPoint(x: 10.27, y: 5.16))
        _1.addLine(to: CGPoint(x: 0, y: 8.35))
        _1.addCurve(to: CGPoint(x: 1.06, y: 0.25), controlPoint1: CGPoint(x: 1.44, y: 3.5), controlPoint2: CGPoint(x: 1.8, y: 0.8))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 167/255, green: 40/255, blue: 30/255, alpha: 1).cgColor
        _11.position = CGPoint(x: 195, y: 477.59)
        
        [_66, _55, _44, _33, _22, _11].forEach {shoes.layer.addSublayer($0)}
        return shoes
    }
    
    class func createDress() -> UIView {
        let dress = UIView()
        
        let rectangle = UIBezierPath()
        rectangle.move(to: CGPoint(x: 0.34, y: 0.9))
        rectangle.addCurve(to: CGPoint(x: 3.19, y: 2.41), controlPoint1: CGPoint(x: 0.82, y: -0.68), controlPoint2: CGPoint(x: 1.77, y: -0.18))
        rectangle.addLine(to: CGPoint(x: 0.44, y: 10.64))
        rectangle.addCurve(to: CGPoint(x: 0.34, y: 0.9), controlPoint1: CGPoint(x: -0.11, y: 5.74), controlPoint2: CGPoint(x: -0.15, y: 2.49))
        rectangle.close()
        let rec = CAShapeLayer()
        rec.path = rectangle.cgPath
//        rec.fillColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1).cgColor
        rec.fillColor = UIColor(red: 255/255, green: 211/255, blue: 78/255, alpha: 1).cgColor
        rec.position = CGPoint(x: 72.68, y: 122.65)
        
        let rectangle2 = UIBezierPath()
        rectangle2.move(to: CGPoint(x: 2.87, y: 0))
        rectangle2.addCurve(to: CGPoint(x: 3.21, y: 8.45), controlPoint1: CGPoint(x: 3.64, y: 4.03), controlPoint2: CGPoint(x: 3.75, y: 6.85))
        rectangle2.addCurve(to: CGPoint(x: 0, y: 8.66), controlPoint1: CGPoint(x: 2.68, y: 10.05), controlPoint2: CGPoint(x: 1.6, y: 10.12))
        rectangle2.addLine(to: CGPoint(x: 2.87, y: 0))
        rectangle2.close()
        let rec2 = CAShapeLayer()
        rec2.path = rectangle2.cgPath
//        rec2.fillColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1).cgColor
         rec2.fillColor = UIColor(red: 255/255, green: 211/255, blue: 78/255, alpha: 1).cgColor
        rec2.position = CGPoint(x: 83.93, y: 142.95)
        
        let underLeftAddition = UIBezierPath()
        underLeftAddition.move(to: CGPoint(x: 0.11, y: 0))
        underLeftAddition.addLine(to: CGPoint(x: 3.03, y: 9.12))
        underLeftAddition.addCurve(to: CGPoint(x: 0.29, y: 10.05), controlPoint1: CGPoint(x: 1.52, y: 11.64), controlPoint2: CGPoint(x: 0.61, y: 11.95))
        underLeftAddition.addCurve(to: CGPoint(x: 0.11, y: 0), controlPoint1: CGPoint(x: -0.02, y: 8.15), controlPoint2: CGPoint(x: -0.08, y: 4.8))
        underLeftAddition.close()
        let un = CAShapeLayer()
        un.path = underLeftAddition.cgPath
        un.fillColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1).cgColor
        un.position = CGPoint(x: 169, y: 142.61)
        
        let bodyDress = UIBezierPath()
        bodyDress.move(to: CGPoint(x: 37.63, y: 0.05))
        bodyDress.addCurve(to: CGPoint(x: 55.57, y: 18.33), controlPoint1: CGPoint(x: 41.45, y: -1.07), controlPoint2: CGPoint(x: 40.09, y: 18.33))
        bodyDress.addCurve(to: CGPoint(x: 71.09, y: 0.47), controlPoint1: CGPoint(x: 71.05, y: 18.33), controlPoint2: CGPoint(x: 65.44, y: -0.98))
        bodyDress.addCurve(to: CGPoint(x: 91.38, y: 9.11), controlPoint1: CGPoint(x: 77.82, y: 2.21), controlPoint2: CGPoint(x: 83.56, y: 2.21))
        bodyDress.addCurve(to: CGPoint(x: 109.51, y: 42.92), controlPoint1: CGPoint(x: 99.19, y: 16), controlPoint2: CGPoint(x: 108.82, y: 35.62))
        bodyDress.addCurve(to: CGPoint(x: 95.91, y: 66.66), controlPoint1: CGPoint(x: 110.43, y: 52.51), controlPoint2: CGPoint(x: 95.48, y: 63.97))
        bodyDress.addCurve(to: CGPoint(x: 90.19, y: 44.76), controlPoint1: CGPoint(x: 96.35, y: 69.34), controlPoint2: CGPoint(x: 93.98, y: 53.19))
        bodyDress.addCurve(to: CGPoint(x: 88.11, y: 41.29), controlPoint1: CGPoint(x: 89.18, y: 42.52), controlPoint2: CGPoint(x: 88.49, y: 41.37))
        bodyDress.addCurve(to: CGPoint(x: 90.19, y: 55.21), controlPoint1: CGPoint(x: 89.75, y: 44.5), controlPoint2: CGPoint(x: 90.44, y: 49.14))
        bodyDress.addCurve(to: CGPoint(x: 85.13, y: 85.99), controlPoint1: CGPoint(x: 89.7, y: 67.18), controlPoint2: CGPoint(x: 85.13, y: 77.2))
        bodyDress.addCurve(to: CGPoint(x: 95.91, y: 155.69), controlPoint1: CGPoint(x: 85.13, y: 93.45), controlPoint2: CGPoint(x: 88.67, y: 123.89))
        bodyDress.addCurve(to: CGPoint(x: 115.21, y: 224.26), controlPoint1: CGPoint(x: 100.72, y: 176.79), controlPoint2: CGPoint(x: 115.21, y: 224.26))
        bodyDress.addCurve(to: CGPoint(x: 60.45, y: 237.7), controlPoint1: CGPoint(x: 97.57, y: 232.04), controlPoint2: CGPoint(x: 92.99, y: 236.33))
        bodyDress.addCurve(to: CGPoint(x: 3.99, y: 227.12), controlPoint1: CGPoint(x: 27.91, y: 239.07), controlPoint2: CGPoint(x: 24.52, y: 233.94))
        bodyDress.addCurve(to: CGPoint(x: 17.17, y: 143.48), controlPoint1: CGPoint(x: 3.99, y: 227.12), controlPoint2: CGPoint(x: 11.14, y: 183.25))
        bodyDress.addCurve(to: CGPoint(x: 24.78, y: 85.99), controlPoint1: CGPoint(x: 20.96, y: 118.56), controlPoint2: CGPoint(x: 24.68, y: 94.68))
        bodyDress.addCurve(to: CGPoint(x: 17.17, y: 51.44), controlPoint1: CGPoint(x: 24.95, y: 70.97), controlPoint2: CGPoint(x: 22.42, y: 59.45))
        bodyDress.addCurve(to: CGPoint(x: 14.6, y: 65.04), controlPoint1: CGPoint(x: 15.45, y: 60.52), controlPoint2: CGPoint(x: 14.59, y: 65.05))
        bodyDress.addCurve(to: CGPoint(x: 0, y: 40.02), controlPoint1: CGPoint(x: 15.97, y: 58.69), controlPoint2: CGPoint(x: 0, y: 51.81))
        bodyDress.addCurve(to: CGPoint(x: 12.88, y: 10.87), controlPoint1: CGPoint(x: 0, y: 33.09), controlPoint2: CGPoint(x: 8.27, y: 19.04))
        bodyDress.addCurve(to: CGPoint(x: 37.63, y: 0.05), controlPoint1: CGPoint(x: 17.48, y: 2.7), controlPoint2: CGPoint(x: 29.24, y: 2.49))
        bodyDress.close()
        let dr = CAShapeLayer()
        dr.path = bodyDress.cgPath
//        dr.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
         dr.fillColor = UIColor(red: 255/255, green: 211/255, blue: 78/255, alpha: 1).cgColor
        dr.position = CGPoint(x: 72.66, y: 86)
        
        [rec, rec2, un, dr].forEach {dress.layer.addSublayer($0)}
        return dress
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
        co.position = CGPoint(x: 88.93, y: 62.3)
        
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
        ci.position = CGPoint(x: 101.95, y: 66.2)
        
        let shoulders = UIBezierPath()
        shoulders.move(to: CGPoint(x: 0.46, y: 9.38))
        shoulders.addCurve(to: CGPoint(x: 35.91, y: 0.03), controlPoint1: CGPoint(x: 7.8, y: 0.99), controlPoint2: CGPoint(x: 25.73, y: -0.23))
        shoulders.addCurve(to: CGPoint(x: 67.77, y: 4.75), controlPoint1: CGPoint(x: 53.31, y: 0.49), controlPoint2: CGPoint(x: 64.06, y: 2.85))
        shoulders.addCurve(to: CGPoint(x: 0.46, y: 9.38), controlPoint1: CGPoint(x: 76.58, y: 9.26), controlPoint2: CGPoint(x: -6.88, y: 17.78))
        shoulders.close()
        let sh = CAShapeLayer()
        sh.path = shoulders.cgPath
        sh.fillColor = UIColor(red: 210/255, green: 168/255, blue: 133/255, alpha: 1).cgColor
        sh.position = CGPoint(x: 90.43, y: 87.6)
        
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
        hn.fillColor = UIColor(red: 210/255, green: 168/255, blue: 133/255, alpha: 1).cgColor
        hn.position = CGPoint(x: 108.59, y: 9.01)
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 40.42, y: 14.26))
        body.addCurve(to: CGPoint(x: 69.51, y: 0.37), controlPoint1: CGPoint(x: 43.69, y: 5.45), controlPoint2: CGPoint(x: 64.38, y: -1.74))
        body.addCurve(to: CGPoint(x: 87.18, y: 5.6), controlPoint1: CGPoint(x: 72.03, y: 1.01), controlPoint2: CGPoint(x: 74.24, y: 5.6))
        body.addCurve(to: CGPoint(x: 103.57, y: 0.68), controlPoint1: CGPoint(x: 92.25, y: 5.6), controlPoint2: CGPoint(x: 99.76, y: 6.76))
        body.addCurve(to: CGPoint(x: 123.97, y: 7.52), controlPoint1: CGPoint(x: 104.95, y: -1.53), controlPoint2: CGPoint(x: 120.49, y: 4.08))
        body.addCurve(to: CGPoint(x: 169, y: 138.77), controlPoint1: CGPoint(x: 136.31, y: 19.74), controlPoint2: CGPoint(x: 169, y: 132.12))
        body.addCurve(to: CGPoint(x: 153.29, y: 142.17), controlPoint1: CGPoint(x: 169, y: 145.43), controlPoint2: CGPoint(x: 157.83, y: 147.4))
        body.addCurve(to: CGPoint(x: 120.27, y: 45.82), controlPoint1: CGPoint(x: 148.74, y: 136.93), controlPoint2: CGPoint(x: 118.84, y: 40.31))
        body.addCurve(to: CGPoint(x: 123.97, y: 114.9), controlPoint1: CGPoint(x: 126.69, y: 70.52), controlPoint2: CGPoint(x: 123.97, y: 102.87))
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
        bd.position = CGPoint(x: 42.45, y: 87.94)
        
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
        _22.position = CGPoint(x: 49.05, y: 192.93)
        
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
        
        let underLeftAddition = UIBezierPath()
        underLeftAddition.move(to: CGPoint.zero)
        underLeftAddition.addLine(to: CGPoint(x: 3.67, y: 11.4))
        underLeftAddition.addCurve(to: CGPoint(x: 0.82, y: 13.57), controlPoint1: CGPoint(x: 2.05, y: 14.9), controlPoint2: CGPoint(x: 1.1, y: 15.63))
        underLeftAddition.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 0.53, y: 11.52), controlPoint2: CGPoint(x: 0.26, y: 7))
        underLeftAddition.close()
        let un = CAShapeLayer()
        un.path = _1.cgPath
        un.fillColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1).cgColor
        un.position = CGPoint(x: 188.16, y: 203.13)
        
        let bodyBlouse = UIBezierPath()
        bodyBlouse.move(to: CGPoint(x: 61.58, y: 0.05))
        bodyBlouse.addCurve(to: CGPoint(x: 79.5, y: 18.31), controlPoint1: CGPoint(x: 65.4, y: -1.06), controlPoint2: CGPoint(x: 64.04, y: 18.31))
        bodyBlouse.addCurve(to: CGPoint(x: 95, y: 0.47), controlPoint1: CGPoint(x: 94.96, y: 18.31), controlPoint2: CGPoint(x: 89.36, y: -0.98))
        bodyBlouse.addCurve(to: CGPoint(x: 117.07, y: 10.85), controlPoint1: CGPoint(x: 101.72, y: 2.2), controlPoint2: CGPoint(x: 109.27, y: 3.97))
        bodyBlouse.addCurve(to: CGPoint(x: 150.82, y: 97.6), controlPoint1: CGPoint(x: 124.88, y: 17.74), controlPoint2: CGPoint(x: 150.12, y: 90.31))
        bodyBlouse.addCurve(to: CGPoint(x: 139.87, y: 129.58), controlPoint1: CGPoint(x: 151.74, y: 107.18), controlPoint2: CGPoint(x: 139.52, y: 126.79))
        bodyBlouse.addCurve(to: CGPoint(x: 114.08, y: 44.69), controlPoint1: CGPoint(x: 140.22, y: 132.37), controlPoint2: CGPoint(x: 134.51, y: 95.42))
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
        bb.position = CGPoint(x: 49.09, y: 87)
        
        [_22, _11, un, bb].forEach {blouse.layer.addSublayer($0)}
        return blouse
    }
    
    class func createTShirt() -> UIView {
        let tShirt = UIView()
        
        let _2 = UIBezierPath()
        _2.move(to: CGPoint(x: 1.45, y: 0))
        _2.addCurve(to: CGPoint(x: 2.25, y: 3.99), controlPoint1: CGPoint(x: 2.19, y: 2.04), controlPoint2: CGPoint(x: 2.46, y: 3.37))
        _2.addCurve(to: CGPoint(x: 0, y: 4.31), controlPoint1: CGPoint(x: 2.05, y: 4.62), controlPoint2: CGPoint(x: 1.3, y: 4.72))
        _2.addLine(to: CGPoint(x: 1.45, y: 0))
        _2.close()
        let _22 = CAShapeLayer()
        _22.path = _2.cgPath
        _22.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _22.position = CGPoint(x: 84.7, y: 145)
        
        let _1 = UIBezierPath()
        _1.move(to: CGPoint(x: 0.08, y: 2.93))
        _1.addCurve(to: CGPoint(x: 2.18, y: 0), controlPoint1: CGPoint(x: 0.31, y: 2.13), controlPoint2: CGPoint(x: 1.01, y: 1.15))
        _1.addLine(to: CGPoint(x: 0.77, y: 4.73))
        _1.addCurve(to: CGPoint(x: 0.08, y: 2.93), controlPoint1: CGPoint(x: 0.09, y: 4.33), controlPoint2: CGPoint(x: -0.14, y: 3.73))
        _1.close()
        let _11 = CAShapeLayer()
        _11.path = _1.cgPath
        _11.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _11.position = CGPoint(x: 69.8, y: 137.05)
        
        let _3 = UIBezierPath()
        _3.move(to: CGPoint(x: 0.28, y: 2.92))
        _3.addCurve(to: CGPoint(x: 0.64, y: 0), controlPoint1: CGPoint(x: -0.19, y: 1.76), controlPoint2: CGPoint(x: -0.07, y: 0.79))
        _3.addLine(to: CGPoint(x: 1.69, y: 3.21))
        _3.addCurve(to: CGPoint(x: 0.28, y: 2.92), controlPoint1: CGPoint(x: 0.92, y: 3.45), controlPoint2: CGPoint(x: 0.46, y: 3.35))
        _3.close()
        let _33 = CAShapeLayer()
        _33.path = _3.cgPath
        _33.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _33.position = CGPoint(x: 168.3, y: 144.5)
        
        let _4 = UIBezierPath()
        _4.move(to: CGPoint(x: 1.53, y: 2.04))
        _4.addCurve(to: CGPoint(x: 0.87, y: 3.03), controlPoint1: CGPoint(x: 1.59, y: 2.56), controlPoint2: CGPoint(x: 1.37, y: 2.89))
        _4.addLine(to: CGPoint.zero)
        _4.addCurve(to: CGPoint(x: 1.53, y: 2.04), controlPoint1: CGPoint(x: 0.95, y: 0.84), controlPoint2: CGPoint(x: 1.46, y: 1.53))
        _4.close()
        let _44 = CAShapeLayer()
        _44.path = _4.cgPath
        _44.fillColor = UIColor(red: 133/255, green: 38/255, blue: 38/255, alpha: 1).cgColor
        _44.position = CGPoint(x: 183.03, y: 141.04)
        
        let bodyTShirt = UIBezierPath()
        bodyTShirt.move(to: CGPoint(x: 41.03, y: 0.05))
        bodyTShirt.addCurve(to: CGPoint(x: 58.75, y: 17.96), controlPoint1: CGPoint(x: 44.84, y: -1.07), controlPoint2: CGPoint(x: 43.31, y: 17.96))
        bodyTShirt.addCurve(to: CGPoint(x: 74.94, y: 0.72), controlPoint1: CGPoint(x: 74.18, y: 17.96), controlPoint2: CGPoint(x: 69.3, y: -0.74))
        bodyTShirt.addCurve(to: CGPoint(x: 95.53, y: 9.4), controlPoint1: CGPoint(x: 81.65, y: 2.46), controlPoint2: CGPoint(x: 90.98, y: 3.32))
        bodyTShirt.addCurve(to: CGPoint(x: 114.55, y: 55.78), controlPoint1: CGPoint(x: 107.69, y: 25.66), controlPoint2: CGPoint(x: 115.77, y: 59.57))
        bodyTShirt.addCurve(to: CGPoint(x: 98.63, y: 60.23), controlPoint1: CGPoint(x: 113.33, y: 51.99), controlPoint2: CGPoint(x: 97.59, y: 57.77))
        bodyTShirt.addCurve(to: CGPoint(x: 92.01, y: 44.4), controlPoint1: CGPoint(x: 99.32, y: 61.87), controlPoint2: CGPoint(x: 97.11, y: 56.6))
        bodyTShirt.addCurve(to: CGPoint(x: 93.14, y: 56.52), controlPoint1: CGPoint(x: 92.87, y: 46.33), controlPoint2: CGPoint(x: 93.24, y: 50.37))
        bodyTShirt.addCurve(to: CGPoint(x: 87.62, y: 82.04), controlPoint1: CGPoint(x: 92.93, y: 68.54), controlPoint2: CGPoint(x: 87.62, y: 73.22))
        bodyTShirt.addCurve(to: CGPoint(x: 95.53, y: 143.24), controlPoint1: CGPoint(x: 87.62, y: 100.7), controlPoint2: CGPoint(x: 96.3, y: 132.7))
        bodyTShirt.addCurve(to: CGPoint(x: 59.78, y: 154.13), controlPoint1: CGPoint(x: 94.76, y: 153.78), controlPoint2: CGPoint(x: 81.77, y: 154.13))
        bodyTShirt.addCurve(to: CGPoint(x: 20.32, y: 146.15), controlPoint1: CGPoint(x: 37.78, y: 154.13), controlPoint2: CGPoint(x: 21.72, y: 155.53))
        bodyTShirt.addCurve(to: CGPoint(x: 25.99, y: 83.28), controlPoint1: CGPoint(x: 18.91, y: 136.77), controlPoint2: CGPoint(x: 25.74, y: 105.88))
        bodyTShirt.addCurve(to: CGPoint(x: 20.36, y: 50.12), controlPoint1: CGPoint(x: 26.16, y: 68.21), controlPoint2: CGPoint(x: 24.29, y: 57.16))
        bodyTShirt.addCurve(to: CGPoint(x: 17.11, y: 61.82), controlPoint1: CGPoint(x: 17.81, y: 59.3), controlPoint2: CGPoint(x: 16.73, y: 63.2))
        bodyTShirt.addCurve(to: CGPoint(x: 0.13, y: 52.73), controlPoint1: CGPoint(x: 17.68, y: 59.76), controlPoint2: CGPoint(x: 1.75, y: 48.8))
        bodyTShirt.addCurve(to: CGPoint(x: 17.97, y: 10.64), controlPoint1: CGPoint(x: -1.5, y: 56.65), controlPoint2: CGPoint(x: 12.81, y: 15.88))
        bodyTShirt.addCurve(to: CGPoint(x: 41.03, y: 0.05), controlPoint1: CGPoint(x: 24.57, y: 3.94), controlPoint2: CGPoint(x: 32.66, y: 2.5))
        bodyTShirt.close()
        let bt = CAShapeLayer()
        bt.path = bodyTShirt.cgPath
        bt.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        bt.position = CGPoint(x: 69.88, y: 87)
        
        [_22, _11, _33, _44, bt].forEach {tShirt.layer.addSublayer($0)}
        return tShirt
    }
    
    class func createJeans() -> UIView {
        
        let jeans = UIView()
        
        let rightJeans = UIBezierPath()
        rightJeans.move(to: CGPoint.zero)
        rightJeans.addLine(to: CGPoint(x: 51.59, y: 0))
        rightJeans.addCurve(to: CGPoint(x: 60.27, y: 91.8), controlPoint1: CGPoint(x: 56.07, y: 43.31), controlPoint2: CGPoint(x: 58.96, y: 73.91))
        rightJeans.addCurve(to: CGPoint(x: 68.5, y: 225.55), controlPoint1: CGPoint(x: 66.62, y: 179.14), controlPoint2: CGPoint(x: 68.76, y: 224.32))
        rightJeans.addCurve(to: CGPoint(x: 62.52, y: 227.95), controlPoint1: CGPoint(x: 68.28, y: 226.55), controlPoint2: CGPoint(x: 64.9, y: 227.84))
        rightJeans.addCurve(to: CGPoint(x: 54.07, y: 227.22), controlPoint1: CGPoint(x: 59.17, y: 228.1), controlPoint2: CGPoint(x: 54.82, y: 228.37))
        rightJeans.addCurve(to: CGPoint(x: 40.06, y: 147.65), controlPoint1: CGPoint(x: 52.77, y: 225.26), controlPoint2: CGPoint(x: 47.08, y: 176.12))
        rightJeans.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 35.37, y: 128.67), controlPoint2: CGPoint(x: 22.02, y: 79.46))
        rightJeans.close()
        let rj = CAShapeLayer()
        rj.path = rightJeans.cgPath
        rj.fillColor = UIColor(red: 76/255, green: 95/255, blue: 176/255, alpha: 1).cgColor
        rj.position = CGPoint(x: 112.98, y: 232)
        
        let leftJeans = UIBezierPath()
        leftJeans.move(to: CGPoint(x: 3.54, y: 0))
        leftJeans.addLine(to: CGPoint(x: 48.73, y: 0))
        leftJeans.addCurve(to: CGPoint(x: 34.88, y: 140.12), controlPoint1: CGPoint(x: 44.26, y: 62.64), controlPoint2: CGPoint(x: 39.64, y: 109.34))
        leftJeans.addCurve(to: CGPoint(x: 16.71, y: 228.54), controlPoint1: CGPoint(x: 27.75, y: 186.27), controlPoint2: CGPoint(x: 17.73, y: 225.7))
        leftJeans.addCurve(to: CGPoint(x: 9.12, y: 230.2), controlPoint1: CGPoint(x: 16.18, y: 230.01), controlPoint2: CGPoint(x: 13.37, y: 230.34))
        leftJeans.addCurve(to: CGPoint(x: 3.03, y: 228.54), controlPoint1: CGPoint(x: 4.88, y: 230.06), controlPoint2: CGPoint(x: 3.03, y: 229.44))
        leftJeans.addCurve(to: CGPoint(x: 9.12, y: 149.83), controlPoint1: CGPoint(x: 3.03, y: 226.67), controlPoint2: CGPoint(x: 9.12, y: 181.72))
        leftJeans.addCurve(to: CGPoint(x: 0.28, y: 32.98), controlPoint1: CGPoint(x: 9.12, y: 127.74), controlPoint2: CGPoint(x: 1.44, y: 46.15))
        leftJeans.addCurve(to: CGPoint(x: 3.54, y: 0), controlPoint1: CGPoint(x: -0.57, y: 23.43), controlPoint2: CGPoint(x: 0.52, y: 12.43))
        leftJeans.close()
        let lj = CAShapeLayer()
        lj.path = leftJeans.cgPath
        lj.fillColor = UIColor(red: 98/255, green: 120/255, blue: 217/255, alpha: 1).cgColor
        lj.position = CGPoint(x: 88.41, y: 232)
        
        [rj, lj].forEach {jeans.layer.addSublayer($0)}
        return jeans
        
    }
    
    class func createLongSkirt() -> UIView {
        let skirt = UIView()
        let womanLongSkirtLayer = UIBezierPath()
        womanLongSkirtLayer.move(to: CGPoint(x: 2.71, y: 0))
        womanLongSkirtLayer.addLine(to: CGPoint(x: 75.9, y: 0))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 82.46, y: 66.25), controlPoint1: CGPoint(x: 79.14, y: 31.15), controlPoint2: CGPoint(x: 81.33, y: 53.23))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 86.64, y: 140.91), controlPoint1: CGPoint(x: 85.26, y: 98.52), controlPoint2: CGPoint(x: 85.58, y: 123.65))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 89.51, y: 170.04), controlPoint1: CGPoint(x: 87.78, y: 159.37), controlPoint2: CGPoint(x: 89.85, y: 169.02))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 45.05, y: 183.97), controlPoint1: CGPoint(x: 88.2, y: 173.86), controlPoint2: CGPoint(x: 65.15, y: 183.28))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 6.67, y: 170.04), controlPoint1: CGPoint(x: 24.94, y: 184.66), controlPoint2: CGPoint(x: 7.92, y: 174.24))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 6.67, y: 137.36), controlPoint1: CGPoint(x: 6.32, y: 168.85), controlPoint2: CGPoint(x: 7.51, y: 152.88))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 0, y: 24.98), controlPoint1: CGPoint(x: 5.15, y: 109.43), controlPoint2: CGPoint(x: 0, y: 33.72))
        womanLongSkirtLayer.addCurve(to: CGPoint(x: 2.71, y: 0), controlPoint1: CGPoint(x: 0, y: 19.15), controlPoint2: CGPoint(x: 0.9, y: 10.83))
        womanLongSkirtLayer.close()
        
        let sk = CAShapeLayer()
        sk.path = womanLongSkirtLayer.cgPath
        sk.fillColor = UIColor(red: 133/255, green: 38/355, blue: 38/255, alpha: 1).cgColor
        sk.position = CGPoint(x: 89.28, y: 231)
        skirt.layer.addSublayer(sk)
        return skirt
    }
    
    class func createSkirt() -> UIView {
        let skirt = UIView()
        
        let womanSkirtLayer = UIBezierPath()
        womanSkirtLayer.move(to: CGPoint(x: 5.52, y: 0))
        womanSkirtLayer.addLine(to: CGPoint(x: 77.67, y: 0))
        womanSkirtLayer.addCurve(to: CGPoint(x: 83.44, y: 69.71), controlPoint1: CGPoint(x: 80.27, y: 35.45), controlPoint2: CGPoint(x: 82.19, y: 58.69))
        womanSkirtLayer.addCurve(to: CGPoint(x: 89.11, y: 100.42), controlPoint1: CGPoint(x: 85.65, y: 89.17), controlPoint2: CGPoint(x: 89.58, y: 99.05))
        womanSkirtLayer.addCurve(to: CGPoint(x: 48.25, y: 116.95), controlPoint1: CGPoint(x: 87.81, y: 104.23), controlPoint2: CGPoint(x: 68.3, y: 116.27))
        womanSkirtLayer.addCurve(to: CGPoint(x: 7.12, y: 106.33), controlPoint1: CGPoint(x: 28.2, y: 117.64), controlPoint2: CGPoint(x: 8.36, y: 110.51))
        womanSkirtLayer.addCurve(to: CGPoint(x: 0.04, y: 26.53), controlPoint1: CGPoint(x: 6.02, y: 102.62), controlPoint2: CGPoint(x: -0.58, y: 37.86))
        womanSkirtLayer.addCurve(to: CGPoint(x: 5.52, y: 0), controlPoint1: CGPoint(x: 0.45, y: 18.98), controlPoint2: CGPoint(x: 2.28, y: 10.14))
        womanSkirtLayer.close()
        let sk = CAShapeLayer()
        sk.path = womanSkirtLayer.cgPath
        sk.fillColor = UIColor(red: 133/255, green: 38/355, blue: 38/255, alpha: 1).cgColor
        sk.position = CGPoint(x: 86.85, y: 228)
        skirt.layer.addSublayer(sk)
        return skirt
    }
    
    class func createSandals() -> UIView {
        let sandals = UIView()
        
        let sandalRight = UIBezierPath()
        sandalRight.move(to: CGPoint(x: 1.12, y: 0.01))
        sandalRight.addCurve(to: CGPoint(x: 17.32, y: 5.86), controlPoint1: CGPoint(x: 2.65, y: -0.24), controlPoint2: CGPoint(x: 10.46, y: 5.4))
        sandalRight.addCurve(to: CGPoint(x: 31.33, y: 5.42), controlPoint1: CGPoint(x: 22.8, y: 6.22), controlPoint2: CGPoint(x: 27.07, y: 5.79))
        sandalRight.addCurve(to: CGPoint(x: 43.33, y: 5.15), controlPoint1: CGPoint(x: 36.73, y: 4.94), controlPoint2: CGPoint(x: 41.46, y: 4.69))
        sandalRight.addCurve(to: CGPoint(x: 44.07, y: 12.58), controlPoint1: CGPoint(x: 48.65, y: 6.46), controlPoint2: CGPoint(x: 46.37, y: 12.58))
        sandalRight.addCurve(to: CGPoint(x: 0.36, y: 12.2), controlPoint1: CGPoint(x: 38.81, y: 12.58), controlPoint2: CGPoint(x: 1.13, y: 12.84))
        sandalRight.addCurve(to: CGPoint(x: 1.12, y: 0.01), controlPoint1: CGPoint(x: -0.42, y: 11.56), controlPoint2: CGPoint(x: 0.17, y: 3.14))
        sandalRight.close()
        let sr = CAShapeLayer()
        sr.path = sandalRight.cgPath
        sr.fillColor = UIColor(red: 94/255, green: 94/255, blue: 94/255, alpha: 1).cgColor
        sr.position = CGPoint(x: 89, y: 477)
        
        let sandalLeft = UIBezierPath()
        sandalLeft.move(to: CGPoint(x: 0.65, y: 0.01))
        sandalLeft.addCurve(to: CGPoint(x: 17.61, y: 5.99), controlPoint1: CGPoint(x: 2.17, y: -0.24), controlPoint2: CGPoint(x: 10.75, y: 5.54))
        sandalLeft.addCurve(to: CGPoint(x: 31.62, y: 5.55), controlPoint1: CGPoint(x: 23.09, y: 6.36), controlPoint2: CGPoint(x: 27.36, y: 5.93))
        sandalLeft.addCurve(to: CGPoint(x: 43.62, y: 5.29), controlPoint1: CGPoint(x: 37.02, y: 5.08), controlPoint2: CGPoint(x: 41.75, y: 4.83))
        sandalLeft.addCurve(to: CGPoint(x: 44.36, y: 12.72), controlPoint1: CGPoint(x: 48.94, y: 6.6), controlPoint2: CGPoint(x: 46.66, y: 12.72))
        sandalLeft.addCurve(to: CGPoint(x: 0.65, y: 12.34), controlPoint1: CGPoint(x: 39.1, y: 12.72), controlPoint2: CGPoint(x: 1.42, y: 12.98))
        sandalLeft.addCurve(to: CGPoint(x: 0.65, y: 0.01), controlPoint1: CGPoint(x: -0.13, y: 11.7), controlPoint2: CGPoint(x: -0.3, y: 3.14))
        sandalLeft.close()
        let sl = CAShapeLayer()
        sl.path = sandalLeft.cgPath
        sl.fillColor = UIColor(red: 94/255, green: 94/255, blue: 94/255, alpha: 1).cgColor
        sl.position = CGPoint(x: 169.71, y: 475.86)
        
        [sr, sl].forEach {sandals.layer.addSublayer($0)}
        return sandals
    }
    
    class func createBoots() -> UIView {
        
        let boots = UIView()
        
        let rightBoot = UIBezierPath()
        rightBoot.move(to: CGPoint(x: 9.33, y: 0))
        rightBoot.addCurve(to: CGPoint(x: 18.97, y: 1.06), controlPoint1: CGPoint(x: 10.98, y: 0.71), controlPoint2: CGPoint(x: 14.19, y: 1.06))
        rightBoot.addCurve(to: CGPoint(x: 32.09, y: 0), controlPoint1: CGPoint(x: 23.75, y: 1.06), controlPoint2: CGPoint(x: 28.12, y: 0.71))
        rightBoot.addCurve(to: CGPoint(x: 24.41, y: 39.58), controlPoint1: CGPoint(x: 28.41, y: 19.14), controlPoint2: CGPoint(x: 25.86, y: 32.34))
        rightBoot.addCurve(to: CGPoint(x: 18.97, y: 76.04), controlPoint1: CGPoint(x: 20.84, y: 57.48), controlPoint2: CGPoint(x: 18.07, y: 71.47))
        rightBoot.addCurve(to: CGPoint(x: 42.56, y: 82.78), controlPoint1: CGPoint(x: 19.84, y: 80.4), controlPoint2: CGPoint(x: 34.87, y: 82.08))
        rightBoot.addCurve(to: CGPoint(x: 46.37, y: 92.46), controlPoint1: CGPoint(x: 49.65, y: 83.42), controlPoint2: CGPoint(x: 50.42, y: 89.96))
        rightBoot.addCurve(to: CGPoint(x: 16.67, y: 93.44), controlPoint1: CGPoint(x: 42.32, y: 94.96), controlPoint2: CGPoint(x: 19.09, y: 93.44))
        rightBoot.addCurve(to: CGPoint(x: 12.5, y: 92.05), controlPoint1: CGPoint(x: 14.26, y: 93.44), controlPoint2: CGPoint(x: 13.15, y: 92.05))
        rightBoot.addCurve(to: CGPoint(x: 11.2, y: 93.44), controlPoint1: CGPoint(x: 12.07, y: 92.05), controlPoint2: CGPoint(x: 11.64, y: 92.51))
        rightBoot.addCurve(to: CGPoint(x: 0.03, y: 92.75), controlPoint1: CGPoint(x: 4.12, y: 93.9), controlPoint2: CGPoint(x: 0.39, y: 93.67))
        rightBoot.addCurve(to: CGPoint(x: 9.33, y: 0), controlPoint1: CGPoint(x: -0.33, y: 91.83), controlPoint2: CGPoint(x: 2.77, y: 60.91))
        rightBoot.close()
        let rb = CAShapeLayer()
        rb.path = rightBoot.cgPath
        rb.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        rb.position = CGPoint(x: 87.51, y: 396)
        
        let leftBoot = UIBezierPath()
        leftBoot.move(to: CGPoint.zero)
        leftBoot.addCurve(to: CGPoint(x: 10.67, y: 1.31), controlPoint1: CGPoint(x: 2.33, y: 0.87), controlPoint2: CGPoint(x: 5.89, y: 1.31))
        leftBoot.addCurve(to: CGPoint(x: 21.99, y: 0), controlPoint1: CGPoint(x: 15.45, y: 1.31), controlPoint2: CGPoint(x: 19.22, y: 0.87))
        leftBoot.addCurve(to: CGPoint(x: 27.31, y: 72.9), controlPoint1: CGPoint(x: 24.93, y: 45.55), controlPoint2: CGPoint(x: 26.71, y: 69.85))
        leftBoot.addCurve(to: CGPoint(x: 53.2, y: 82.78), controlPoint1: CGPoint(x: 28.17, y: 77.26), controlPoint2: CGPoint(x: 45.5, y: 82.78))
        leftBoot.addCurve(to: CGPoint(x: 57.01, y: 92.46), controlPoint1: CGPoint(x: 62.13, y: 82.78), controlPoint2: CGPoint(x: 61.06, y: 89.96))
        leftBoot.addCurve(to: CGPoint(x: 27.31, y: 93.44), controlPoint1: CGPoint(x: 52.96, y: 94.96), controlPoint2: CGPoint(x: 29.73, y: 93.44))
        leftBoot.addCurve(to: CGPoint(x: 23.14, y: 92.05), controlPoint1: CGPoint(x: 24.9, y: 93.44), controlPoint2: CGPoint(x: 23.79, y: 92.05))
        leftBoot.addCurve(to: CGPoint(x: 21.84, y: 93.44), controlPoint1: CGPoint(x: 22.71, y: 92.05), controlPoint2: CGPoint(x: 22.28, y: 92.51))
        leftBoot.addCurve(to: CGPoint(x: 10.67, y: 92.75), controlPoint1: CGPoint(x: 14.76, y: 93.9), controlPoint2: CGPoint(x: 11.03, y: 93.67))
        leftBoot.addCurve(to: CGPoint(x: 7.97, y: 55.83), controlPoint1: CGPoint(x: 10.44, y: 92.18), controlPoint2: CGPoint(x: 10.6, y: 79.23))
        leftBoot.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 6.88, y: 46.14), controlPoint2: CGPoint(x: 4.22, y: 27.53))
        leftBoot.close()
        let lb = CAShapeLayer()
        lb.path = leftBoot.cgPath
        lb.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        lb.position = CGPoint(x: 156.31, y: 396)
        
        [rb, lb].forEach {boots.layer.addSublayer($0)}
        return boots
    }
    
    class func createGymShoes() -> UIView {
        let shoes = UIView()
        
        let gymShoeRight = UIBezierPath()
        gymShoeRight.move(to: CGPoint(x: 0.44, y: 6.86))
        gymShoeRight.addCurve(to: CGPoint(x: 2.11, y: 0.05), controlPoint1: CGPoint(x: 0.44, y: 6.32), controlPoint2: CGPoint(x: -1.29, y: -0.06))
        gymShoeRight.addCurve(to: CGPoint(x: 8.73, y: 2.85), controlPoint1: CGPoint(x: 3.63, y: 0.1), controlPoint2: CGPoint(x: 3.29, y: 2.85))
        gymShoeRight.addCurve(to: CGPoint(x: 14.94, y: 0.05), controlPoint1: CGPoint(x: 13.23, y: 2.85), controlPoint2: CGPoint(x: 11.71, y: 0.35))
        gymShoeRight.addCurve(to: CGPoint(x: 45.08, y: 7.36), controlPoint1: CGPoint(x: 22.56, y: -0.64), controlPoint2: CGPoint(x: 22.64, y: 5.8))
        gymShoeRight.addCurve(to: CGPoint(x: 47.66, y: 17.47), controlPoint1: CGPoint(x: 49.94, y: 7.7), controlPoint2: CGPoint(x: 52.05, y: 17.47))
        gymShoeRight.addCurve(to: CGPoint(x: 0.44, y: 17.47), controlPoint1: CGPoint(x: 43.27, y: 17.47), controlPoint2: CGPoint(x: 1.21, y: 18.1))
        gymShoeRight.addCurve(to: CGPoint(x: 0.44, y: 6.86), controlPoint1: CGPoint(x: -0.33, y: 16.83), controlPoint2: CGPoint(x: 0.44, y: 9.34))
        gymShoeRight.close()
        let right = CAShapeLayer()
        right.path = gymShoeRight.cgPath
        right.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        right.position = CGPoint(x: 88, y: 472)
        
        let gymShoeLeft = UIBezierPath()
        gymShoeLeft.move(to: CGPoint(x: 0.44, y: 6.86))
        gymShoeLeft.addCurve(to: CGPoint(x: 2.11, y: 0.05), controlPoint1: CGPoint(x: 0.44, y: 6.32), controlPoint2: CGPoint(x: -1.29, y: -0.06))
        gymShoeLeft.addCurve(to: CGPoint(x: 8.73, y: 2.85), controlPoint1: CGPoint(x: 3.63, y: 0.1), controlPoint2: CGPoint(x: 3.29, y: 2.85))
        gymShoeLeft.addCurve(to: CGPoint(x: 14.94, y: 0.05), controlPoint1: CGPoint(x: 13.23, y: 2.85), controlPoint2: CGPoint(x: 11.71, y: 0.35))
        gymShoeLeft.addCurve(to: CGPoint(x: 45.08, y: 7.36), controlPoint1: CGPoint(x: 22.56, y: -0.64), controlPoint2: CGPoint(x: 22.64, y: 5.8))
        gymShoeLeft.addCurve(to: CGPoint(x: 47.66, y: 17.47), controlPoint1: CGPoint(x: 49.94, y: 7.7), controlPoint2: CGPoint(x: 52.05, y: 17.47))
        gymShoeLeft.addCurve(to: CGPoint(x: 0.44, y: 17.47), controlPoint1: CGPoint(x: 43.27, y: 17.47), controlPoint2: CGPoint(x: 1.21, y: 18.1))
        gymShoeLeft.addCurve(to: CGPoint(x: 0.44, y: 6.86), controlPoint1: CGPoint(x: -0.33, y: 16.83), controlPoint2: CGPoint(x: 0.44, y: 9.34))
        gymShoeLeft.close()
        let left = CAShapeLayer()
        left.path = gymShoeLeft.cgPath
        left.fillColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1).cgColor
        left.position = CGPoint(x: 167.3, y: 472)
        
        [right, left].forEach {shoes.layer.addSublayer($0)}
        
        return shoes
    }
    
    class func createBobHairCutForCell() -> UIView {
        
        let bob = UIView()
        
        let bobBack = UIBezierPath()
        bobBack.move(to: CGPoint(x: 12.12, y: 15.8))
        bobBack.addCurve(to: CGPoint(x: 32.54, y: 0.5), controlPoint1: CGPoint(x: 15.96, y: 7.46), controlPoint2: CGPoint(x: 22.77, y: 2.36))
        bobBack.addCurve(to: CGPoint(x: 64.87, y: 14.31), controlPoint1: CGPoint(x: 46.11, y: -1.62), controlPoint2: CGPoint(x: 56.89, y: 2.98))
        bobBack.addCurve(to: CGPoint(x: 72.06, y: 67.31), controlPoint1: CGPoint(x: 76.85, y: 31.31), controlPoint2: CGPoint(x: 77.18, y: 60.35))
        bobBack.addCurve(to: CGPoint(x: 4.23, y: 61.93), controlPoint1: CGPoint(x: 66.95, y: 74.28), controlPoint2: CGPoint(x: 15.17, y: 73.31))
        bobBack.addCurve(to: CGPoint(x: 12.12, y: 15.8), controlPoint1: CGPoint(x: -6.71, y: 50.55), controlPoint2: CGPoint(x: 6.36, y: 28.31))
        bobBack.close()
        let bb = CAShapeLayer()
        bb.path = bobBack.cgPath
        bb.fillColor =  UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bb.position = CGPoint(x: -14.04, y: -3)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25, y: 68.25))
        headNeck.addLine(to: CGPoint(x: 10.36, y: 66.66))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 0.24, y: 0.61)
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 17.73, y: 15.55))
        bobLeft.addCurve(to: CGPoint(x: 38.14, y: 0.25), controlPoint1: CGPoint(x: 21.57, y: 7.21), controlPoint2: CGPoint(x: 28.38, y: 2.11))
        bobLeft.addCurve(to: CGPoint(x: 49.01, y: 0.25), controlPoint1: CGPoint(x: 43.19, y: -0.08), controlPoint2: CGPoint(x: 46.81, y: -0.08))
        bobLeft.addCurve(to: CGPoint(x: 67.88, y: 13.4), controlPoint1: CGPoint(x: 52.31, y: 0.76), controlPoint2: CGPoint(x: 65.47, y: 4.4))
        bobLeft.addCurve(to: CGPoint(x: 49.01, y: 25.31), controlPoint1: CGPoint(x: 68.74, y: 16.63), controlPoint2: CGPoint(x: 62.23, y: 19.78))
        bobLeft.addCurve(to: CGPoint(x: 38.14, y: 32.11), controlPoint1: CGPoint(x: 46.83, y: 26.23), controlPoint2: CGPoint(x: 43.21, y: 28.49))
        bobLeft.addCurve(to: CGPoint(x: 30.18, y: 27.4), controlPoint1: CGPoint(x: 36.25, y: 26.74), controlPoint2: CGPoint(x: 33.6, y: 25.17))
        bobLeft.addCurve(to: CGPoint(x: 29.75, y: 39.79), controlPoint1: CGPoint(x: 26.96, y: 29.49), controlPoint2: CGPoint(x: 28.02, y: 36.63))
        bobLeft.addCurve(to: CGPoint(x: 33.08, y: 40.94), controlPoint1: CGPoint(x: 30.79, y: 41.68), controlPoint2: CGPoint(x: 33.08, y: 40.49))
        bobLeft.addCurve(to: CGPoint(x: 29.57, y: 69.71), controlPoint1: CGPoint(x: 33.08, y: 46.11), controlPoint2: CGPoint(x: 38.2, y: 69.71))
        bobLeft.addCurve(to: CGPoint(x: 1.68, y: 64.96), controlPoint1: CGPoint(x: 20.94, y: 69.71), controlPoint2: CGPoint(x: 4.66, y: 66.15))
        bobLeft.addCurve(to: CGPoint(x: 17.73, y: 15.55), controlPoint1: CGPoint(x: -5.42, y: 62.13), controlPoint2: CGPoint(x: 11.96, y: 28.06))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor =  UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: -19.65, y: -3)
        
        
        [bb, hn, bl].forEach {bob.layer.addSublayer($0)}
        return bob
    }
    
    class func createBobHairCut() -> UIView {
        
        let bob = UIView()
        
        let bobBack = UIBezierPath()
        bobBack.move(to: CGPoint(x: 12.12, y: 15.8))
        bobBack.addCurve(to: CGPoint(x: 32.54, y: 0.5), controlPoint1: CGPoint(x: 15.96, y: 7.46), controlPoint2: CGPoint(x: 22.77, y: 2.36))
        bobBack.addCurve(to: CGPoint(x: 64.87, y: 14.31), controlPoint1: CGPoint(x: 46.11, y: -1.62), controlPoint2: CGPoint(x: 56.89, y: 2.98))
        bobBack.addCurve(to: CGPoint(x: 72.06, y: 67.31), controlPoint1: CGPoint(x: 76.85, y: 31.31), controlPoint2: CGPoint(x: 77.18, y: 60.35))
        bobBack.addCurve(to: CGPoint(x: 4.23, y: 61.93), controlPoint1: CGPoint(x: 66.95, y: 74.28), controlPoint2: CGPoint(x: 15.17, y: 73.31))
        bobBack.addCurve(to: CGPoint(x: 12.12, y: 15.8), controlPoint1: CGPoint(x: -6.71, y: 50.55), controlPoint2: CGPoint(x: 6.36, y: 28.31))
        bobBack.close()
        let bb = CAShapeLayer()
        bb.path = bobBack.cgPath
        bb.fillColor =  UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bb.position = CGPoint(x: 94.31, y: 5.4)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25, y: 68.25))
        headNeck.addLine(to: CGPoint(x: 10.36, y: 66.66))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 110, y: 9.25)
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 17.73, y: 15.55))
        bobLeft.addCurve(to: CGPoint(x: 38.14, y: 0.25), controlPoint1: CGPoint(x: 21.57, y: 7.21), controlPoint2: CGPoint(x: 28.38, y: 2.11))
        bobLeft.addCurve(to: CGPoint(x: 49.01, y: 0.25), controlPoint1: CGPoint(x: 43.19, y: -0.08), controlPoint2: CGPoint(x: 46.81, y: -0.08))
        bobLeft.addCurve(to: CGPoint(x: 67.88, y: 13.4), controlPoint1: CGPoint(x: 52.31, y: 0.76), controlPoint2: CGPoint(x: 65.47, y: 4.4))
        bobLeft.addCurve(to: CGPoint(x: 49.01, y: 25.31), controlPoint1: CGPoint(x: 68.74, y: 16.63), controlPoint2: CGPoint(x: 62.23, y: 19.78))
        bobLeft.addCurve(to: CGPoint(x: 38.14, y: 32.11), controlPoint1: CGPoint(x: 46.83, y: 26.23), controlPoint2: CGPoint(x: 43.21, y: 28.49))
        bobLeft.addCurve(to: CGPoint(x: 30.18, y: 27.4), controlPoint1: CGPoint(x: 36.25, y: 26.74), controlPoint2: CGPoint(x: 33.6, y: 25.17))
        bobLeft.addCurve(to: CGPoint(x: 29.75, y: 39.79), controlPoint1: CGPoint(x: 26.96, y: 29.49), controlPoint2: CGPoint(x: 28.02, y: 36.63))
        bobLeft.addCurve(to: CGPoint(x: 33.08, y: 40.94), controlPoint1: CGPoint(x: 30.79, y: 41.68), controlPoint2: CGPoint(x: 33.08, y: 40.49))
        bobLeft.addCurve(to: CGPoint(x: 29.57, y: 69.71), controlPoint1: CGPoint(x: 33.08, y: 46.11), controlPoint2: CGPoint(x: 38.2, y: 69.71))
        bobLeft.addCurve(to: CGPoint(x: 1.68, y: 64.96), controlPoint1: CGPoint(x: 20.94, y: 69.71), controlPoint2: CGPoint(x: 4.66, y: 66.15))
        bobLeft.addCurve(to: CGPoint(x: 17.73, y: 15.55), controlPoint1: CGPoint(x: -5.42, y: 62.13), controlPoint2: CGPoint(x: 11.96, y: 28.06))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor =  UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 88.7, y: 5.4)
        
        
        [bb, hn, bl].forEach {bob.layer.addSublayer($0)}
        return bob
    }
    
    class func createScarf() -> UIView {
        
        let scarf = UIView()
        
        let innerScarf = UIBezierPath()
        innerScarf.move(to: CGPoint(x: 0.85, y: 1.21))
        innerScarf.addCurve(to: CGPoint(x: 9.66, y: 0.92), controlPoint1: CGPoint(x: 2.74, y: -0.53), controlPoint2: CGPoint(x: 5.98, y: -0.18))
        innerScarf.addCurve(to: CGPoint(x: 20.2, y: 4.91), controlPoint1: CGPoint(x: 14.36, y: 2.32), controlPoint2: CGPoint(x: 18.07, y: 3.56))
        innerScarf.addCurve(to: CGPoint(x: 29.13, y: 13.61), controlPoint1: CGPoint(x: 22.57, y: 6.4), controlPoint2: CGPoint(x: 28.12, y: 8.69))
        innerScarf.addCurve(to: CGPoint(x: 26.09, y: 20.66), controlPoint1: CGPoint(x: 29.37, y: 14.82), controlPoint2: CGPoint(x: 28.36, y: 17.17))
        innerScarf.addCurve(to: CGPoint(x: 8.41, y: 20.66), controlPoint1: CGPoint(x: 17.42, y: 22.16), controlPoint2: CGPoint(x: 11.52, y: 22.16))
        innerScarf.addCurve(to: CGPoint(x: 1.28, y: 8.66), controlPoint1: CGPoint(x: 5.3, y: 19.15), controlPoint2: CGPoint(x: 2.92, y: 15.15))
        innerScarf.addCurve(to: CGPoint(x: 0.85, y: 1.21), controlPoint1: CGPoint(x: -0.27, y: 4.86), controlPoint2: CGPoint(x: -0.41, y: 2.38))
        innerScarf.close()
        let iscarf = CAShapeLayer()
        iscarf.path = innerScarf.cgPath
        iscarf.fillColor = UIColor(red: 28/255, green: 42/255, blue: 103/255, alpha: 1).cgColor
        iscarf.position = CGPoint(x: 114, y: 63)
        
        let rightScarf = UIBezierPath()
        rightScarf.move(to: CGPoint(x: 12.52, y: 1.86))
        rightScarf.addCurve(to: CGPoint(x: 20.38, y: 1.86), controlPoint1: CGPoint(x: 15.23, y: -2.08), controlPoint2: CGPoint(x: 18.02, y: 1.4))
        rightScarf.addCurve(to: CGPoint(x: 27.08, y: 2.58), controlPoint1: CGPoint(x: 22.73, y: 2.32), controlPoint2: CGPoint(x: 25.41, y: 0.8))
        rightScarf.addCurve(to: CGPoint(x: 27.08, y: 23.16), controlPoint1: CGPoint(x: 28.76, y: 4.36), controlPoint2: CGPoint(x: 27.08, y: 12.35))
        rightScarf.addCurve(to: CGPoint(x: 30.23, y: 49.58), controlPoint1: CGPoint(x: 27.09, y: 33.97), controlPoint2: CGPoint(x: 33.31, y: 42.49))
        rightScarf.addCurve(to: CGPoint(x: 15.4, y: 51.97), controlPoint1: CGPoint(x: 28.83, y: 52.8), controlPoint2: CGPoint(x: 20.29, y: 50.83))
        rightScarf.addCurve(to: CGPoint(x: 1.67, y: 51.96), controlPoint1: CGPoint(x: 9.56, y: 53.32), controlPoint2: CGPoint(x: 4.76, y: 53.83))
        rightScarf.addCurve(to: CGPoint(x: 3.13, y: 21.91), controlPoint1: CGPoint(x: -1.81, y: 49.86), controlPoint2: CGPoint(x: 0.88, y: 33))
        rightScarf.addCurve(to: CGPoint(x: 12.52, y: 1.86), controlPoint1: CGPoint(x: 5.38, y: 10.83), controlPoint2: CGPoint(x: 9.81, y: 5.8))
        rightScarf.close()
        let rscarf = CAShapeLayer()
        rscarf.path = rightScarf.cgPath
        rscarf.fillColor = UIColor(red: 51/255, green: 67/255, blue: 141/255, alpha: 1).cgColor
        rscarf.transform = CATransform3DMakeRotation(371 * CGFloat.pi/180, 0, 0, 1)
        rscarf.position = CGPoint(x: 110, y: 94)
        
        let leftScarf = UIBezierPath()
        leftScarf.move(to: CGPoint(x: 11.75, y: 1.86))
        leftScarf.addCurve(to: CGPoint(x: 19.61, y: 1.86), controlPoint1: CGPoint(x: 14.46, y: -2.08), controlPoint2: CGPoint(x: 17.25, y: 1.4))
        leftScarf.addCurve(to: CGPoint(x: 26.31, y: 2.58), controlPoint1: CGPoint(x: 21.96, y: 2.32), controlPoint2: CGPoint(x: 24.64, y: 0.8))
        leftScarf.addCurve(to: CGPoint(x: 26.32, y: 23.16), controlPoint1: CGPoint(x: 27.99, y: 4.36), controlPoint2: CGPoint(x: 26.32, y: 12.35))
        leftScarf.addCurve(to: CGPoint(x: 29.86, y: 55.79), controlPoint1: CGPoint(x: 26.32, y: 33.97), controlPoint2: CGPoint(x: 32.94, y: 48.7))
        leftScarf.addCurve(to: CGPoint(x: 15.13, y: 58.65), controlPoint1: CGPoint(x: 28.46, y: 59.01), controlPoint2: CGPoint(x: 20.02, y: 57.52))
        leftScarf.addCurve(to: CGPoint(x: 2.05, y: 61.19), controlPoint1: CGPoint(x: 9.29, y: 60), controlPoint2: CGPoint(x: 5.14, y: 63.06))
        leftScarf.addCurve(to: CGPoint(x: 2.36, y: 21.91), controlPoint1: CGPoint(x: -1.44, y: 59.08), controlPoint2: CGPoint(x: 0.11, y: 32.99))
        leftScarf.addCurve(to: CGPoint(x: 11.75, y: 1.86), controlPoint1: CGPoint(x: 4.61, y: 10.83), controlPoint2: CGPoint(x: 9.04, y: 5.8))
        leftScarf.close()
        let lscarf = CAShapeLayer()
        lscarf.path = rightScarf.cgPath
        lscarf.fillColor = UIColor(red: 51/255, green: 67/255, blue: 141/255, alpha: 1).cgColor
        lscarf.transform = CATransform3DMakeRotation(15 * CGFloat.pi/180, 0, 0, 1)
        lscarf.position = CGPoint(x: 155, y: 95)
        lscarf.transform = CATransform3DConcat(lscarf.transform, CATransform3DMakeRotation(CGFloat(Double.pi),0.0,1.0,0.0))
        
        let neck = UIBezierPath()
        neck.move(to: CGPoint(x: 2.64, y: 0))
        neck.addLine(to: CGPoint(x: 15.16, y: 11.21))
        neck.addLine(to: CGPoint(x: 17.68, y: 33.26))
        neck.addLine(to: CGPoint(x: 0, y: 33.2))
        neck.addLine(to: CGPoint(x: 2.64, y: 0))
        neck.close()
        let n = CAShapeLayer()
        n.path = neck.cgPath
        n.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        n.position = CGPoint(x: 118.3, y: 55.43)
        
        let mainScarf = UIBezierPath()
        mainScarf.move(to: CGPoint(x: 13.37, y: 0.63))
        mainScarf.addCurve(to: CGPoint(x: 26.16, y: 16.87), controlPoint1: CGPoint(x: 11.74, y: 5.76), controlPoint2: CGPoint(x: 13.74, y: 14.04))
        mainScarf.addCurve(to: CGPoint(x: 45.82, y: 10.1), controlPoint1: CGPoint(x: 38.58, y: 19.7), controlPoint2: CGPoint(x: 41.03, y: 7.04))
        mainScarf.addCurve(to: CGPoint(x: 46.23, y: 35.58), controlPoint1: CGPoint(x: 50.6, y: 13.16), controlPoint2: CGPoint(x: 52.81, y: 33.23))
        mainScarf.addCurve(to: CGPoint(x: 25.79, y: 39.09), controlPoint1: CGPoint(x: 39.66, y: 37.92), controlPoint2: CGPoint(x: 37.13, y: 39.09))
        mainScarf.addCurve(to: CGPoint(x: 2.52, y: 31.21), controlPoint1: CGPoint(x: 16.95, y: 39.09), controlPoint2: CGPoint(x: 7.67, y: 35.51))
        mainScarf.addCurve(to: CGPoint(x: 13.37, y: 0.63), controlPoint1: CGPoint(x: -7.33, y: 22.98), controlPoint2: CGPoint(x: 14.99, y: -4.49))
        mainScarf.close()
        let ms = CAShapeLayer()
        ms.path = mainScarf.cgPath
        ms.fillColor = UIColor(red: 59/255, green: 77/255, blue: 157/255, alpha: 1).cgColor
        ms.position = CGPoint(x: 101.94, y: 63.06)
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.1, y: 11.27))
        head.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        head.addCurve(to: CGPoint(x: 19.14, y: 58.03), controlPoint1: CGPoint(x: 55.29, y: 28.47), controlPoint2: CGPoint(x: 55.31, y: 89.72))
        head.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.33, y: 40.1), controlPoint2: CGPoint(x: -2.99, y: 24.74))
        head.close()
        let h = CAShapeLayer()
        h.path = head.cgPath
        h.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        h.position = CGPoint(x: 109.56, y: 9)
        
        [iscarf, rscarf, lscarf, n, ms, h].forEach {scarf.layer.addSublayer($0)}
        
        return scarf
    }
    
    class func createGloves() -> UIView {
        
        let gloves = UIView()
        
        let gloveLeft = UIBezierPath()
        gloveLeft.move(to: CGPoint(x: 1.29, y: 2.43))
        gloveLeft.addLine(to: CGPoint(x: 12.89, y: 0))
        gloveLeft.addCurve(to: CGPoint(x: 14.14, y: 2.76), controlPoint1: CGPoint(x: 13.49, y: 1.16), controlPoint2: CGPoint(x: 13.91, y: 2.08))
        gloveLeft.addCurve(to: CGPoint(x: 24.6, y: 35.23), controlPoint1: CGPoint(x: 14.49, y: 3.78), controlPoint2: CGPoint(x: 29.4, y: 30.16))
        gloveLeft.addCurve(to: CGPoint(x: 8.49, y: 22.7), controlPoint1: CGPoint(x: 19.8, y: 40.29), controlPoint2: CGPoint(x: 11.01, y: 23.79))
        gloveLeft.addCurve(to: CGPoint(x: 0.62, y: 27.47), controlPoint1: CGPoint(x: 5.96, y: 21.62), controlPoint2: CGPoint(x: 2.74, y: 31.67))
        gloveLeft.addCurve(to: CGPoint(x: 2.27, y: 6.47), controlPoint1: CGPoint(x: -1.51, y: 23.27), controlPoint2: CGPoint(x: 2.55, y: 8.41))
        gloveLeft.addCurve(to: CGPoint(x: 1.29, y: 2.43), controlPoint1: CGPoint(x: 2.08, y: 5.18), controlPoint2: CGPoint(x: 1.75, y: 3.83))
        gloveLeft.close()
        let gl = CAShapeLayer()
        gl.path = gloveLeft.cgPath
        gl.fillColor = UIColor(red: 82/255, green: 82/255, blue: 82/255, alpha: 1).cgColor
        gl.position = CGPoint(x: 197, y: 225)
        
        let gloveRight = UIBezierPath()
        gloveRight.move(to: CGPoint(x: 18.97, y: 0))
        gloveRight.addLine(to: CGPoint(x: 31.37, y: 4.47))
        gloveRight.addCurve(to: CGPoint(x: 30.37, y: 9.56), controlPoint1: CGPoint(x: 30.85, y: 5.76), controlPoint2: CGPoint(x: 30.51, y: 7.46))
        gloveRight.addCurve(to: CGPoint(x: 32.96, y: 27.65), controlPoint1: CGPoint(x: 30.16, y: 12.71), controlPoint2: CGPoint(x: 35.46, y: 25.17))
        gloveRight.addCurve(to: CGPoint(x: 23.28, y: 20.78), controlPoint1: CGPoint(x: 30.47, y: 30.13), controlPoint2: CGPoint(x: 27.39, y: 19.48))
        gloveRight.addCurve(to: CGPoint(x: 0.36, y: 29.31), controlPoint1: CGPoint(x: 19.18, y: 22.07), controlPoint2: CGPoint(x: 3.53, y: 35.72))
        gloveRight.addCurve(to: CGPoint(x: 17.26, y: 3.46), controlPoint1: CGPoint(x: -2.81, y: 22.9), controlPoint2: CGPoint(x: 15.99, y: 5.48))
        gloveRight.addCurve(to: CGPoint(x: 18.97, y: 0), controlPoint1: CGPoint(x: 18.1, y: 2.11), controlPoint2: CGPoint(x: 18.67, y: 0.96))
        gloveRight.close()
        let gr = CAShapeLayer()
        gr.path = gloveRight.cgPath
        gr.fillColor = UIColor(red: 82/255, green: 82/255, blue: 82/255, alpha: 1).cgColor
        gr.position = CGPoint(x: 24.5, y: 232)
        
        [gl, gr].forEach {gloves.layer.addSublayer($0)}
        return gloves
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
        coat1.addCurve(to: CGPoint(x: 103.67, y: 136.52), controlPoint1: CGPoint(x: 78.87, y: 55.16), controlPoint2: CGPoint(x: 103.67, y: 129.58))
        coat1.addCurve(to: CGPoint(x: 88.37, y: 146.76), controlPoint1: CGPoint(x: 103.67, y: 143.46), controlPoint2: CGPoint(x: 92.68, y: 148.96))
        coat1.addCurve(to: CGPoint(x: 59.83, y: 65.27), controlPoint1: CGPoint(x: 87.29, y: 146.21), controlPoint2: CGPoint(x: 77.78, y: 119.05))
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
        n1.position = CGPoint(x: 123, y: 82)
        
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
    
    class func createHat() -> UIView {
        let hat = UIView()
        
        let rectangle = UIBezierPath()
        rectangle.move(to: CGPoint(x: 0, y: 49.07))
        rectangle.addCurve(to: CGPoint(x: 21.26, y: 0.89), controlPoint1: CGPoint(x: 12.12, y: 11.96), controlPoint2: CGPoint(x: 19.21, y: -4.1))
        rectangle.addCurve(to: CGPoint(x: 24.1, y: 24.84), controlPoint1: CGPoint(x: 24.33, y: 8.38), controlPoint2: CGPoint(x: 23.81, y: 17.05))
        rectangle.addCurve(to: CGPoint(x: 22.68, y: 58.91), controlPoint1: CGPoint(x: 24.79, y: 43.3), controlPoint2: CGPoint(x: 23.57, y: 58.3))
        rectangle.addCurve(to: CGPoint(x: 0.75, y: 58.91), controlPoint1: CGPoint(x: 21.43, y: 59.78), controlPoint2: CGPoint(x: 14.12, y: 59.78))
        rectangle.addLine(to: CGPoint(x: 0, y: 49.07))
        rectangle.close()
        let r = CAShapeLayer()
        r.path = rectangle.cgPath
        r.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        r.position = CGPoint(x: 133.32, y: 19.09)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25.76, y: 69.36))
        headNeck.addLine(to: CGPoint(x: 10.19, y: 68.83))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 110.53, y: 10.46)
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 8.48, y: 8.44))
        bobLeft.addCurve(to: CGPoint(x: 54.96, y: 16.16), controlPoint1: CGPoint(x: 28.63, y: -10.23), controlPoint2: CGPoint(x: 52.29, y: 6.52))
        bobLeft.addCurve(to: CGPoint(x: 37.25, y: 25.42), controlPoint1: CGPoint(x: 55.85, y: 19.37), controlPoint2: CGPoint(x: 42.82, y: 22.21))
        bobLeft.addCurve(to: CGPoint(x: 27.95, y: 35.59), controlPoint1: CGPoint(x: 33.54, y: 27.57), controlPoint2: CGPoint(x: 30.44, y: 30.95))
        bobLeft.addCurve(to: CGPoint(x: 19.54, y: 29.82), controlPoint1: CGPoint(x: 25.76, y: 29.52), controlPoint2: CGPoint(x: 22.96, y: 27.59))
        bobLeft.addCurve(to: CGPoint(x: 19.12, y: 42.21), controlPoint1: CGPoint(x: 16.33, y: 31.92), controlPoint2: CGPoint(x: 17.47, y: 39.02))
        bobLeft.addCurve(to: CGPoint(x: 23.73, y: 69.97), controlPoint1: CGPoint(x: 21.54, y: 46.88), controlPoint2: CGPoint(x: 24.38, y: 65.9))
        bobLeft.addCurve(to: CGPoint(x: 8.48, y: 70.62), controlPoint1: CGPoint(x: 22.87, y: 75.34), controlPoint2: CGPoint(x: 11.88, y: 77.63))
        bobLeft.addCurve(to: CGPoint(x: 10.42, y: 53.87), controlPoint1: CGPoint(x: 6.79, y: 67.14), controlPoint2: CGPoint(x: 10.42, y: 59.73))
        bobLeft.addCurve(to: CGPoint(x: 8.48, y: 8.44), controlPoint1: CGPoint(x: 10.42, y: 30.12), controlPoint2: CGPoint(x: -11.67, y: 27.11))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 100, y: 5)
        
        let rectangle2 = UIBezierPath()
        rectangle2.move(to: CGPoint(x: 9.8, y: 4.93))
        rectangle2.addCurve(to: CGPoint(x: 40.7, y: 3.67), controlPoint1: CGPoint(x: 21.26, y: -2.08), controlPoint2: CGPoint(x: 30.18, y: -0.78))
        rectangle2.addCurve(to: CGPoint(x: 59, y: 24.13), controlPoint1: CGPoint(x: 47.71, y: 6.64), controlPoint2: CGPoint(x: 53.81, y: 13.46))
        rectangle2.addLine(to: CGPoint(x: 14.98, y: 57))
        rectangle2.addCurve(to: CGPoint(x: 1.68, y: 34.82), controlPoint1: CGPoint(x: 7.97, y: 48.07), controlPoint2: CGPoint(x: 3.54, y: 40.67))
        rectangle2.addCurve(to: CGPoint(x: 9.8, y: 4.93), controlPoint1: CGPoint(x: -1.1, y: 26.05), controlPoint2: CGPoint(x: -1.65, y: 11.93))
        rectangle2.close()
        let r2 = CAShapeLayer()
        r2.path = rectangle2.cgPath
        r2.fillColor = UIColor(red: 17/255, green: 17/255, blue: 17/255, alpha: 1).cgColor
        r2.position = CGPoint(x: 93, y: -8)
        
        let oval = UIBezierPath()
        oval.move(to: CGPoint(x: 9.13, y: 19))
        oval.addCurve(to: CGPoint(x: 19, y: 9.23), controlPoint1: CGPoint(x: 14.58, y: 19), controlPoint2: CGPoint(x: 19, y: 14.62))
        oval.addCurve(to: CGPoint(x: 9.5, y: 0), controlPoint1: CGPoint(x: 19, y: 3.83), controlPoint2: CGPoint(x: 14.95, y: 0))
        oval.addCurve(to: CGPoint(x: 0, y: 9.23), controlPoint1: CGPoint(x: 4.05, y: 0), controlPoint2: CGPoint(x: 0, y: 3.83))
        oval.addCurve(to: CGPoint(x: 9.13, y: 19), controlPoint1: CGPoint(x: 0, y: 14.62), controlPoint2: CGPoint(x: 3.69, y: 19))
        oval.close()
        let o = CAShapeLayer()
        o.path = oval.cgPath
        o.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        o.position = CGPoint(x: 88, y: -12)
        
        let rectangle3 = UIBezierPath()
        rectangle3.move(to: CGPoint(x: 0.03, y: 35.59))
        rectangle3.addCurve(to: CGPoint(x: 47.49, y: 0), controlPoint1: CGPoint(x: 0.28, y: 33.58), controlPoint2: CGPoint(x: 45.7, y: -0.17))
        rectangle3.addCurve(to: CGPoint(x: 51.98, y: 3.75), controlPoint1: CGPoint(x: 49.28, y: 0.18), controlPoint2: CGPoint(x: 51.04, y: 2.1))
        rectangle3.addCurve(to: CGPoint(x: 52.27, y: 9.98), controlPoint1: CGPoint(x: 52.91, y: 5.39), controlPoint2: CGPoint(x: 53.58, y: 8.05))
        rectangle3.addCurve(to: CGPoint(x: 7.65, y: 42.98), controlPoint1: CGPoint(x: 50.95, y: 11.91), controlPoint2: CGPoint(x: 8.91, y: 42.81))
        rectangle3.addCurve(to: CGPoint(x: 2.36, y: 40.62), controlPoint1: CGPoint(x: 6.39, y: 43.15), controlPoint2: CGPoint(x: 3.73, y: 41.95))
        rectangle3.addCurve(to: CGPoint(x: 0.03, y: 35.59), controlPoint1: CGPoint(x: 1, y: 39.3), controlPoint2: CGPoint(x: -0.22, y: 37.6))
        rectangle3.close()
        let r3 = CAShapeLayer()
        r3.path = rectangle3.cgPath
        r3.fillColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1).cgColor
        r3.position = CGPoint(x: 101, y: 6)
        
        [r, hn, bl, r2, o, r3].forEach {hat.layer.addSublayer($0)}
        return hat
    }
    
    class func createBrushHairCutForCell() -> UIView {
        let brush = UIView()
        
        let womanBrushHairCut2 = UIBezierPath()
        womanBrushHairCut2.move(to: CGPoint(x: 26.4, y: 37.79))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 25.8, y: 60.41), controlPoint1: CGPoint(x: 25.96, y: 45.56), controlPoint2: CGPoint(x: 30.6, y: 54.98))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 2.86, y: 64.38), controlPoint1: CGPoint(x: 19.31, y: 67.76), controlPoint2: CGPoint(x: 7.93, y: 69.75))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 6.97, y: 37.77), controlPoint1: CGPoint(x: -2.19, y: 59.04), controlPoint2: CGPoint(x: -0.4, y: 49.37))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 22.75, y: 24.09), controlPoint1: CGPoint(x: 14.35, y: 26.16), controlPoint2: CGPoint(x: 18.73, y: 25.75))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 27.99, y: 19.66), controlPoint1: CGPoint(x: 24.99, y: 23.16), controlPoint2: CGPoint(x: 26.64, y: 21.46))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 37.05, y: 8.44), controlPoint1: CGPoint(x: 29.91, y: 16.1), controlPoint2: CGPoint(x: 32.85, y: 12.34))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 83.57, y: 16.16), controlPoint1: CGPoint(x: 57.22, y: -10.23), controlPoint2: CGPoint(x: 80.9, y: 6.52))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 65.85, y: 25.44), controlPoint1: CGPoint(x: 84.46, y: 19.39), controlPoint2: CGPoint(x: 71.43, y: 22.22))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 56.54, y: 35.61), controlPoint1: CGPoint(x: 62.14, y: 27.58), controlPoint2: CGPoint(x: 59.03, y: 30.97))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 48.12, y: 29.84), controlPoint1: CGPoint(x: 54.35, y: 29.53), controlPoint2: CGPoint(x: 51.54, y: 27.61))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 47.7, y: 42.23), controlPoint1: CGPoint(x: 44.91, y: 31.93), controlPoint2: CGPoint(x: 45.97, y: 39.07))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 35.29, y: 46.91), controlPoint1: CGPoint(x: 48.73, y: 44.12), controlPoint2: CGPoint(x: 44.58, y: 50.97))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 26.4, y: 37.79), controlPoint1: CGPoint(x: 31.78, y: 45.38), controlPoint2: CGPoint(x: 28.3, y: 42.18))
        womanBrushHairCut2.close()
        let r = CAShapeLayer()
        r.path = womanBrushHairCut2.cgPath
        r.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor//
        r.position = CGPoint(x: -36, y: -3)
        
        [r].forEach {brush.layer.addSublayer($0)}
        return brush
    }
    
    class func createBrushHairCut() -> UIView {
        let brush = UIView()
        
        let womanBrushHairCut2 = UIBezierPath()
        womanBrushHairCut2.move(to: CGPoint(x: 26.4, y: 37.79))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 25.8, y: 60.41), controlPoint1: CGPoint(x: 25.96, y: 45.56), controlPoint2: CGPoint(x: 30.6, y: 54.98))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 2.86, y: 64.38), controlPoint1: CGPoint(x: 19.31, y: 67.76), controlPoint2: CGPoint(x: 7.93, y: 69.75))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 6.97, y: 37.77), controlPoint1: CGPoint(x: -2.19, y: 59.04), controlPoint2: CGPoint(x: -0.4, y: 49.37))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 22.75, y: 24.09), controlPoint1: CGPoint(x: 14.35, y: 26.16), controlPoint2: CGPoint(x: 18.73, y: 25.75))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 27.99, y: 19.66), controlPoint1: CGPoint(x: 24.99, y: 23.16), controlPoint2: CGPoint(x: 26.64, y: 21.46))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 37.05, y: 8.44), controlPoint1: CGPoint(x: 29.91, y: 16.1), controlPoint2: CGPoint(x: 32.85, y: 12.34))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 83.57, y: 16.16), controlPoint1: CGPoint(x: 57.22, y: -10.23), controlPoint2: CGPoint(x: 80.9, y: 6.52))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 65.85, y: 25.44), controlPoint1: CGPoint(x: 84.46, y: 19.39), controlPoint2: CGPoint(x: 71.43, y: 22.22))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 56.54, y: 35.61), controlPoint1: CGPoint(x: 62.14, y: 27.58), controlPoint2: CGPoint(x: 59.03, y: 30.97))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 48.12, y: 29.84), controlPoint1: CGPoint(x: 54.35, y: 29.53), controlPoint2: CGPoint(x: 51.54, y: 27.61))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 47.7, y: 42.23), controlPoint1: CGPoint(x: 44.91, y: 31.93), controlPoint2: CGPoint(x: 45.97, y: 39.07))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 35.29, y: 46.91), controlPoint1: CGPoint(x: 48.73, y: 44.12), controlPoint2: CGPoint(x: 44.58, y: 50.97))
        womanBrushHairCut2.addCurve(to: CGPoint(x: 26.4, y: 37.79), controlPoint1: CGPoint(x: 31.78, y: 45.38), controlPoint2: CGPoint(x: 28.3, y: 42.18))
        womanBrushHairCut2.close()
        let r = CAShapeLayer()
        r.path = womanBrushHairCut2.cgPath
        r.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor//
        r.position = CGPoint(x: 75.75, y: 8.26)
        
        [r].forEach {brush.layer.addSublayer($0)}
        return brush
    }
    
    class func createLongHairForCell() -> UIView {
        let long = UIView()
        
        let bobBack = UIBezierPath()
        bobBack.move(to: CGPoint(x: 1.07, y: 15.45))
        bobBack.addCurve(to: CGPoint(x: 21.49, y: 0.15), controlPoint1: CGPoint(x: 4.92, y: 7.11), controlPoint2: CGPoint(x: 11.72, y: 2.01))
        bobBack.addCurve(to: CGPoint(x: 51.3, y: 15.45), controlPoint1: CGPoint(x: 33.37, y: -0.98), controlPoint2: CGPoint(x: 43.31, y: 4.12))
        bobBack.addCurve(to: CGPoint(x: 56.59, y: 112.58), controlPoint1: CGPoint(x: 63.27, y: 32.44), controlPoint2: CGPoint(x: 58.86, y: 102.61))
        bobBack.addCurve(to: CGPoint(x: 30.2, y: 116.65), controlPoint1: CGPoint(x: 55.88, y: 115.69), controlPoint2: CGPoint(x: 31.32, y: 119.15))
        bobBack.addCurve(to: CGPoint(x: 28.79, y: 71.12), controlPoint1: CGPoint(x: 24.8, y: 104.56), controlPoint2: CGPoint(x: 28.93, y: 71.12))
        bobBack.addCurve(to: CGPoint(x: 1.07, y: 15.45), controlPoint1: CGPoint(x: 13.97, y: 71.12), controlPoint2: CGPoint(x: -4.69, y: 27.96))
        bobBack.close()
        let bb = CAShapeLayer()
        bb.path = bobBack.cgPath
        bb.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bb.position = CGPoint(x: -2.6, y: -2.65)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25.15, y: 64.06))
        headNeck.addLine(to: CGPoint(x: 24, y: 67.88))
        headNeck.addLine(to: CGPoint(x: 24.71, y: 67.88))
        headNeck.addLine(to: CGPoint(x: 10.4, y: 66.09))
        headNeck.addLine(to: CGPoint(x: 10.62, y: 63.37))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = (UIColor.SkinColor.colors[SettingsModel.skinColorNumber]).cgColor
        
        hn.position = CGPoint(x: 2, y: 1)
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 7.94, y: 40.94))
        bobLeft.addCurve(to: CGPoint(x: 36.86, y: 0.26), controlPoint1: CGPoint(x: 13.2, y: 5.22), controlPoint2: CGPoint(x: 31.01, y: 1.17))
        bobLeft.addCurve(to: CGPoint(x: 65.79, y: 14.58), controlPoint1: CGPoint(x: 49.63, y: -1.74), controlPoint2: CGPoint(x: 61.51, y: 8.36))
        bobLeft.addCurve(to: CGPoint(x: 47.72, y: 25.32), controlPoint1: CGPoint(x: 67.5, y: 17.06), controlPoint2: CGPoint(x: 60.94, y: 19.78))
        bobLeft.addCurve(to: CGPoint(x: 36.86, y: 32.12), controlPoint1: CGPoint(x: 45.55, y: 26.23), controlPoint2: CGPoint(x: 41.92, y: 28.5))
        bobLeft.addCurve(to: CGPoint(x: 28.89, y: 27.4), controlPoint1: CGPoint(x: 34.97, y: 26.75), controlPoint2: CGPoint(x: 32.31, y: 25.17))
        bobLeft.addCurve(to: CGPoint(x: 28.47, y: 39.8), controlPoint1: CGPoint(x: 25.67, y: 29.5), controlPoint2: CGPoint(x: 26.74, y: 36.64))
        bobLeft.addCurve(to: CGPoint(x: 31.79, y: 40.94), controlPoint1: CGPoint(x: 29.5, y: 41.68), controlPoint2: CGPoint(x: 31.79, y: 40.49))
        bobLeft.addCurve(to: CGPoint(x: 27.93, y: 117.86), controlPoint1: CGPoint(x: 31.79, y: 46.11), controlPoint2: CGPoint(x: 30.54, y: 116.72))
        bobLeft.addCurve(to: CGPoint(x: 3.16, y: 117.86), controlPoint1: CGPoint(x: 25.31, y: 119), controlPoint2: CGPoint(x: 11.75, y: 119.09))
        bobLeft.addCurve(to: CGPoint(x: 7.94, y: 40.94), controlPoint1: CGPoint(x: -4.08, y: 116.83), controlPoint2: CGPoint(x: 2.68, y: 76.67))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: -18, y: -3)
        
        [bb, hn, bl].forEach {long.layer.addSublayer($0)}
        return long
    }
    
    class func createLongHair() -> UIView {
        let long = UIView()
        
        let bobBack = UIBezierPath()
        bobBack.move(to: CGPoint(x: 1.07, y: 15.45))
        bobBack.addCurve(to: CGPoint(x: 21.49, y: 0.15), controlPoint1: CGPoint(x: 4.92, y: 7.11), controlPoint2: CGPoint(x: 11.72, y: 2.01))
        bobBack.addCurve(to: CGPoint(x: 51.3, y: 15.45), controlPoint1: CGPoint(x: 33.37, y: -0.98), controlPoint2: CGPoint(x: 43.31, y: 4.12))
        bobBack.addCurve(to: CGPoint(x: 56.59, y: 112.58), controlPoint1: CGPoint(x: 63.27, y: 32.44), controlPoint2: CGPoint(x: 58.86, y: 102.61))
        bobBack.addCurve(to: CGPoint(x: 30.2, y: 116.65), controlPoint1: CGPoint(x: 55.88, y: 115.69), controlPoint2: CGPoint(x: 31.32, y: 119.15))
        bobBack.addCurve(to: CGPoint(x: 28.79, y: 71.12), controlPoint1: CGPoint(x: 24.8, y: 104.56), controlPoint2: CGPoint(x: 28.93, y: 71.12))
        bobBack.addCurve(to: CGPoint(x: 1.07, y: 15.45), controlPoint1: CGPoint(x: 13.97, y: 71.12), controlPoint2: CGPoint(x: -4.69, y: 27.96))
        bobBack.close()
        let bb = CAShapeLayer()
        bb.path = bobBack.cgPath
        bb.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bb.position = CGPoint(x: 105.36, y: 5.75)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25.15, y: 64.06))
        headNeck.addLine(to: CGPoint(x: 24, y: 67.88))
        headNeck.addLine(to: CGPoint(x: 24.71, y: 67.88))
        headNeck.addLine(to: CGPoint(x: 10.4, y: 66.09))
        headNeck.addLine(to: CGPoint(x: 10.62, y: 63.37))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = (UIColor.SkinColor.colors[SettingsModel.skinColorNumber]).cgColor
        
        hn.position = CGPoint(x: 109.82, y: 9.41)
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 7.94, y: 40.94))
        bobLeft.addCurve(to: CGPoint(x: 36.86, y: 0.26), controlPoint1: CGPoint(x: 13.2, y: 5.22), controlPoint2: CGPoint(x: 31.01, y: 1.17))
        bobLeft.addCurve(to: CGPoint(x: 65.79, y: 14.58), controlPoint1: CGPoint(x: 49.63, y: -1.74), controlPoint2: CGPoint(x: 61.51, y: 8.36))
        bobLeft.addCurve(to: CGPoint(x: 47.72, y: 25.32), controlPoint1: CGPoint(x: 67.5, y: 17.06), controlPoint2: CGPoint(x: 60.94, y: 19.78))
        bobLeft.addCurve(to: CGPoint(x: 36.86, y: 32.12), controlPoint1: CGPoint(x: 45.55, y: 26.23), controlPoint2: CGPoint(x: 41.92, y: 28.5))
        bobLeft.addCurve(to: CGPoint(x: 28.89, y: 27.4), controlPoint1: CGPoint(x: 34.97, y: 26.75), controlPoint2: CGPoint(x: 32.31, y: 25.17))
        bobLeft.addCurve(to: CGPoint(x: 28.47, y: 39.8), controlPoint1: CGPoint(x: 25.67, y: 29.5), controlPoint2: CGPoint(x: 26.74, y: 36.64))
        bobLeft.addCurve(to: CGPoint(x: 31.79, y: 40.94), controlPoint1: CGPoint(x: 29.5, y: 41.68), controlPoint2: CGPoint(x: 31.79, y: 40.49))
        bobLeft.addCurve(to: CGPoint(x: 27.93, y: 117.86), controlPoint1: CGPoint(x: 31.79, y: 46.11), controlPoint2: CGPoint(x: 30.54, y: 116.72))
        bobLeft.addCurve(to: CGPoint(x: 3.16, y: 117.86), controlPoint1: CGPoint(x: 25.31, y: 119), controlPoint2: CGPoint(x: 11.75, y: 119.09))
        bobLeft.addCurve(to: CGPoint(x: 7.94, y: 40.94), controlPoint1: CGPoint(x: -4.08, y: 116.83), controlPoint2: CGPoint(x: 2.68, y: 76.67))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 89.99, y: 5.4)
        
        [bb, hn, bl].forEach {long.layer.addSublayer($0)}
        return long
    }
    
    class func createBunHairCutForCell() -> UIView {
        let bun = UIView()
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 12.1, y: 8.44))
        bobLeft.addCurve(to: CGPoint(x: 58.62, y: 16.16), controlPoint1: CGPoint(x: 32.27, y: -10.23), controlPoint2: CGPoint(x: 55.94, y: 6.52))
        bobLeft.addCurve(to: CGPoint(x: 40.9, y: 25.44), controlPoint1: CGPoint(x: 59.51, y: 19.39), controlPoint2: CGPoint(x: 46.47, y: 22.22))
        bobLeft.addCurve(to: CGPoint(x: 31.58, y: 35.61), controlPoint1: CGPoint(x: 37.18, y: 27.58), controlPoint2: CGPoint(x: 34.08, y: 30.97))
        bobLeft.addCurve(to: CGPoint(x: 23.17, y: 29.84), controlPoint1: CGPoint(x: 29.39, y: 29.53), controlPoint2: CGPoint(x: 26.59, y: 27.61))
        bobLeft.addCurve(to: CGPoint(x: 22.74, y: 42.23), controlPoint1: CGPoint(x: 19.95, y: 31.93), controlPoint2: CGPoint(x: 21.01, y: 39.07))
        bobLeft.addCurve(to: CGPoint(x: 10.33, y: 46.91), controlPoint1: CGPoint(x: 23.78, y: 44.12), controlPoint2: CGPoint(x: 19.63, y: 50.97))
        bobLeft.addCurve(to: CGPoint(x: 12.1, y: 8.44), controlPoint1: CGPoint(x: 1.04, y: 42.85), controlPoint2: CGPoint(x: -8.07, y: 27.12))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: -10.93, y: -2.42)
        
        let rectangle = UIBezierPath()
        rectangle.move(to: CGPoint(x: 13.74, y: 0.16))
        rectangle.addCurve(to: CGPoint(x: 35, y: 14.98), controlPoint1: CGPoint(x: 20.99, y: -0.97), controlPoint2: CGPoint(x: 28.08, y: 3.97))
        rectangle.addLine(to: CGPoint(x: 35, y: 29.54))
        rectangle.addCurve(to: CGPoint(x: 2.36, y: 22.69), controlPoint1: CGPoint(x: 17.35, y: 31.07), controlPoint2: CGPoint(x: 6.47, y: 28.79))
        rectangle.addCurve(to: CGPoint(x: 13.74, y: 0.16), controlPoint1: CGPoint(x: -3.81, y: 13.54), controlPoint2: CGPoint(x: 2.87, y: 1.86))
        rectangle.close()
        let r = CAShapeLayer()
        r.path = rectangle.cgPath
        r.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        r.position = CGPoint(x: -25, y: -6)
        
        [bl, r].forEach {bun.layer.addSublayer($0)}
        return bun
    }

    class func createBunHairCut() -> UIView {
        let bun = UIView()
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 12.1, y: 8.44))
        bobLeft.addCurve(to: CGPoint(x: 58.62, y: 16.16), controlPoint1: CGPoint(x: 32.27, y: -10.23), controlPoint2: CGPoint(x: 55.94, y: 6.52))
        bobLeft.addCurve(to: CGPoint(x: 40.9, y: 25.44), controlPoint1: CGPoint(x: 59.51, y: 19.39), controlPoint2: CGPoint(x: 46.47, y: 22.22))
        bobLeft.addCurve(to: CGPoint(x: 31.58, y: 35.61), controlPoint1: CGPoint(x: 37.18, y: 27.58), controlPoint2: CGPoint(x: 34.08, y: 30.97))
        bobLeft.addCurve(to: CGPoint(x: 23.17, y: 29.84), controlPoint1: CGPoint(x: 29.39, y: 29.53), controlPoint2: CGPoint(x: 26.59, y: 27.61))
        bobLeft.addCurve(to: CGPoint(x: 22.74, y: 42.23), controlPoint1: CGPoint(x: 19.95, y: 31.93), controlPoint2: CGPoint(x: 21.01, y: 39.07))
        bobLeft.addCurve(to: CGPoint(x: 10.33, y: 46.91), controlPoint1: CGPoint(x: 23.78, y: 44.12), controlPoint2: CGPoint(x: 19.63, y: 50.97))
        bobLeft.addCurve(to: CGPoint(x: 12.1, y: 8.44), controlPoint1: CGPoint(x: 1.04, y: 42.85), controlPoint2: CGPoint(x: -8.07, y: 27.12))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 96.01, y: 3.56)
        
        let rectangle = UIBezierPath()
        rectangle.move(to: CGPoint(x: 13.74, y: 0.16))
        rectangle.addCurve(to: CGPoint(x: 35, y: 14.98), controlPoint1: CGPoint(x: 20.99, y: -0.97), controlPoint2: CGPoint(x: 28.08, y: 3.97))
        rectangle.addLine(to: CGPoint(x: 35, y: 29.54))
        rectangle.addCurve(to: CGPoint(x: 2.36, y: 22.69), controlPoint1: CGPoint(x: 17.35, y: 31.07), controlPoint2: CGPoint(x: 6.47, y: 28.79))
        rectangle.addCurve(to: CGPoint(x: 13.74, y: 0.16), controlPoint1: CGPoint(x: -3.81, y: 13.54), controlPoint2: CGPoint(x: 2.87, y: 1.86))
        rectangle.close()
        let r = CAShapeLayer()
        r.path = rectangle.cgPath
        r.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        r.position = CGPoint(x: 82, y: 0)
        
        [bl, r].forEach {bun.layer.addSublayer($0)}
        return bun
    }
    
    class func createSweatShirt() -> UIView {
        let sweatShirt = UIView()
        
        let womanSweatShirt2 = UIBezierPath()
        womanSweatShirt2.move(to: CGPoint(x: 44.26, y: 9.57))
        womanSweatShirt2.addCurve(to: CGPoint(x: 69.04, y: 0.23), controlPoint1: CGPoint(x: 53.29, y: -0.54), controlPoint2: CGPoint(x: 68.52, y: -0.37))
        womanSweatShirt2.addCurve(to: CGPoint(x: 86.41, y: 14.62), controlPoint1: CGPoint(x: 69.64, y: 0.94), controlPoint2: CGPoint(x: 75.32, y: 14.62))
        womanSweatShirt2.addCurve(to: CGPoint(x: 102.04, y: 1.13), controlPoint1: CGPoint(x: 97.51, y: 14.62), controlPoint2: CGPoint(x: 102.04, y: 2.09))
        womanSweatShirt2.addCurve(to: CGPoint(x: 125.41, y: 7.47), controlPoint1: CGPoint(x: 102.04, y: -1.54), controlPoint2: CGPoint(x: 119.85, y: 2.1))
        womanSweatShirt2.addCurve(to: CGPoint(x: 167.42, y: 135.48), controlPoint1: CGPoint(x: 141.3, y: 22.79), controlPoint2: CGPoint(x: 167.07, y: 131.14))
        womanSweatShirt2.addCurve(to: CGPoint(x: 152.41, y: 140.28), controlPoint1: CGPoint(x: 167.77, y: 139.82), controlPoint2: CGPoint(x: 157.67, y: 147.8))
        womanSweatShirt2.addCurve(to: CGPoint(x: 140.71, y: 105.45), controlPoint1: CGPoint(x: 150.91, y: 138.13), controlPoint2: CGPoint(x: 147.2, y: 123.42))
        womanSweatShirt2.addCurve(to: CGPoint(x: 123.39, y: 52.03), controlPoint1: CGPoint(x: 139.12, y: 101.03), controlPoint2: CGPoint(x: 125.39, y: 57.43))
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
        let mh = CAShapeLayer()
        mh.path = womanSweatShirt2.cgPath
        mh.fillColor = UIColor(red: 176/255, green: 60/255, blue: 60/255, alpha: 1).cgColor
        mh.position = CGPoint(x: 42, y: 86)
        
        sweatShirt.layer.addSublayer(mh)
        return sweatShirt
    }
    
    class func createSkeleton() -> UIView {
        
        let womanSkeletonView = UIView()
        
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
        leftArm.move(to: CGPoint.zero)
        leftArm.addLine(to: CGPoint(x: 105.06, y: 10.96))
        leftArm.addCurve(to: CGPoint(x: 138.43, y: 12.46), controlPoint1: CGPoint(x: 123.89, y: 8.61), controlPoint2: CGPoint(x: 135.01, y: 9.11))
        leftArm.addCurve(to: CGPoint(x: 121.36, y: 23.08), controlPoint1: CGPoint(x: 143.56, y: 17.48), controlPoint2: CGPoint(x: 125.3, y: 17.98))
        leftArm.addCurve(to: CGPoint(x: 124.45, y: 31.24), controlPoint1: CGPoint(x: 119.24, y: 25.82), controlPoint2: CGPoint(x: 126.31, y: 29.25))
        leftArm.addCurve(to: CGPoint(x: 104.76, y: 22.23), controlPoint1: CGPoint(x: 123.2, y: 32.56), controlPoint2: CGPoint(x: 116.64, y: 29.56))
        leftArm.addLine(to: CGPoint(x: 5.83, y: 15.46))
        leftArm.addLine(to: CGPoint.zero)
        leftArm.close()
        let lA = CAShapeLayer()
        lA.path = leftArm.cgPath
        lA.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        lA.position = CGPoint(x: 179, y: 126)
        lA.transform = CATransform3DMakeRotation(427 * CGFloat.pi/180, 0, 0, 1)
        
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
        
        [hn, b, ll, rl, lA, rA].forEach {womanSkeletonView.layer.addSublayer($0)}
        
        return womanSkeletonView
    }
    
    class func createHead() -> UIView {
        let head = UIView()
        
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
        
        head.layer.addSublayer(hn)
        return head
    }
    
    class func createBobBack() -> UIView {
        let bob = UIView()
        
        let bobBack = UIBezierPath()
        bobBack.move(to: CGPoint(x: 12.12, y: 15.8))
        bobBack.addCurve(to: CGPoint(x: 32.54, y: 0.5), controlPoint1: CGPoint(x: 15.96, y: 7.46), controlPoint2: CGPoint(x: 22.77, y: 2.36))
        bobBack.addCurve(to: CGPoint(x: 64.87, y: 14.31), controlPoint1: CGPoint(x: 46.11, y: -1.62), controlPoint2: CGPoint(x: 56.89, y: 2.98))
        bobBack.addCurve(to: CGPoint(x: 72.06, y: 67.31), controlPoint1: CGPoint(x: 76.85, y: 31.31), controlPoint2: CGPoint(x: 77.18, y: 60.35))
        bobBack.addCurve(to: CGPoint(x: 4.23, y: 61.93), controlPoint1: CGPoint(x: 66.95, y: 74.28), controlPoint2: CGPoint(x: 15.17, y: 73.31))
        bobBack.addCurve(to: CGPoint(x: 12.12, y: 15.8), controlPoint1: CGPoint(x: -6.71, y: 50.55), controlPoint2: CGPoint(x: 6.36, y: 28.31))
        bobBack.close()
        let bb = CAShapeLayer()
        bb.path = bobBack.cgPath
        bb.fillColor =  UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bb.position = CGPoint(x: 94.31, y: 5.4)
        
        let headNeck = UIBezierPath()
        headNeck.move(to: CGPoint(x: 24.98, y: 62.57))
        headNeck.addLine(to: CGPoint(x: 25, y: 68.25))
        headNeck.addLine(to: CGPoint(x: 10.36, y: 66.66))
        headNeck.addLine(to: CGPoint(x: 11.63, y: 50.66))
        headNeck.addCurve(to: CGPoint(x: 3.1, y: 11.27), controlPoint1: CGPoint(x: -1.64, y: 35.84), controlPoint2: CGPoint(x: -2.14, y: 22.86))
        headNeck.addCurve(to: CGPoint(x: 44.1, y: 10.16), controlPoint1: CGPoint(x: 9.19, y: -2.2), controlPoint2: CGPoint(x: 34.96, y: -4.82))
        headNeck.addCurve(to: CGPoint(x: 24.98, y: 62.57), controlPoint1: CGPoint(x: 54.65, y: 27.43), controlPoint2: CGPoint(x: 55.27, y: 82.87))
        headNeck.close()
        let hn = CAShapeLayer()
        hn.path = headNeck.cgPath
        hn.fillColor = UIColor.SkinColor.colors[SettingsModel.skinColorNumber].cgColor
        hn.position = CGPoint(x: 111, y: 9.25)
        
        [bb].forEach {bob.layer.addSublayer($0)}
        return bob
    }
    
    class func createBobLeft() -> UIView {
        let bob = UIView()

        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 17.73, y: 15.55))
        bobLeft.addCurve(to: CGPoint(x: 38.14, y: 0.25), controlPoint1: CGPoint(x: 21.57, y: 7.21), controlPoint2: CGPoint(x: 28.38, y: 2.11))
        bobLeft.addCurve(to: CGPoint(x: 49.01, y: 0.25), controlPoint1: CGPoint(x: 43.19, y: -0.08), controlPoint2: CGPoint(x: 46.81, y: -0.08))
        bobLeft.addCurve(to: CGPoint(x: 67.88, y: 13.4), controlPoint1: CGPoint(x: 52.31, y: 0.76), controlPoint2: CGPoint(x: 65.47, y: 4.4))
        bobLeft.addCurve(to: CGPoint(x: 49.01, y: 25.31), controlPoint1: CGPoint(x: 68.74, y: 16.63), controlPoint2: CGPoint(x: 62.23, y: 19.78))
        bobLeft.addCurve(to: CGPoint(x: 38.14, y: 32.11), controlPoint1: CGPoint(x: 46.83, y: 26.23), controlPoint2: CGPoint(x: 43.21, y: 28.49))
        bobLeft.addCurve(to: CGPoint(x: 30.18, y: 27.4), controlPoint1: CGPoint(x: 36.25, y: 26.74), controlPoint2: CGPoint(x: 33.6, y: 25.17))
        bobLeft.addCurve(to: CGPoint(x: 29.75, y: 39.79), controlPoint1: CGPoint(x: 26.96, y: 29.49), controlPoint2: CGPoint(x: 28.02, y: 36.63))
        bobLeft.addCurve(to: CGPoint(x: 33.08, y: 40.94), controlPoint1: CGPoint(x: 30.79, y: 41.68), controlPoint2: CGPoint(x: 33.08, y: 40.49))
        bobLeft.addCurve(to: CGPoint(x: 29.57, y: 69.71), controlPoint1: CGPoint(x: 33.08, y: 46.11), controlPoint2: CGPoint(x: 38.2, y: 69.71))
        bobLeft.addCurve(to: CGPoint(x: 1.68, y: 64.96), controlPoint1: CGPoint(x: 20.94, y: 69.71), controlPoint2: CGPoint(x: 4.66, y: 66.15))
        bobLeft.addCurve(to: CGPoint(x: 17.73, y: 15.55), controlPoint1: CGPoint(x: -5.42, y: 62.13), controlPoint2: CGPoint(x: 11.96, y: 28.06))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor =  UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 88.7, y: 5.4)
        
        
        [bl].forEach {bob.layer.addSublayer($0)}
        return bob
    }
    
    class func createLongBack() -> UIView {
        let long = UIView()
        
        let bobBack = UIBezierPath()
        bobBack.move(to: CGPoint(x: 1.07, y: 15.45))
        bobBack.addCurve(to: CGPoint(x: 21.49, y: 0.15), controlPoint1: CGPoint(x: 4.92, y: 7.11), controlPoint2: CGPoint(x: 11.72, y: 2.01))
        bobBack.addCurve(to: CGPoint(x: 51.3, y: 15.45), controlPoint1: CGPoint(x: 33.37, y: -0.98), controlPoint2: CGPoint(x: 43.31, y: 4.12))
        bobBack.addCurve(to: CGPoint(x: 56.59, y: 112.58), controlPoint1: CGPoint(x: 63.27, y: 32.44), controlPoint2: CGPoint(x: 58.86, y: 102.61))
        bobBack.addCurve(to: CGPoint(x: 30.2, y: 116.65), controlPoint1: CGPoint(x: 55.88, y: 115.69), controlPoint2: CGPoint(x: 31.32, y: 119.15))
        bobBack.addCurve(to: CGPoint(x: 28.79, y: 71.12), controlPoint1: CGPoint(x: 24.8, y: 104.56), controlPoint2: CGPoint(x: 28.93, y: 71.12))
        bobBack.addCurve(to: CGPoint(x: 1.07, y: 15.45), controlPoint1: CGPoint(x: 13.97, y: 71.12), controlPoint2: CGPoint(x: -4.69, y: 27.96))
        bobBack.close()
        let bb = CAShapeLayer()
        bb.path = bobBack.cgPath
        bb.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bb.position = CGPoint(x: 105.36, y: 5.75)
        
        [bb].forEach {long.layer.addSublayer($0)}
        return long
    }
    
    class func createLongLeft() -> UIView {
        let long = UIView()
        
        let bobLeft = UIBezierPath()
        bobLeft.move(to: CGPoint(x: 7.94, y: 40.94))
        bobLeft.addCurve(to: CGPoint(x: 36.86, y: 0.26), controlPoint1: CGPoint(x: 13.2, y: 5.22), controlPoint2: CGPoint(x: 31.01, y: 1.17))
        bobLeft.addCurve(to: CGPoint(x: 65.79, y: 14.58), controlPoint1: CGPoint(x: 49.63, y: -1.74), controlPoint2: CGPoint(x: 61.51, y: 8.36))
        bobLeft.addCurve(to: CGPoint(x: 47.72, y: 25.32), controlPoint1: CGPoint(x: 67.5, y: 17.06), controlPoint2: CGPoint(x: 60.94, y: 19.78))
        bobLeft.addCurve(to: CGPoint(x: 36.86, y: 32.12), controlPoint1: CGPoint(x: 45.55, y: 26.23), controlPoint2: CGPoint(x: 41.92, y: 28.5))
        bobLeft.addCurve(to: CGPoint(x: 28.89, y: 27.4), controlPoint1: CGPoint(x: 34.97, y: 26.75), controlPoint2: CGPoint(x: 32.31, y: 25.17))
        bobLeft.addCurve(to: CGPoint(x: 28.47, y: 39.8), controlPoint1: CGPoint(x: 25.67, y: 29.5), controlPoint2: CGPoint(x: 26.74, y: 36.64))
        bobLeft.addCurve(to: CGPoint(x: 31.79, y: 40.94), controlPoint1: CGPoint(x: 29.5, y: 41.68), controlPoint2: CGPoint(x: 31.79, y: 40.49))
        bobLeft.addCurve(to: CGPoint(x: 27.93, y: 117.86), controlPoint1: CGPoint(x: 31.79, y: 46.11), controlPoint2: CGPoint(x: 30.54, y: 116.72))
        bobLeft.addCurve(to: CGPoint(x: 3.16, y: 117.86), controlPoint1: CGPoint(x: 25.31, y: 119), controlPoint2: CGPoint(x: 11.75, y: 119.09))
        bobLeft.addCurve(to: CGPoint(x: 7.94, y: 40.94), controlPoint1: CGPoint(x: -4.08, y: 116.83), controlPoint2: CGPoint(x: 2.68, y: 76.67))
        bobLeft.close()
        let bl = CAShapeLayer()
        bl.path = bobLeft.cgPath
        bl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        bl.position = CGPoint(x: 89.99, y: 5.4)
        
        [bl].forEach {long.layer.addSublayer($0)}
        return long
    }
    
    class func createWavyBack() -> UIView {
        let hairCut = UIView()
        
        let wavyRight = UIBezierPath()
        wavyRight.move(to: CGPoint(x: 7.99, y: 0.5))
        wavyRight.addCurve(to: CGPoint(x: 40.33, y: 14.31), controlPoint1: CGPoint(x: 21.57, y: -1.62), controlPoint2: CGPoint(x: 32.34, y: 2.98))
        wavyRight.addCurve(to: CGPoint(x: 43.62, y: 40.04), controlPoint1: CGPoint(x: 45.66, y: 21.88), controlPoint2: CGPoint(x: 43.62, y: 31.06))
        wavyRight.addCurve(to: CGPoint(x: 47.73, y: 55.09), controlPoint1: CGPoint(x: 43.62, y: 45.31), controlPoint2: CGPoint(x: 47.09, y: 50.02))
        wavyRight.addCurve(to: CGPoint(x: 48.59, y: 72.78), controlPoint1: CGPoint(x: 48.5, y: 61.07), controlPoint2: CGPoint(x: 47.28, y: 66.77))
        wavyRight.addCurve(to: CGPoint(x: 51.54, y: 80.44), controlPoint1: CGPoint(x: 50.45, y: 81.29), controlPoint2: CGPoint(x: 58.54, y: 72.14))
        wavyRight.addCurve(to: CGPoint(x: 36.56, y: 84), controlPoint1: CGPoint(x: 48.67, y: 83.84), controlPoint2: CGPoint(x: 41, y: 84.38))
        wavyRight.addCurve(to: CGPoint(x: 26.55, y: 79.11), controlPoint1: CGPoint(x: 32.37, y: 83.64), controlPoint2: CGPoint(x: 34.27, y: 80.44))
        wavyRight.addCurve(to: CGPoint(x: 15.36, y: 71.87), controlPoint1: CGPoint(x: 21.41, y: 78.23), controlPoint2: CGPoint(x: 17.68, y: 75.81))
        wavyRight.addCurve(to: CGPoint(x: 4.85, y: 70.5), controlPoint1: CGPoint(x: 10.36, y: 71.22), controlPoint2: CGPoint(x: 6.85, y: 70.76))
        wavyRight.addCurve(to: CGPoint(x: 7.99, y: 0.5), controlPoint1: CGPoint(x: -2.53, y: 69.53), controlPoint2: CGPoint(x: -1.48, y: 46.19))
        wavyRight.close()
        let wr = CAShapeLayer()
        wr.path = wavyRight.cgPath
        wr.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        wr.position = CGPoint(x: 118.85, y: 5.4)
        
        [wr].forEach {hairCut.layer.addSublayer($0)}
        hairCut.frame.origin.x += 1.1
        return hairCut
    }
    
    class func createWavyLeft() -> UIView {
        let hairCut = UIView()
        
        let wavyLeft = UIBezierPath()
        wavyLeft.move(to: CGPoint(x: 18.28, y: 14.78))
        wavyLeft.addCurve(to: CGPoint(x: 38.94, y: 0.42), controlPoint1: CGPoint(x: 22.54, y: 4.68), controlPoint2: CGPoint(x: 33.59, y: 1.17))
        wavyLeft.addCurve(to: CGPoint(x: 49.8, y: 0.42), controlPoint1: CGPoint(x: 44.28, y: -0.33), controlPoint2: CGPoint(x: 47.65, y: 0.09))
        wavyLeft.addCurve(to: CGPoint(x: 68.67, y: 13.57), controlPoint1: CGPoint(x: 53.1, y: 0.92), controlPoint2: CGPoint(x: 66.26, y: 4.57))
        wavyLeft.addCurve(to: CGPoint(x: 58.76, y: 22.62), controlPoint1: CGPoint(x: 69.24, y: 15.71), controlPoint2: CGPoint(x: 66, y: 19.6))
        wavyLeft.addCurve(to: CGPoint(x: 44.61, y: 26.28), controlPoint1: CGPoint(x: 55.06, y: 24.16), controlPoint2: CGPoint(x: 49.07, y: 24.41))
        wavyLeft.addCurve(to: CGPoint(x: 38.94, y: 32.28), controlPoint1: CGPoint(x: 42.43, y: 27.19), controlPoint2: CGPoint(x: 40.54, y: 29.19))
        wavyLeft.addCurve(to: CGPoint(x: 30.97, y: 27.57), controlPoint1: CGPoint(x: 37.05, y: 26.91), controlPoint2: CGPoint(x: 34.39, y: 25.34))
        wavyLeft.addCurve(to: CGPoint(x: 30.54, y: 39.96), controlPoint1: CGPoint(x: 27.75, y: 29.66), controlPoint2: CGPoint(x: 28.81, y: 36.8))
        wavyLeft.addCurve(to: CGPoint(x: 33.87, y: 41.11), controlPoint1: CGPoint(x: 31.58, y: 41.84), controlPoint2: CGPoint(x: 33.87, y: 40.66))
        wavyLeft.addCurve(to: CGPoint(x: 32.27, y: 60.54), controlPoint1: CGPoint(x: 33.87, y: 43.37), controlPoint2: CGPoint(x: 32.24, y: 51.99))
        wavyLeft.addCurve(to: CGPoint(x: 27.82, y: 74.69), controlPoint1: CGPoint(x: 32.29, y: 68.83), controlPoint2: CGPoint(x: 31.66, y: 70.78))
        wavyLeft.addCurve(to: CGPoint(x: 23.04, y: 82.51), controlPoint1: CGPoint(x: 25.25, y: 77.3), controlPoint2: CGPoint(x: 26.15, y: 80.68))
        wavyLeft.addCurve(to: CGPoint(x: 0.06, y: 79.94), controlPoint1: CGPoint(x: 16.46, y: 86.37), controlPoint2: CGPoint(x: -1.17, y: 80.68))
        wavyLeft.addCurve(to: CGPoint(x: 5.08, y: 61.3), controlPoint1: CGPoint(x: 8.74, y: 74.69), controlPoint2: CGPoint(x: 3.46, y: 69.08))
        wavyLeft.addCurve(to: CGPoint(x: 11.15, y: 50.57), controlPoint1: CGPoint(x: 6.37, y: 55.16), controlPoint2: CGPoint(x: 9.09, y: 56.11))
        wavyLeft.addCurve(to: CGPoint(x: 10.39, y: 37.27), controlPoint1: CGPoint(x: 13.22, y: 45.02), controlPoint2: CGPoint(x: 9.41, y: 43.08))
        wavyLeft.addCurve(to: CGPoint(x: 15.93, y: 26.28), controlPoint1: CGPoint(x: 11.52, y: 30.67), controlPoint2: CGPoint(x: 14.78, y: 29.96))
        wavyLeft.addCurve(to: CGPoint(x: 18.28, y: 14.78), controlPoint1: CGPoint(x: 17.42, y: 21.52), controlPoint2: CGPoint(x: 16.75, y: 18.42))
        wavyLeft.close()
        let wl = CAShapeLayer()
        wl.path = wavyLeft.cgPath
        wl.fillColor = UIColor.HairColor.colors[SettingsModel.hairColorNumber].cgColor
        wl.position = CGPoint(x: 87.91, y: 5.23)
        
        [wl].forEach {hairCut.layer.addSublayer($0)}
        hairCut.frame.origin.x += 1.1
        return hairCut
    }
}


