//
//  SettingsViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let underViewForMeasures: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.layer.cornerRadius = 25
        return view
    }()
    let tempLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Temperature"
        return label
    }()
    let tempSegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["°C", "°F"])
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    let windSpeedLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Wind Speed"
        return label
    }()
    let windSpeedSegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["m/s", "km/h"])
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    let pressureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Pressure"
        return label
    }()
    let pressureSegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["mmHg", "hPa"])
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    
    let underViewForNotifications: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 25
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        return view
    }()
    let notificationsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Notifications"
        return label
    }()
    let notificationsSwitcher: UISwitch = {
        let switcher = UISwitch()
        return switcher
    }()
    
    let underViewForLocations: UIView = {
        let view = UIView()
        return view
    }()
    
    var top: CGFloat = 0.0
    var heightOfElement: CGFloat = 0.0
    var widthOfElement: CGFloat = 0.0
    
    func configureSettingsViewController() {
        
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            let topPadding = window?.safeAreaInsets.top
            top = topPadding!
        }
        
        
        [underViewForMeasures, underViewForLocations, underViewForNotifications].forEach {view.addSubview($0)}
        [tempLabel, tempSegmentedControl, windSpeedLabel, windSpeedSegmentedControl, pressureLabel, pressureSegmentedControl].forEach {underViewForMeasures.addSubview($0)}
        
        underViewForMeasures.frame = CGRect(x: 30, y: top + 30, width: view.frame.width - 60, height: 250)
        heightOfElement = (underViewForMeasures.frame.height - 120) / 3
        widthOfElement = (underViewForMeasures.frame.width / 2) - 60
        
        tempLabel.frame = CGRect(x: 30, y: 30, width: underViewForMeasures.frame.width - 60, height: heightOfElement)
        windSpeedLabel.frame = CGRect(x: 30, y: 60 + heightOfElement, width: widthOfElement, height: heightOfElement)
        pressureLabel.frame = CGRect(x: 30, y: 90 + 2 * heightOfElement, width: widthOfElement, height: heightOfElement)
        
        tempSegmentedControl.frame = CGRect(x: widthOfElement + 90, y: 35, width: widthOfElement, height: heightOfElement - 10)
        windSpeedSegmentedControl.frame = CGRect(x: widthOfElement + 90, y: 65 + heightOfElement, width: widthOfElement, height: heightOfElement - 10)
        pressureSegmentedControl.frame = CGRect(x: widthOfElement + 90, y: 95 + 2 * heightOfElement, width: widthOfElement, height: heightOfElement - 10)
        
        [notificationsLabel, notificationsSwitcher].forEach {underViewForNotifications.addSubview($0)}
        underViewForNotifications.frame = CGRect(x: 30, y: top + 310, width: view.frame.width - 60, height: 75)
        notificationsLabel.frame = CGRect(x: 30, y: 0, width: underViewForMeasures.frame.width / 2, height: 75)
        notificationsSwitcher.frame = CGRect(x: underViewForNotifications.frame.width - notificationsSwitcher.frame.width - 30, y: 20, width: notificationsSwitcher.frame.width, height: 35)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.color_113
        configureSettingsViewController()
    }
}
