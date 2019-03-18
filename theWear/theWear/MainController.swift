//
//  ViewController.swift
//  theWear
//
//  Created by Валентина on 17/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.customBlue
        setupNavigationBar()
        loadData(currentCity: "Moscow", completion: {
            [weak self] info in
            print(info.current_condition[0].FeelsLikeC)
            let currentDayData = RealmWeatherToday()
            currentDayData.dayTemp = info.weather[0].hourly![15].FeelsLikeC
            currentDayData.morningTemp = info.weather[0].hourly![9].FeelsLikeC
            currentDayData.eveningTemp = info.weather[0].hourly![21].FeelsLikeC
            currentDayData.nightTemp = info.weather[1].hourly![3].FeelsLikeC
            RealmProvider.saveToDB(items: [currentDayData], update: false)
    })
      
    }
    
    let searchImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "search"))
        return imageView
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSAttributedString(string: "Moscow", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 28, weight: .medium), NSAttributedString.Key.foregroundColor: UIColor.white])
        label.textAlignment = .left
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSAttributedString(string: "Today", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .medium), NSAttributedString.Key.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        label.textAlignment = .left
        return label
    }()
    
    let settingButton: UIButton = {
        let button =  UIButton()
        button.setImage(UIImage(named: "settings"), for: .normal)
        return button
    }()

    func setupNavigationBar() {
        let underView = UIView()
        
        let stackView = UIStackView(arrangedSubviews: [cityLabel, timeLabel])
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        
        view.addSubview(underView)
        underView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 80, enableInsets: false)
        underView.addSubview(searchImage)
        searchImage.anchor(top: nil, left: underView.leadingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 35, paddingBottom: 0, paddingRight: 0, width: 25, height: 27, enableInsets: false)
        searchImage.centerYAnchor.constraint(equalTo: underView.centerYAnchor).isActive = true
        
        underView.addSubview(stackView)
        stackView.anchor(top: nil, left: searchImage.trailingAnchor, bottom: nil, right: underView.centerXAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 50, enableInsets: false)
        stackView.centerYAnchor.constraint(equalTo: underView.centerYAnchor).isActive = true
        
        underView.addSubview(settingButton)
        settingButton.anchor(top: nil, left: nil, bottom: nil, right: underView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: -35, width: 27, height: 27, enableInsets: false)
        settingButton.centerYAnchor.constraint(equalTo: underView.centerYAnchor).isActive = true
    }

}

