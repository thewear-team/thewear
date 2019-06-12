//
//  CitiesButton.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 17/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class CitiesButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: buttonSize * 2, y: height * 0.03, width: width - buttonSize * 4.5, height: buttonSize)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

