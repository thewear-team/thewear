//
//  PreviousLayer.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class PreviousLayer: CAShapeLayer, PreviousLayerDelegate {
    
    // MARK: Properties
    
    var previousPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    let previousPerson = UIImageView()
    
    // MARK: Init
    
    override init(layer: Any) {
        super.init(layer: layer)
        configurePreviousLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configurePreviousLayer() {
        self.path = createPrevious().cgPath
        self.frame = CGRect(x: 0, y: 0, width: width, height: height)
        [previousPartInfo, previousPerson].forEach {self.addSublayer($0.layer)}
        previousPerson.frame = CGRect(x: (width - 250) / 2, y: (height - 550) / 2, width: 250, height: 500)
    }
    
    func updatePrevious() {
        previousPartInfo.icon.image = UIImage(named: iconNames[page - 1])
        previousPartInfo.temperature.text = temperature[page - 1]
        previousPartInfo.feelsLikeTemperature.text = feelsLike[page - 1]
        previousPartInfo.condition.text = condition[page - 1]
        previousPerson.image = UIImage(named: persons[page - 1])
        self.fillColor = colors[page - 1].cgColor
    }
}
