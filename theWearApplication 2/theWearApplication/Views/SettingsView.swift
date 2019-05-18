//
//  SettingsView.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 25/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SettingsView: NSObject {
    
    let temps = ["°С", "°F"]
    let pressures = ["mmHg", "hPa"]
    let windSpeeds = ["m/s", "km/h"]
    let genders = ["man", "woman"]
    
    let substrateView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        print(cornerRadius)
        view.layer.cornerRadius = cornerRadius
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return view
    }()
    
    let tempLabel: UILabel = {
        let label = UILabel()
        label.text = "Temperature"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        return label
    }()
    
    let pressureLabel: UILabel = {
        let label = UILabel()
        label.text = "Pressure"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        return label
    }()
    
    let windSpeedLabel: UILabel = {
        let label = UILabel()
        label.text = "Wind Speed"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        return label
    }()
    
    let tempsSegmentedControl: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .clear
        cv.isScrollEnabled = false
        return cv
    }()
    
    let pressureSegmentedControl: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .clear
        cv.isScrollEnabled = false
        return cv
    }()
    
    let windSpeedSegmentedControl: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .clear
        cv.isScrollEnabled = false
        return cv
    }()
    
    let tempsChooseView = UIView()
    let pressureChooseView = UIView()
    let windSpeedChooseView = UIView()
    
    func showSettingsView() {
        configureSettingsView()
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.substrateView.frame = CGRect(x: 0, y: top, width: width, height: fullHeight - bottom)
        }, completion: nil)
    }
    
    func configureSettingsView() {
        
        tempsSegmentedControl.delegate = self
        tempsSegmentedControl.dataSource = self
        tempsSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        pressureSegmentedControl.delegate = self
        pressureSegmentedControl.dataSource = self
        pressureSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        windSpeedSegmentedControl.delegate = self
        windSpeedSegmentedControl.dataSource = self
        windSpeedSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        tempsChooseView.backgroundColor = UIColor.color_113
        tempsChooseView.layer.cornerRadius = 2.5
        
        pressureChooseView.backgroundColor = UIColor.color_113
        pressureChooseView.layer.cornerRadius = 2.5
        
        windSpeedChooseView.backgroundColor = UIColor.color_113
        windSpeedChooseView.layer.cornerRadius = 2.5
        
        [substrateView].forEach {keyWindow.addSubview($0)}
        substrateView.frame = CGRect(x: 0, y: fullHeight, width: width, height: fullHeight - bottom)
        [tempLabel, pressureLabel, windSpeedLabel, tempsSegmentedControl, pressureSegmentedControl, windSpeedSegmentedControl, tempsChooseView, pressureChooseView, windSpeedChooseView].forEach {substrateView.addSubview($0)}
        tempLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.1, width: width / 2, height: buttonSize)
        pressureLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.2, width: width / 2, height: buttonSize)
        windSpeedLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.3, width: width / 2, height: buttonSize)
        
        tempsSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.1, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        tempsChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.1 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)

        pressureSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.2, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        pressureChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.2 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)
        
        windSpeedSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.3, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.3 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)
    }
    
    override init() {
        super.init()
    }
    
}
