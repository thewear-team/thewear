//
//  SettingsView.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 25/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SettingsView: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let temps = ["°С", "°F"]
    let pressures = ["mmHg", "hPa"]
    let windSpeeds = ["m/s", "km/h"]
    let genders = ["man", "woman"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == tempCollectionView {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.tempUnderLine.frame = CGRect(x: self.tempCollectionView.frame.origin.x + CGFloat(indexPath.item) * (self.tempCollectionView.frame.width / 2), y: 89, width: self.tempCollectionView.frame.width / 2, height: 2)
            }, completion: nil)
        } else if collectionView == pressureCollectionView {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.pressureUnderLine.frame = CGRect(x: self.pressureCollectionView.frame.origin.x + CGFloat(indexPath.item) * (self.pressureCollectionView.frame.width / 2), y: 149, width: self.pressureCollectionView.frame.width / 2, height: 2)
            }, completion: nil)
        } else if collectionView == windSpeedCollectionView {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.windSpeedUnderLine.frame = CGRect(x: self.windSpeedCollectionView.frame.origin.x + CGFloat(indexPath.item) * (self.windSpeedCollectionView.frame.width / 2), y: 209, width: self.windSpeedCollectionView.frame.width / 2, height: 2)
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.genderUnderLine.frame = CGRect(x: self.genderCollectionView.frame.origin.x + CGFloat(indexPath.item) * (self.genderCollectionView.frame.width / 2), y: 479, width: self.genderCollectionView.frame.width / 2, height: 2)
            }, completion: nil)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MeasureCell
        if collectionView == tempCollectionView {
            cell.cellLabel.text = temps[indexPath.item]
        } else if collectionView == pressureCollectionView {
            cell.cellLabel.text = pressures[indexPath.item]
        } else if collectionView == windSpeedCollectionView {
            cell.cellLabel.text = windSpeeds[indexPath.item]
        } else if collectionView == genderCollectionView {
            cell.cellLabel.text = genders[indexPath.item]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 55, height: 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    let blackView = UIView()
    
    let underView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 45
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return view
    }()
    
    // Measures
    let tempLabel: UILabel = {
        let label = UILabel()
        label.text = "Temperature"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    let tempCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        return collectionView
    }()
    let tempUnderLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.color_113
        view.layer.cornerRadius = 1
        return view
    }()
    
    let pressureLabel: UILabel = {
        let label = UILabel()
        label.text = "Pressure"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    let pressureCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        return collectionView
    }()
    let pressureUnderLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.color_113
        view.layer.cornerRadius = 1
        return view
    }()
    
    let windSpeedLabel: UILabel = {
        let label = UILabel()
        label.text = "Winnd Speed"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    let windSpeedCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        return collectionView
    }()
    let windSpeedUnderLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.color_113
        view.layer.cornerRadius = 1
        return view
    }()
    
    // Notifications
    let notificationsLabel: UILabel = {
        let label = UILabel()
        label.text = "Notifications"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    let notificationsSlider: UISwitch = {
        let switcher = UISwitch()
        switcher.isOn = true
        switcher.onTintColor = UIColor.color_113
        return switcher
    }()
    
    let notificationsAtTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "At time"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    let notificationsAtTimeButton: UIButton = {
        let button = UIButton()
        button.setTitle("8:00", for: .normal)
        button.setTitleColor(UIColor.color_113, for: .normal)
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    // Gender
    let genderLabel: UILabel = {
        let label = UILabel()
        label.text = "Gender"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    let genderCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        return collectionView
    }()
    let genderUnderLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.color_113
        view.layer.cornerRadius = 1
        return view
    }()
    
    let downImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "down"))
        return imageView
    }()
    
    @objc func handleRecognizer(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: underView)
            let newY = underView.frame.origin.y + translation.y
            if let window = UIApplication.shared.keyWindow {
                if newY >= window.frame.height * 0.2 {
                    underView.frame = CGRect(x: 0, y: newY, width: underView.frame.width, height: underView.frame.height)
                    
                }
            }
            recognizer.setTranslation(.zero, in: underView)
        } else {
            if let window = UIApplication.shared.keyWindow {
                if underView.frame.origin.y >= window.frame.height * 0.5 {
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                        self.underView.frame = CGRect(x: 0, y: window.frame.height, width: self.underView.frame.width, height: self.underView.frame.height)
                        self.blackView.alpha = 0
                    }, completion: nil)
                } else {
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                        self.underView.frame = CGRect(x: 0, y: window.frame.height * 0.2, width: self.underView.frame.width, height: self.underView.frame.height)
                        self.blackView.alpha = 0.5
                    }, completion: nil)
                }
            }
        }
    }
    
    func configureUnderView() {
        [tempLabel, pressureLabel, windSpeedLabel].forEach {underView.addSubview($0)}
        [tempCollectionView, pressureCollectionView, windSpeedCollectionView].forEach {underView.addSubview($0)}
        [tempUnderLine, pressureUnderLine, windSpeedUnderLine].forEach {underView.addSubview($0)}
        [notificationsLabel, notificationsSlider, notificationsAtTimeLabel, notificationsAtTimeButton].forEach {underView.addSubview($0)}
        [genderLabel, genderCollectionView, genderUnderLine].forEach {underView.addSubview($0)}
        
        tempLabel.frame = CGRect(x: 30, y: 60, width: 150, height: 30)
        pressureLabel.frame = CGRect(x: 30, y: 120, width: 150, height: 30)
        windSpeedLabel.frame = CGRect(x: 30, y: 180, width: 150, height: 30)
        
        if let window = UIApplication.shared.keyWindow {
            tempCollectionView.frame = CGRect(x: window.frame.width - 160, y: 60, width: 130, height: 30)
            pressureCollectionView.frame = CGRect(x: window.frame.width - 160, y: 120, width: 130, height: 30)
            windSpeedCollectionView.frame = CGRect(x: window.frame.width - 160, y: 180, width: 130, height: 30)
            
            notificationsLabel.frame = CGRect(x: 30, y: 300, width: 150, height: 30)
            notificationsSlider.frame = CGRect(x: window.frame.width - 90, y: 300, width: 90, height: 30)
            notificationsAtTimeLabel.frame = CGRect(x: 30, y: 360, width: 150, height: 30)
            notificationsAtTimeButton.frame = CGRect(x: window.frame.width - 90, y: 360, width: 60, height: 30)
            
            genderLabel.frame = CGRect(x: 30, y: 450, width: 150, height: 30)
            genderCollectionView.frame = CGRect(x: window.frame.width - 160, y: 450, width: 130, height: 30)
            genderUnderLine.frame = CGRect(x: genderCollectionView.frame.origin.x + 0 * (genderCollectionView.frame.width / 2), y: 479, width: genderCollectionView.frame.width / 2, height: 2)
        }
        
        tempUnderLine.frame = CGRect(x: tempCollectionView.frame.origin.x + 0 * (tempCollectionView.frame.width / 2), y: 89, width: tempCollectionView.frame.width / 2, height: 2)
        pressureUnderLine.frame = CGRect(x: pressureCollectionView.frame.origin.x + 0 * (pressureCollectionView.frame.width / 2), y: 149, width: pressureCollectionView.frame.width / 2, height: 2)
        windSpeedUnderLine.frame = CGRect(x: windSpeedCollectionView.frame.origin.x + 0 * (windSpeedCollectionView.frame.width / 2), y: 209, width: windSpeedCollectionView.frame.width / 2, height: 2)
    
    }
    
    func showSettings() {
        
        if let window = UIApplication.shared.keyWindow {
            [blackView, underView].forEach {window.addSubview($0)}
            configureUnderView()
            underView.addSubview(downImageView)
            blackView.frame = window.frame
            blackView.backgroundColor = .black
            blackView.alpha = 0
            underView.frame = CGRect(x: 0, y: window.frame.height, width: window.frame.width, height: window.frame.height * 0.8)
            let recognizer = UIPanGestureRecognizer(target: self, action: #selector(handleRecognizer(_:)))
            underView.addGestureRecognizer(recognizer)
            downImageView.frame = CGRect(x: (window.frame.width * 0.5) - 17.5, y: -25, width: 35, height: 15)
        }

        // actually showing
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            if let window = UIApplication.shared.keyWindow {
                self.underView.frame = CGRect(x: 0, y: window.frame.height * 0.2, width: window.frame.width, height: window.frame.height * 0.8)
                self.blackView.alpha = 0.5
            }
        }, completion: nil)
    }
    
    override init() {
        super.init()
        
        tempCollectionView.delegate = self
        tempCollectionView.dataSource = self
        tempCollectionView.register(MeasureCell.self, forCellWithReuseIdentifier: "cell")
        
        pressureCollectionView.delegate = self
        pressureCollectionView.dataSource = self
        pressureCollectionView.register(MeasureCell.self, forCellWithReuseIdentifier: "cell")
        
        windSpeedCollectionView.delegate = self
        windSpeedCollectionView.dataSource = self
        windSpeedCollectionView.register(MeasureCell.self, forCellWithReuseIdentifier: "cell")
        
        genderCollectionView.delegate = self
        genderCollectionView.dataSource = self
        genderCollectionView.register(MeasureCell.self, forCellWithReuseIdentifier: "cell")
    }
}

class MeasureCell: UICollectionViewCell {
    
    let cellLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cellLabel)
        cellLabel.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
