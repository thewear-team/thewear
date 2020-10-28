//
//  SystemExtensions.swift
//  theWearApp
//
//  Created by Max Reshetov on 06/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

extension UIColor {
    static let customBlack = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
}

extension UIView {
    func anchor(_ top: NSLayoutYAxisAnchor?, _ leading: NSLayoutXAxisAnchor?, _ bottom: NSLayoutYAxisAnchor?, _ trailing: NSLayoutXAxisAnchor?, _ tp: CGFloat?, _ lp: CGFloat?, _ bp: CGFloat?, _ trp: CGFloat?, _ width: CGFloat?, _ height: CGFloat?) {
        
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top, let tp = tp {topAnchor.constraint(equalTo: top, constant: tp).isActive = true}
        if let leading = leading, let lp = lp {leadingAnchor.constraint(equalTo: leading, constant: lp).isActive = true}
        if let bottom = bottom, let bp = bp {bottomAnchor.constraint(equalTo: bottom, constant: -bp).isActive = true}
        if let trailing = trailing, let trp = trp {trailingAnchor.constraint(equalTo: trailing, constant: -trp).isActive = true}
        if let width = width {widthAnchor.constraint(equalToConstant: width).isActive = true}
        if let height = height {heightAnchor.constraint(equalToConstant: height).isActive = true}
    }
    
    func center(_ centerX: NSLayoutXAxisAnchor?, _ centerY: NSLayoutYAxisAnchor?, _ cX: CGFloat?, _ cY: CGFloat?, _ width: CGFloat?, _ height: CGFloat?) {
        translatesAutoresizingMaskIntoConstraints = false
        if let centerX = centerX, let cX = cX {centerXAnchor.constraint(equalTo: centerX, constant: cX).isActive = true}
        if let centerY = centerY, let cY = cY {centerYAnchor.constraint(equalTo: centerY, constant: cY).isActive = true}
        if let width = width {widthAnchor.constraint(equalToConstant: width).isActive = true}
        if let height = height {heightAnchor.constraint(equalToConstant: height).isActive = true}
    }
}
