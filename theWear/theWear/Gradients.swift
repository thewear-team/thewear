//
//  Gradients.swift
//  Pods-theWear
//
//  Created by Валентина on 24/03/2019.
//

import Foundation
import UIKit
import CoreGraphics

extension CAGradientLayer {
    static var colorSkyLight = "2980B9"
    static var colorSkyDark = "6DD5FA"
    static var colorDarkSkyDark = "373B44"
    static var colorDarkSkyLight = "4286f4"
    static var colorVeniceDark = "6190E8"
    static var colorVeniceLight = "A7BFE8"
    static var colorDawnLight = "FFFDE4"
    static var colorDawnDark = "005AA7"
    enum Point {
        case topLeft
        case centerLeft
        case bottomLeft
        case topCenter
        case center
        case bottomCenter
        case topRight
        case centerRight
        case bottomRight
        
        var point: CGPoint {
            switch self {
            case .topLeft:
                return CGPoint(x: 0, y: 0)
            case .centerLeft:
                return CGPoint(x: 0, y: 0.5)
            case .bottomLeft:
                return CGPoint(x: 0, y: 1.0)
            case .topCenter:
                return CGPoint(x: 0.5, y: 0)
            case .center:
                return CGPoint(x: 0.5, y: 0.5)
            case .bottomCenter:
                return CGPoint(x: 0.5, y: 1.0)
            case .topRight:
                return CGPoint(x: 1.0, y: 0.0)
            case .centerRight:
                return CGPoint(x: 1.0, y: 0.5)
            case .bottomRight:
                return CGPoint(x: 1.0, y: 1.0)
            }
        }
       
    }
    
    convenience init(start: Point, end: Point, colors: [CGColor], type: CAGradientLayerType) {
        self.init()
        self.startPoint = start.point
        self.endPoint = end.point
        self.colors = colors
        self.locations = (0..<colors.count).map(NSNumber.init)
        self.type = type
    }
}
func color(from hexString : String) -> CGColor
{
    if let rgbValue = UInt(hexString, radix: 16) {
        let red   =  CGFloat((rgbValue >> 16) & 0xff) / 255
        let green =  CGFloat((rgbValue >>  8) & 0xff) / 255
        let blue  =  CGFloat((rgbValue      ) & 0xff) / 255
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor
    } else {
        return UIColor.black.cgColor
    }
}
