//
//  PartInfoView.swift
//  theWearApp
//
//  Created by Max Reshetov on 08/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class PartInfoView: UIView {
    
    let icon = UIImageView()
    
    let temperature: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = Frames.shared.tempFont
        return label
    }()
    
    let feelsLikeTemperature: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(white: 1, alpha: 0.7)
        label.font = Frames.shared.regularFont
        return label
    }()
    
    let condition: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(white: 1, alpha: 0.7)
        label.font = Frames.shared.regularFont
        return label
    }()
    
    func configure() {
        let y = 0.9 * Frames.shared.height - Frames.shared.bottom - 30
        let w = Frames.shared.width - 60
        let h = 0.1 * Frames.shared.height
        frame = CGRect(x: 30, y: y, width: w, height: h)
        [icon, temperature, feelsLikeTemperature, condition].forEach {addSubview($0)}
        icon.frame = CGRect(x: 0, y: 0, width: frame.height, height: frame.height)
        temperature.frame = CGRect(x: icon.frame.width + 30, y: 0, width: w - (icon.frame.width + 30), height: h / 2)
        feelsLikeTemperature.frame = CGRect(x: icon.frame.width + 30, y: h / 2, width: w - (icon.frame.width + 30), height: h / 4)
        condition.frame = CGRect(x: icon.frame.width + 30, y: h * (3 / 4), width: w - (icon.frame.width + 30), height: h / 4)
    }

    init(frame: CGRect, iconName: String, temperature: String, feelsLike: String, condition: String) {
        super.init(frame: frame)
        self.icon.image = UIImage(named: iconName)
        self.temperature.text = convertToFarenheitIfNeeded(degree: temperature) + SettingsModel.temp
        self.feelsLikeTemperature.text = NSLocalizedString("Feels like", comment: "") + " " + convertToFarenheitIfNeeded(degree: feelsLike) + SettingsModel.temp
        self.condition.text = NSLocalizedString(condition, comment: "")
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
