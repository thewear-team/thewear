//
//  SettingsButton.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 08/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SettingsButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(UIImage(named: "settings"), for: .normal)
        self.frame = CGRect(x: width - 2 * buttonSize, y: buttonY, width: buttonSize, height: buttonSize)
        self.addTarget(self, action: #selector(handleSettingsButton), for: .touchUpInside)
    }
    
    let settingsView = SettingsView()
    
    @objc func handleSettingsButton() {
        settingsView.showSettingsView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
