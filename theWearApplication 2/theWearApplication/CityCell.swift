//
//  CityCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    let cityLabel: UILabel = {
        let city = UILabel()
        city.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        city.textColor = UIColor.dark113
        return city
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cityLabel)
        cityLabel.anchor(top: topAnchor, left: leadingAnchor, bottom: bottomAnchor, right: trailingAnchor, paddingTop: 0, paddingLeft: 75, paddingBottom: 0, paddingRight: -30, width: 0, height: 0, enableInsets: false)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

