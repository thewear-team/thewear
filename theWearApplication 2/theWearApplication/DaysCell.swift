//
//  DaysCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class DaysCell: UICollectionViewCell {
    
    let underView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.color_113
        view.layer.cornerRadius = 25
        return view
    }()
    
    let dayLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textAlignment = .left
        label.textColor = .white
        label.numberOfLines = 2
        return label
    }()
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let tempLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    func configureCell() {
        addSubview(underView)
        addSubview(dayLabel)
        addSubview(iconImageView)
        addSubview(tempLabel)
        
        underView.frame = CGRect(x: 0, y: 0, width: 150, height: 200)
        dayLabel.frame = CGRect(x: 25, y: 10, width: 100, height: 50)
        iconImageView.frame = CGRect(x: 50, y: 75, width: 50, height: 50)
        tempLabel.frame = CGRect(x: 25, y: 150, width: 100, height: 40)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

