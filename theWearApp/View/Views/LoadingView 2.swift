//
//  LoadingView.swift
//  theWearApp
//
//  Created by Max Reshetov on 21/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    
    let colorView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(colorView)
        colorView.backgroundColor = colors[page]
        colorView.frame = CGRect(x: 0.5 * Frames.shared.width - 0.15 * Frames.shared.height, y: 0.45 * Frames.shared.height, width: 0.1 * Frames.shared.height, height: 0.1 * Frames.shared.height)
        animate()
    }
    
    func animate() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.position))
        animation.duration = 1.0
        animation.repeatCount = .infinity
        animation.fromValue = colorView.layer.position
        animation.toValue = CGPoint(x: 0.5 * Frames.shared.width + 0.1 * Frames.shared.height, y: 0.45 * Frames.shared.height + 0.05 * Frames.shared.height)
        colorView.layer.add(animation, forKey: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
