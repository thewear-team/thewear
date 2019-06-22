//
//  DayCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 10/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class DayCell: UICollectionViewCell {
    
    let substrateView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 25
        view.backgroundColor = UIColor.color_113
        return view
    }()
    
    let day: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: fontForAdditional + 2, weight: .regular)
        return label
    }()
    
    let icon: UIImageView = {
       let imageView = UIImageView()
        return imageView
    }()
    
    let temperature: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: fontForAdditional + 5, weight: .medium)
        return label
    }()
    
    let nightTemperature: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .lightText
        label.font = UIFont.systemFont(ofSize: fontForAdditional + 2, weight: .medium)
        return label
    }()
    
    
    func configureCell() {
        [substrateView, day, icon, temperature, nightTemperature].forEach {addSubview($0)}
        substrateView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        day.frame = CGRect(x: 0, y: 0, width: frame.width, height: 0.35 * frame.height)
        let leftPadding = (frame.width - 0.3 * frame.height) / 2
        icon.frame = CGRect(x: leftPadding, y: 0.35 * frame.height, width: 0.3 * frame.height, height: 0.3 * frame.height)
        temperature.frame = CGRect(x: -15, y: 0.7 * frame.height, width: frame.width, height: 0.3 * frame.height)
        nightTemperature.frame = CGRect(x: 15 , y: 0.7 * frame.height, width: frame.width, height: 0.3 * frame.height)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
