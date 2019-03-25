//
//  DaysWeatherTableViewCell.swift
//  theWear
//
//  Created by Maxim Reshetov on 25/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit

class DaysWeatherTableViewCell: UITableViewCell {
    
    let day: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        return label
    }()
    
    let weekday: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    let icon: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let degrees: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    
    
    func configureCell() {
        [day, weekday, icon, degrees].forEach {addSubview($0)}
        
        day.anchor(top: nil, left: leadingAnchor, bottom: centerYAnchor, right: nil, paddingTop: 0, paddingLeft: 25, paddingBottom: 5, paddingRight: 0, width: 100, height: 20, enableInsets: false)
        weekday.anchor(top: centerYAnchor, left: leadingAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: 100, height: 20, enableInsets: false)
        degrees.anchor(top: topAnchor, left: nil, bottom: bottomAnchor, right: trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: -25, width: 100, height: 0, enableInsets: false)
        icon.anchor(top: nil, left: nil, bottom: nil, right: degrees.leadingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: -25, width: 25, height: 25, enableInsets: false)
        icon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
