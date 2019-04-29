//
//  SecondCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class DayCell: UICollectionViewCell {
    
    let bgLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 155, weight: .heavy)
        label.textColor = UIColor.dark113
        label.textAlignment = .left
        return label
    }()
    
    func configureCell() {
        
        addSubview(bgLabel)
        bgLabel.anchor(top: topAnchor, left: leadingAnchor, bottom: nil, right: nil, paddingTop: 150, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: 800, height: 200, enableInsets: false)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


