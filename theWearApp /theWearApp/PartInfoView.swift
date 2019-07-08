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
    let temperature = UILabel()
    let feelsLikeTemperature = UILabel()
    let condition = UILabel()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurePartInfoView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configurePartInfoView() {
        self.frame = CGRect(x: 30, y: 0.85 * height - bottom - 30, width: width - 60, height: 0.15 * height)
        self.backgroundColor = .red
        [icon, temperature, feelsLikeTemperature, condition].forEach {self.addSubview($0)}
        icon.frame = CGRect(x: 0, y: 0, width: self.frame.height, height: self.frame.height)
        temperature.frame = CGRect(x: self.frame.height, y: 0, width: self.frame.width - self.frame.height, height: self.frame.height / 2)
        feelsLikeTemperature.frame = CGRect(x: self.frame.height, y: self.frame.height / 2, width: self.frame.width - self.frame.height, height: self.frame.height / 4)
        condition.frame = CGRect(x: self.frame.height, y: self.frame.height * 3 / 4, width: self.frame.width - self.frame.height, height: self.frame.height / 4)
        
        icon.backgroundColor = .green
        temperature.backgroundColor = .purple
        feelsLikeTemperature.backgroundColor = .brown
        condition.backgroundColor = .blue
    }
}
