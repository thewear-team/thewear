//
//  PartInfoView.swift
//  theWearApp
//
//  Created by Max Reshetov on 08/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class PartInfoView: UIView {
    
    // MARK: Properties

    let icon = UIImageView()
    
    let temperature: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Avenir-Heavy", size: 60)
        return label
    }()
    let feelsLikeTemperature: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        label.font = UIFont(name: "Avenir-Medium", size: 20)
        return label
    }()
    let condition: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        label.font = UIFont(name: "Avenir-Medium", size: 20)
        return label
    }()
    
    // MARK: Init
    
    init(frame: CGRect, iconName: String, temperature: String, feelsLike: String, condition: String) {
        super.init(frame: frame)
        self.icon.image = UIImage(named: iconName)
        self.temperature.text = temperature
        self.feelsLikeTemperature.text = feelsLike
        self.condition.text = condition
        configurePartInfoView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configurePartInfoView() {
        self.frame = CGRect(x: 30, y: 0.89 * height - bottom - 30, width: width - 60, height: 0.11 * height)
        [icon, temperature, feelsLikeTemperature, condition].forEach {self.addSubview($0)}
        icon.frame = CGRect(x: 0, y: 0, width: self.frame.height, height: self.frame.height)
        temperature.frame = CGRect(x: self.frame.height + 30, y: 0, width: self.frame.width - self.frame.height - 30, height: self.frame.height / 2)
        feelsLikeTemperature.frame = CGRect(x: self.frame.height + 30, y: self.frame.height / 2, width: self.frame.width - self.frame.height - 30, height: self.frame.height / 4)
        condition.frame = CGRect(x: self.frame.height + 30, y: self.frame.height * 3 / 4, width: self.frame.width - self.frame.height - 30, height: self.frame.height / 4)
    }
}
