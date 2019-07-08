//
//  NaviagationBar.swift
//  theWearApp
//
//  Created by Max Reshetov on 07/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class NaviagationBar: UIView {
    
    // MARK: Properties
    
    var delegate: ChangeCityDelegate!
    let cityLabel = UILabel()
    let dateLabel = UILabel()
    let changeCityButton = UIButton()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSizes()
        configureNavigationBar()
        configureCityButton()
        configureDateLabel()
        configureButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configureNavigationBar() {
        self.frame = CGRect(x: 0, y: top, width: width, height: 0.13 * height)
    }
    
    func configureCityButton() {
        cityLabel.frame = CGRect(x: 30, y: 0.025 * height, width: width - 60, height: 0.05 * height)
        cityLabel.text = "Moscow"
        cityLabel.textColor = .white
        cityLabel.textAlignment = .left
        cityLabel.font = UIFont(name: "Avenir-Medium", size: 36)
        self.addSubview(cityLabel)
    }
    
    func configureDateLabel() {
        dateLabel.frame = CGRect(x: 30, y: 0.075 * height, width: width - 60, height: 0.03 * height)
        dateLabel.text = "Today"
        dateLabel.textAlignment = .left
        dateLabel.textColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        dateLabel.font = UIFont(name: "Avenir-Medium", size: 24)
        self.addSubview(dateLabel)
    }
    
    func configureButton() {
        changeCityButton.frame = CGRect(x: 30, y: 0.025 * height, width: width - 60, height: 0.05 * height)
        changeCityButton.addTarget(self, action: #selector(handleChangeCity), for: .touchUpInside)
        self.addSubview(changeCityButton)
    }
    
    @objc func handleChangeCity() {
        delegate.changeCity()
    }
}
