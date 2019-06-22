//
//  HourCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 10/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class HourCell: UICollectionViewCell {
    
    let hour: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: fontForAdditional, weight: .regular)
        return label
    }()
    
    let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let temperature: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: fontForAdditional + 2, weight: .regular)
        return label
    }()
    
    func configureCell() {
        [hour, icon, temperature].forEach {addSubview($0)}
        hour.frame = CGRect(x: 0, y: 0, width: frame.width, height: 0.35 * frame.height)
        icon.frame = CGRect(x: 0, y: 0.35 * frame.height, width: 0.3 * frame.height, height: 0.3 * frame.height)
        temperature.frame = CGRect(x: 0, y: 0.65 * frame.height, width: frame.width, height: 0.35 * frame.height)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
