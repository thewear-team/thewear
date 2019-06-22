//
//  CityCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 17/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cityLabel)
        cityLabel.topAnchor.constraint(equalTo: topAnchor, constant: buttonSize).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: buttonSize).isActive = true
        cityLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -buttonSize).isActive = true
        cityLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -buttonSize).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
