//
//  DayCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class DayCell: UICollectionViewCell {
    
    // MARK: Properties
    
    let underView = UIView()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configureCell() {
        addSubview(underView)
        underView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        underView.backgroundColor = UIColor(red: 36 / 255, green: 158 / 255, blue: 207 / 255, alpha: 1)
        underView.layer.cornerRadius = 36
    }
}
