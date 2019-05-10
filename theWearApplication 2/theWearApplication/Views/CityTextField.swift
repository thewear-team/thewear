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
        self.frame = CGRect(x: buttonSize, y: top, width: width * 0.6, height: height * 0.1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
