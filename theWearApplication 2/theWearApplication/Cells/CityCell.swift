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
        label.textColor = .white
        label.textAlignment = .left
        
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cityLabel)
        cityLabel.frame = CGRect(x: buttonSize, y: 0, width: frame.width - buttonSize, height: fullHeight * 0.07)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
