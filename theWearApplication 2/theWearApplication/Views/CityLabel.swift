//
//  cityTextField.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 08/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class CityLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.numberOfLines = 1
        self.textColor = .white
        self.text = "Moscow"
        self.font = UIFont.systemFont(ofSize: 28, weight: .medium)
        self.tintColor = .white
        self.frame = CGRect(x: buttonSize * 2, y: height * 0.03, width: width - buttonSize * 4.5, height: buttonSize)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
