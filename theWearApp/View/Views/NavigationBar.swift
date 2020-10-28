//
//  NaviagationBar.swift
//  theWearApp
//
//  Created by Max Reshetov on 07/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class NavigationBar: UIView, ActivateCityButtonDelegate {

    var delegate: ChangeCityDelegate!
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.text = "Moscow"
        label.textAlignment = .left
        label.textColor = .white
        label.accessibilityIdentifier = "city"
        return label
    }()
    let cityMask = UIView()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("Today", comment: "")
        label.textAlignment = .left
        label.textColor = UIColor(white: 1, alpha: 0.7)
        return label
    }()
    
    let settingsButton: UIButton = {
        let button = UIButton()
        button.adjustsImageWhenHighlighted = false
        button.setImage(UIImage(named: "settings"), for: .normal)
        button.addTarget(self, action: #selector(handleShowSettings), for: .touchUpInside)
        button.imageEdgeInsets = UIEdgeInsets(top: 0.01 * Frames.shared.height, left: 0.02 * Frames.shared.height, bottom: 0.035 * Frames.shared.height, right: 30)
        return button
    }()
    
    let cityButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleChangeCity), for: .touchUpInside)
        return button
    }()
    
    func configure() {
        Frames.shared.configureShared()
        frame = CGRect(x: 30, y: Frames.shared.top + 30, width: Frames.shared.width - 30, height: 0.075 * Frames.shared.height)
        [cityLabel, cityButton, dateLabel, settingsButton].forEach {addSubview($0)}
        dateLabel.frame = CGRect(x: 0, y: 0.05 * Frames.shared.height, width: frame.width, height: 0.025 * Frames.shared.height)
        settingsButton.frame = CGRect(x: frame.width - 0.05 * Frames.shared.height - 30, y: 0, width: 0.05 * Frames.shared.height + 30, height: 0.075 * Frames.shared.height)
        cityButton.frame = CGRect(x: 0, y: 0, width: frame.width - 0.05 * Frames.shared.height, height: 0.05 * Frames.shared.height)
        cityLabel.mask = cityMask
        cityMask.backgroundColor = .white
        cityMask.frame = CGRect(x: 0, y: 0, width: frame.width - 0.05 * Frames.shared.height - 30, height: 0.05 * Frames.shared.height)
        
        cityLabel.font = Frames.shared.cityFont
        dateLabel.font = Frames.shared.dateFont
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleShowSettings() {
        settingsButton.isUserInteractionEnabled = false
        let settingsView = SettingsView()
        settingsView.tag = 2
        settingsView.delegate = self
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(settingsView)
        }
    }
    
    @objc func handleChangeCity() {
        cityButton.isUserInteractionEnabled = false
        let searchView = SearchView()
        searchView.tag = 3
        searchView.delegate = self
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(searchView)
        }
        searchView.cityTextField.text = currentCity
    }
    
    func changeCity(for city : String) {
        cityLabel.text = city
    }
    
    func changeDate(for date : String){
        dateLabel.text = NSLocalizedString(date, comment: "")
    }
    
    func activateCityAndSettingsButton() {
        settingsButton.isUserInteractionEnabled = true
        cityButton.isUserInteractionEnabled = true
    }
}
