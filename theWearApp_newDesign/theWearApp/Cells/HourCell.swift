//
//  HourCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class HourCell: UICollectionViewCell {
    
    // MARK: Properties
    
    let hourLabel = UILabel()
    let iconImageView = UIImageView()
    let weatherLabel = UILabel()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configureCell() {
        [hourLabel, iconImageView, weatherLabel].forEach {addSubview($0)}
        
        hourLabel.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 0.3 * self.frame.height)
        iconImageView.frame = CGRect(x: (self.frame.width - 0.4 * self.frame.height) / 2, y: 0.3 * self.frame.height, width: 0.4 * self.frame.height, height: 0.4 * self.frame.height)
        weatherLabel.frame = CGRect(x: 0, y: 0.7 * self.frame.height, width: self.frame.width, height: 0.3 * self.frame.height)
        
        hourLabel.textAlignment = .center
        hourLabel.font = UIFont(name: "Avenir-Medium", size: 20)
        weatherLabel.textAlignment = .center
        weatherLabel.font = UIFont(name: "Avenir-Medium", size: 20)
    }
    
}
