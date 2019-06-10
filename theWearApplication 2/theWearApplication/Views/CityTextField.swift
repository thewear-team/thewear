//
//  cityTextField.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 08/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class CityTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.text = "Moscow"
        self.textColor = .white
        self.font = UIFont.systemFont(ofSize: 28, weight: .medium)
        self.tintColor = .white
        self.frame = CGRect(x: buttonSize * 2, y: top, width: width * 0.5, height: height * 0.1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
