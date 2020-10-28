//
//  HourCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class HourCell: UICollectionViewCell {

    let hourLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = Frames.shared.regularFont
        return label
    }()
    
    let weatherLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = Frames.shared.mediumSmallFont
        return label
    }()
    
    let iconImageView = UIImageView()
    
    func configure() {
        [hourLabel, iconImageView, weatherLabel].forEach {addSubview($0)}
        
        hourLabel.frame = CGRect(x: 0, y: 0, width: Frames.shared.height * 0.1, height: Frames.shared.height * 0.05)
        iconImageView.frame = CGRect(x: Frames.shared.height * 0.025, y: Frames.shared.height * 0.05, width: Frames.shared.height * 0.05, height: Frames.shared.height * 0.05)
        weatherLabel.frame = CGRect(x: 0, y: Frames.shared.height * 0.1, width: Frames.shared.height * 0.1, height: Frames.shared.height * 0.05)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
