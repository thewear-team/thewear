//
//  NextLayer.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class NextLayer: CAShapeLayer, NextLayerDelegate {
    
    let partLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.partFont
        label.textColor = UIColor(white: 1, alpha: 0.2)
        return label
    }()
    
    var previousDelegate: PreviousLayerDelegate!
    var currentDelegate: CurrentLayerDelegate!
    
    let nextLayerMask = CAShapeLayer()
    
    var nextPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page + 1], temperature: temperature[page + 1], feelsLike: feelsLike[page + 1], condition: condition[page + 1])
    
    let nextPerson = UIView()
    
    func configure() {
        let helpBezier = createNext()
        [self, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        mask = nextLayerMask
        [nextPartInfo, partLabel, nextPerson].forEach {addSublayer($0.layer)}
        nextPerson.frame = CGRect(x: (Frames.shared.width - 250) / 2, y: (Frames.shared.height - 500) / 2, width: 250, height: 500)
        nextPerson.transform = CGAffineTransform(scaleX: Frames.shared.personScale, y: Frames.shared.personScale)
        partLabel.frame = CGRect(x: 0, y: Frames.shared.height / 2, width: 1000, height: 0.2 * Frames.shared.height)
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateNext() {
        if page < colors.count - 1 {
    
                self.nextPartInfo.temperature.text = convertToFarenheitIfNeeded(degree: temperature[page + 1]) + "\(SettingsModel.temp)"
                self.nextPartInfo.icon.image = UIImage(named: iconNames[page + 1])
                self.nextPartInfo.temperature.text = convertToFarenheitIfNeeded(degree: temperature[page + 1]) + "\(SettingsModel.temp)"
                self.nextPartInfo.feelsLikeTemperature.text = NSLocalizedString("Feels like", comment: "") +  " " + "\(convertToFarenheitIfNeeded(degree: feelsLike[page + 1]))" + "\(SettingsModel.temp)"
                self.nextPartInfo.condition.text = NSLocalizedString(condition[page + 1], comment: "")
                self.nextPerson.subviews.forEach({ $0.removeFromSuperview() })
                self.nextPerson.addSubview(persons[page + 1])
                self.partLabel.text = parts[page + 1]
                self.fillColor = colors[page + 1].cgColor
            
        }
    }
    
    func createNextLayerWhenPan(_ newX: CGFloat, _ newY: CGFloat, _ translationX: CGFloat, _ translationY: CGFloat) {
        let helpBezier = createNextWhenPan(newX, newY, translationX, translationY)
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
