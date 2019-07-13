//
//  CurrentLayer.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class CurrentLayer: CAShapeLayer, CurrentLayerDelegate {
    
    // MARK: Properties
    
    var previousDelegate: PreviousLayerDelegate!
    var nextDelegate: NextLayerDelegate!
    
    let currentLayerMask = CAShapeLayer()
    let currentPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    let currentPerson = UIImageView()
    
    // MARK: Init
    
    override init(layer: Any) {
        super.init(layer: layer)
        configureCurrentLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configureCurrentLayer() {
        let helpBezier = createCurrent()
        [self, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        self.mask = currentLayerMask
        self.fillColor = colors[page].cgColor
        [currentPartInfo, currentPerson].forEach {self.addSublayer($0.layer)}
        currentPerson.frame = CGRect(x: (width - 250) / 2, y: (height - 550) / 2, width: 250, height: 500)
        currentPerson.image = UIImage(named: persons[page])
    }
    
    func updateCurrent() {
        self.currentPartInfo.icon.image = UIImage(named: iconNames[page])
        self.currentPartInfo.temperature.text = temperature[page]
        self.currentPartInfo.feelsLikeTemperature.text = feelsLike[page]
        self.currentPartInfo.condition.text = condition[page]
        self.currentPerson.image = UIImage(named: persons[page])
        self.fillColor = colors[page].cgColor
    }
    
    func createCurrentLayerWhenPan(_ newx: CGFloat, _ translation: CGFloat) {
        let helpBezier = createCurrentWhenPan(newx, translation)
        [self, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
    }
    
    func handleOpenCurrentLayer() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = self.path
        let helpBezier = createCurrent()
        animation.toValue = helpBezier.cgPath
        [self, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        [self, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func handleClose() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = self.path
        let helpBezier = createClosedCurrent()
        animation.toValue = helpBezier.cgPath
        [self, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        [self, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func handleCloseCurrentLayer() {
        page -= 1
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            CATransaction.setValue(true, forKey: kCATransactionDisableActions)
            self.updateCurrent()
            self.nextDelegate.updateNext()
            if page != 0 {
                self.previousDelegate.updatePrevious()
            }
            let helpBezier = createCurrent()
            [self, self.currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        }
        self.handleClose()
        CATransaction.commit()
    }
}
