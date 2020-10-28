//
//  PreviousLayer.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class PreviousLayer: CAShapeLayer, PreviousLayerDelegate {
    
    let partLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.partFont
        label.textColor = UIColor(white: 1, alpha: 0.2)
        return label
    }()
    
    var previousPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    
    let previousPerson = UIImageView()
    
    func configure() {
        path = createPrevious().cgPath
        [previousPartInfo, partLabel, previousPerson].forEach {addSublayer($0.layer)}
        previousPerson.frame = CGRect(x: (Frames.shared.width - 250) / 2, y: (Frames.shared.height - 500) / 2, width: 250, height: 500)
        partLabel.frame = CGRect(x: 0, y: Frames.shared.height / 2, width: 1000, height: 0.2 * Frames.shared.height)
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updatePrevious() {
        if page > 0{
            self.previousPartInfo.icon.image = UIImage(named: iconNames[page - 1])
            self.previousPartInfo.temperature.text = convertToFarenheitIfNeeded(degree: temperature[page - 1]) + "\(SettingsModel.temp)"
            self.previousPartInfo.feelsLikeTemperature.text = NSLocalizedString("Feels like", comment: "") + " " +  "\(convertToFarenheitIfNeeded(degree: feelsLike[page - 1]))" + "\(SettingsModel.temp)"
            self.previousPartInfo.condition.text = NSLocalizedString(condition[page - 1], comment: "")
            self.fillColor = colors[page - 1].cgColor
            self.previousPerson.subviews.forEach({$0.removeFromSuperview()})
            self.previousPerson.transform = CGAffineTransform(scaleX: Frames.shared.personScale, y: Frames.shared.personScale)
            self.previousPerson.addSubview(persons[page - 1])
            self.partLabel.text = parts[page - 1]
        }
        
    }
}
