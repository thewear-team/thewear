//
//  NowCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class MorningCell: UICollectionViewCell {
    
    let bgLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 155, weight: .heavy)
        label.textColor = UIColor.dark113
        label.textAlignment = .left
        return label
    }()
    
    let sliderImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "slider_light"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    func configureCell() {
        addSubview(bgLabel)
        bgLabel.anchor(top: topAnchor, left: leadingAnchor, bottom: nil, right: trailingAnchor, paddingTop: 150, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: 0, height: 200, enableInsets: false)
        
        //addSubview(sliderImageView)
        //sliderImageView.frame = CGRect(x: frame.width - 60, y: frame.height * 0.75, width: 60, height: 0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

