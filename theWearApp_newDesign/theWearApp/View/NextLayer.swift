//
//  NextLayer.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class NextLayer: CAShapeLayer, NextLayerDelegate {    
    
    // MARK: Properties
    
    var previousDelegate: PreviousLayerDelegate!
    var currentDelegate: CurrentLayerDelegate!
    
    let nextLayerMask = CAShapeLayer()
    var nextPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page + 1], temperature: temperature[page + 1], feelsLike: feelsLike[page + 1], condition: condition[page + 1])
    let nextPerson = UIImageView()
    
    // MARK: Init
    
    override init(layer: Any) {
        super.init(layer: layer)
        configureNextLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configureNextLayer() {
        let helpBezier = createNext()
        [self, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        self.mask = nextLayerMask
        self.fillColor = colors[page + 1].cgColor
        [nextPartInfo, nextPerson].forEach {self.addSublayer($0.layer)}
        nextPerson.frame = CGRect(x: (width - 250) / 2, y: (height - 550) / 2, width: 250, height: 500)
        nextPerson.image = UIImage(named: persons[page + 1])
    }
    
    func updateNext() {
        nextPartInfo.icon.image = UIImage(named: iconNames[page + 1])
        nextPartInfo.temperature.text = temperature[page + 1]
        nextPartInfo.feelsLikeTemperature.text = feelsLike[page + 1]
        nextPartInfo.condition.text = condition[page + 1]
        nextPerson.image = UIImage(named: persons[page + 1])
        self.fillColor = colors[page + 1].cgColor
    }
    
    func createNextLayerWhenPan(_ newx: CGFloat, _ translation: CGFloat) {
        let helpBezier = createNextWhenPan(newx, translation)
        [self, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
    }
    
    func handleCloseNextLayer() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = self.path
        let helpBezier = createNext()
        [self, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        animation.toValue = helpBezier.cgPath
        [self, nextLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func handleOpenNextLayer() {
        page += 1
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            CATransaction.setValue(true, forKey: kCATransactionDisableActions)
            let helpBezier = createNext()
            [self, self.nextLayerMask].forEach {$0.path = helpBezier.cgPath}
            self.previousDelegate.updatePrevious()
            self.currentDelegate.updateCurrent()
            if page < colors.count - 1 {
                self.fillColor = colors[page + 1].cgColor
                self.updateNext()
            }
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = self.path
        let helpBezier = createOpenedNext()
        [self, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        [self, nextLayerMask].forEach {$0.add(animation, forKey: nil)}
        animation.toValue = helpBezier.cgPath
        CATransaction.commit()
    }
}
