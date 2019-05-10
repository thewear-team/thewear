//
//  SettingsView.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 25/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SettingsView: NSObject {
    
    let substrateView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    func showSettingsView() {
        configureSettingsView()
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.substrateView.frame = CGRect(x: 0, y: top, width: width, height: fullHeight - bottom)
        }, completion: nil)
    }
    
    func configureSettingsView() {
        [substrateView].forEach {keyWindow.addSubview($0)}
        substrateView.frame = CGRect(x: 0, y: fullHeight, width: width, height: fullHeight - bottom)
    }
    
    let temps = ["°С", "°F"]
    let pressures = ["mmHg", "hPa"]
    let windSpeeds = ["m/s", "km/h"]
    let genders = ["man", "woman"]
    
    override init() {
        super.init()
    }
    
}
