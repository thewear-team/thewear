//
//  CurrentLayer.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class CurrentLayer: CAShapeLayer, CurrentLayerDelegate {
    
    let partLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.partFont
        label.textColor = UIColor(white: 1, alpha: 0.2)
        return label
    }()
    
    var previousDelegate: PreviousLayerDelegate!
    var nextDelegate: NextLayerDelegate!
    
    let currentLayerMask = CAShapeLayer()
    
    let currentPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    
    let currentPerson = UIView()
    
    func configure() {
        let helpBezier = createCurrent()
        [self, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        mask = currentLayerMask
        [currentPartInfo, partLabel, currentPerson].forEach {addSublayer($0.layer)}
        currentPerson.frame = CGRect(x: (Frames.shared.width - 250) / 2, y: (Frames.shared.height - 500) / 2, width: 250, height: 500)
        currentPerson.transform = CGAffineTransform(scaleX: Frames.shared.personScale, y: Frames.shared.personScale)
        partLabel.frame = CGRect(x: 0, y: Frames.shared.height / 2, width: 1000, height: 0.2 * Frames.shared.height)
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateCurrent() {
 
            self.currentPartInfo.icon.image = UIImage(named: iconNames[page])
            self.currentPartInfo.temperature.text = convertToFarenheitIfNeeded(degree: temperature[page]) + "\(SettingsModel.temp)"
            self.currentPartInfo.feelsLikeTemperature.text = NSLocalizedString("Feels like", comment: "") + " " + "\(convertToFarenheitIfNeeded(degree: feelsLike[page]))" + "\(SettingsModel.temp)"
            self.currentPartInfo.condition.text = NSLocalizedString(condition[page], comment: "")
            self.currentPerson.subviews.forEach({$0.removeFromSuperview()})
            self.currentPerson.addSubview(persons[page])
            self.fillColor = colors[page].cgColor
            self.partLabel.text = parts[page]
            
        
    }
    
    func createCurrentLayerWhenPan(_ newX: CGFloat, _ newY: CGFloat, _ translation: CGFloat) {
        let helpBezier = createCurrentWhenPan(newX, newY, translation)
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
