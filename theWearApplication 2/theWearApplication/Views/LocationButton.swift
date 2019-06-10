//
//  File.swift
//  theWearApplication
//
//  Created by Валентина on 10.06.2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import UIKit

var locationSelectred : Bool = false

class LocationButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(UIImage(named: "location"), for: .normal)
        self.frame = CGRect(x:  buttonSize/2, y: buttonY, width: buttonSize, height: buttonSize)
    }
    
    let settingsView = SettingsView()
    
    @objc func handleCurrentLocation() {
      
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
