//
//  CityCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 20/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    let cityName: UILabel = {
        let label = UILabel()
        label.text = "Moscow"
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = Frames.shared.mediumFont
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cityName)
        cityName.anchor(topAnchor, leadingAnchor, bottomAnchor, trailingAnchor, 15, 0, 15, 0, nil, nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
