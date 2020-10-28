//
//  PreloaderView.swift
//  theWearApp
//
//  Created by Max Reshetov on 16/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class PreloaderView: UIView {
    
    let currentIV = UIImageView(image: UIImage(named: "1"))
    let nextIV = UIImageView(image: UIImage(named: "2"))
    let nextMask = UIView()
    let currentMask = UIView()
    var forward = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        backgroundColor = .white
        addSubview(currentIV)
        addSubview(nextIV)
        nextIV.mask = nextMask
        currentIV.mask = currentMask
        nextMask.backgroundColor = .red
        currentMask.backgroundColor = .red
        
        currentIV.center(centerXAnchor, centerYAnchor, 0, 0, 0.2 * Frames.shared.height, 0.2 * Frames.shared.height)
        nextIV.center(centerXAnchor, centerYAnchor, 0, 0, 0.2 * Frames.shared.height, 0.2 * Frames.shared.height)
        
        nextMask.frame = CGRect(x: 0, y: 0.2 * Frames.shared.height, width: 0.2 * Frames.shared.height, height: 0.2 * Frames.shared.height)
        currentMask.frame = CGRect(x: 0, y: 0, width: 0.2 * Frames.shared.height, height: 0.2 * Frames.shared.height)
        animate()
    }

    func animate() {
        let animation1 = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.position))
        animation1.duration = 1.5
        animation1.autoreverses = true
        animation1.repeatCount = .infinity
        animation1.fromValue = nextMask.layer.position
        animation1.toValue = CGPoint(x: 0.1 * Frames.shared.height, y: 0.1 * Frames.shared.height)
        nextMask.layer.add(animation1, forKey: nil)
        
        let animation2 = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.position))
        animation2.duration = 1.5
        animation2.autoreverses = true
        animation2.repeatCount = .infinity
        animation2.fromValue = currentMask.layer.position
        animation2.toValue = CGPoint(x: 0.1 * Frames.shared.height, y: -0.1 * Frames.shared.height)
        currentMask.layer.add(animation2, forKey: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
