//
//  SettingsView.swift
//  theWearApp
//
//  Created by Max Reshetov on 22/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class SettingsView: UIView {
    
    var delegate: ActivateCityButtonDelegate!
    let settingsViewMask = UIView()
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.adjustsImageWhenHighlighted = false
        button.imageEdgeInsets = UIEdgeInsets(top: 0.01 * Frames.shared.height, left: 0.02 * Frames.shared.height, bottom: 0.035 * Frames.shared.height, right: 30)
        button.setImage(UIImage(named: "arrowSet"), for: .normal)
        button.isUserInteractionEnabled = false
        button.addTarget(self, action: #selector(handleCloseButton), for: .touchUpInside)
        return button
    }()
    
    let settingsLabel: UILabel = {
        let label = UILabel()
        label.text =  NSLocalizedString("Settings", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        label.font = Frames.shared.cityFont
        return label
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = NSLocalizedString("Temperature", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let temperature: UIButton = {
        let button = UIButton()
        button.setTitle(NSLocalizedString(SettingsModel.temp, comment: ""), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = Frames.shared.mediumFont
        button.addTarget(self, action: #selector(handleChangeTemperature), for: .touchUpInside)
        button.contentHorizontalAlignment = .right
        return button
    }()
    
    let windSpeedLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = NSLocalizedString("Wind Speed", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let windSpeed: UIButton = {
        let button = UIButton()
        button.setTitle(NSLocalizedString(SettingsModel.wind, comment: ""), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = Frames.shared.mediumFont
        button.addTarget(self, action: #selector(handleChangeWindSpeed), for: .touchUpInside)
        button.contentHorizontalAlignment = .right
        return button
    }()
    
    let pressureLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text =  NSLocalizedString("Pressure", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let pressure: UIButton = {
        let button = UIButton()
        button.setTitle(NSLocalizedString(SettingsModel.pressure, comment: ""), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = Frames.shared.mediumFont
        button.addTarget(self, action: #selector(handleChangePressure), for: .touchUpInside)
        button.contentHorizontalAlignment = .right
        return button
    }()
    
    let personLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = NSLocalizedString("Person", comment: "")
        //label.text =  NSLocalizedString("Person", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let person: UIButton = {
        let button = UIButton()
        button.setTitle(NSLocalizedString("Change person", comment: ""), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = Frames.shared.mediumFont
        button.addTarget(self, action: #selector(handleChangePerson), for: .touchUpInside)
        button.contentHorizontalAlignment = .right
        return button
    }()
    
    let notificationsLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = NSLocalizedString(NSLocalizedString("Notifications", comment: ""), comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let notifications: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = colors[page]
        lastShownColor = colors[page]
        switcher.addTarget(self, action: #selector(handleChangeNotifications(_:)), for: .valueChanged)
        if notificationEnabled == "enabled" && notificationSelected{
            switcher.setOn(true, animated: false)
        }else{
            switcher.setOn(false, animated: false)
        }
        return switcher
    }()
    
    let notificationTimeLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = NSLocalizedString(NSLocalizedString("Notifications time", comment: ""), comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let notificationTime: UIButton = {
        let button = UIButton()
        if notificationEnabled == "enabled"{
            button.isEnabled = true
            button.isUserInteractionEnabled = true
        }else{
            button.isEnabled = false
            button.isUserInteractionEnabled = false
        }
        button.setTitle("\(hourOfPush):00", for: .normal)
        button.setTitleColor(UIColor.gray, for: .disabled)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.black, for: .highlighted)
        button.titleLabel?.font = Frames.shared.mediumFont
        button.addTarget(self, action: #selector(handleChangeNotificationTime), for: .touchUpInside)
        button.contentHorizontalAlignment = .right
        return button
    }()
    
    let writeButton: UIButton = {
        let button = UIButton()
        button.setTitle(NSLocalizedString("Write to developers", comment: ""), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = Frames.shared.mediumFont
        button.addTarget(self, action: #selector(writeToDevelopers), for: .touchUpInside)
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    @objc func writeToDevelopers() {
        let emailVC = EmailClassViewController()
        if let  currentVc = UIApplication.shared.keyWindow?.rootViewController{
            currentVc.present(emailVC, animated: true, completion: nil)
        }
    }
    
    func configure() {
         NotificationCenter.default.addObserver(self, selector: #selector(reloadSettingsUI(_:)), name: .needUpdateSettings, object: nil)
        frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        [settingsLabel, closeButton].forEach {addSubview($0)}
        closeButton.frame = CGRect(x: Frames.shared.width - 30 - 0.05 * Frames.shared.height, y: Frames.shared.top + 30, width: 0.05 * Frames.shared.height + 30, height: 0.075 * Frames.shared.height)
        settingsLabel.frame = CGRect(x: 30, y: Frames.shared.top + 30, width: Frames.shared.width - 60 - 0.05 * Frames.shared.height, height: 0.05 * Frames.shared.height)
        settingsViewMask.frame = CGRect(x: Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        [self, settingsViewMask].forEach {$0.backgroundColor = .white}
        mask = settingsViewMask
        
        configureWeather()
        configurePerson()
        configureNotifications()
        
        addSubview(writeButton)
        writeButton.anchor(notificationTimeLabel.bottomAnchor, leadingAnchor, nil, trailingAnchor, 60, 30, nil, 30, nil, Frames.shared.height * 0.05)
        
        showSettingsView()
    }
    
    func configureWeather() {
        [temperatureLabel, temperature, windSpeedLabel, windSpeed, pressureLabel, pressure].forEach {addSubview($0)}
        
        temperature.anchor(settingsLabel.bottomAnchor, nil, nil, trailingAnchor, 30, nil, nil, 30, Frames.shared.height * 0.1, Frames.shared.height * 0.05)
        temperatureLabel.anchor(settingsLabel.bottomAnchor, leadingAnchor, nil, temperature.leadingAnchor, 30, 30, nil, 30, nil, Frames.shared.height * 0.05)
        
        windSpeed.anchor(temperature.bottomAnchor, nil, nil, trailingAnchor, 10, nil, nil, 30, Frames.shared.height * 0.1, Frames.shared.height * 0.05)
        windSpeedLabel.anchor(temperatureLabel.bottomAnchor, leadingAnchor, nil, windSpeed.leadingAnchor, 10, 30, nil, 30, nil, Frames.shared.height * 0.05)
        
        pressure.anchor(windSpeed.bottomAnchor, nil, nil, trailingAnchor, 10, nil, nil, 30, Frames.shared.height * 0.15, Frames.shared.height * 0.05)
        pressureLabel.anchor(windSpeedLabel.bottomAnchor, leadingAnchor, nil, pressure.leadingAnchor, 10, 30, nil, 0, nil, Frames.shared.height * 0.05)
    }
    
    func configurePerson() {
        [personLabel, person].forEach {addSubview($0)}
        person.anchor(nil, nil, nil, trailingAnchor, nil, nil, nil, 30, Frames.shared.height * 0.2, Frames.shared.height * 0.1)
        person.titleLabel?.lineBreakMode = .byWordWrapping
        personLabel.anchor(pressureLabel.bottomAnchor, leadingAnchor, nil, person.leadingAnchor, 60, 30, nil, 30, nil, Frames.shared.height * 0.05)
        person.centerYAnchor.constraint(equalTo: personLabel.centerYAnchor, constant: 0).isActive = true
    }
    
    func configureNotifications() {
        [notificationsLabel, notifications, notificationTimeLabel, notificationTime].forEach {addSubview($0)}
        
        notificationsLabel.anchor(personLabel.bottomAnchor, leadingAnchor, nil, pressureLabel.trailingAnchor, 60, 30, nil, 0, nil, Frames.shared.height * 0.05)
        notifications.anchor(nil, nil, nil, trailingAnchor, nil, nil, nil, 30, nil, nil)
        notifications.centerYAnchor.constraint(equalTo: notificationsLabel.centerYAnchor).isActive = true
        
        notificationTimeLabel.anchor(notificationsLabel.bottomAnchor, leadingAnchor, nil, notificationsLabel.trailingAnchor, 10, 30, nil, 0, nil, Frames.shared.height * 0.05)
        notificationTime.anchor(notificationsLabel.bottomAnchor, nil, nil, trailingAnchor, 10, nil, nil, 30, Frames.shared.height * 0.1, Frames.shared.height * 0.05)
    }
    
    func showSettingsView() {
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.settingsViewMask.frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        }) { _ in
            self.closeButton.isUserInteractionEnabled = true
            self.delegate.activateCityAndSettingsButton()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleCloseButton() {
        delegate.activateCityAndSettingsButton()
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.settingsViewMask.frame = CGRect(x: Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        }, completion: { _ in
            self.removeFromSuperview()
        })
    }
    
    @objc func handleChangeTemperature() {
        if self.temperature.titleLabel?.text == NSLocalizedString(SettingsSaver.tempC, comment: ""){
            self.temperature.setTitle(NSLocalizedString(SettingsSaver.tempF, comment: ""), for: .normal)
             SettingsModel.temp = SettingsSaver.tempF
             UserDefaultsService.SettingSaver.saveTemperatureUnit(temp: SettingsSaver.tempF)
        }
        else{
            SettingsModel.temp = SettingsSaver.tempC
            self.temperature.setTitle(NSLocalizedString(SettingsSaver.tempC, comment: ""), for: .normal)
             UserDefaultsService.SettingSaver.saveTemperatureUnit(temp: SettingsSaver.tempC)
      
        }
               NotificationCenter.default.post(name: .needUpdate, object: nil)
        
      
    }
    
    @objc func handleChangeWindSpeed() {
        if self.windSpeed.titleLabel?.text == NSLocalizedString(SettingsSaver.windKMPH, comment: ""){
            SettingsModel.wind = SettingsSaver.windMPS
            self.windSpeed.setTitle(NSLocalizedString(SettingsSaver.windMPS, comment: ""), for: .normal)
            UserDefaultsService.SettingSaver.saveWindUnit(wind: SettingsSaver.windMPS)
        }
        else{
            SettingsModel.wind = SettingsSaver.windKMPH
            self.windSpeed.setTitle(NSLocalizedString(SettingsSaver.windKMPH, comment: ""), for: .normal)
            UserDefaultsService.SettingSaver.saveWindUnit(wind: SettingsSaver.windKMPH)
        }
         NotificationCenter.default.post(name: .needUpdate, object: nil)
    }
    
    @objc func handleChangePressure() {
        if self.pressure.titleLabel?.text == NSLocalizedString(SettingsSaver.pressureHPA, comment: ""){
            SettingsModel.pressure = SettingsSaver.pressureMMHG
            self.pressure.setTitle(NSLocalizedString(SettingsSaver.pressureMMHG, comment: ""), for: .normal)
            UserDefaultsService.SettingSaver.savePressureUnit(pressure: SettingsSaver.pressureMMHG)
        }
        else{
            SettingsModel.pressure = SettingsSaver.pressureHPA
            self.pressure.setTitle(NSLocalizedString(SettingsSaver.pressureHPA, comment: ""), for: .normal)
             UserDefaultsService.SettingSaver.savePressureUnit(pressure: SettingsSaver.pressureHPA)
        }
         NotificationCenter.default.post(name: .needUpdate, object: nil)
    }
 
    @objc func handleChangeNotifications(_ sender: UISwitch) {
        if sender.isOn {
            NotificationService.shared.checkPermission(completion : {
                if notificationEnabled == "disabled" {
                    UserDefaultsService.SettingSaver.saveNotificationPermission(enabled: SettingsSaver.disabled)
                    DispatchQueue.main.async {
                        self.notificationTime.isUserInteractionEnabled = false
                        self.notificationTime.isEnabled = false
                        if alert == nil {
                            alert = Alert(frame: .zero, alert: "Please, check enable notifications in your settings.")
                            if let window = UIApplication.shared.keyWindow {
                                window.addSubview(alert!)
                            }
                            self.notifications.setOn(false, animated: true)
                        }
                    }
                }else{
                    DispatchQueue.main.async {
                        
                        self.notificationTime.isUserInteractionEnabled = true
                        self.notificationTime.isEnabled = true
                    }
                    UserDefaultsService.SettingSaver.saveNotificationPermission(enabled: SettingsSaver.enabled)
                    UserDefaultsService.SettingSaver.saveNotificationSelection(enabled: true)
                     notificationEnabled = "enabled"
                    notificationSelected = true
                }
            })
            
            print("its on")
        } else {
            DispatchQueue.main.async {
                self.notificationTime.isUserInteractionEnabled = false
                self.notificationTime.isEnabled = false
            }
           
            UserDefaultsService.SettingSaver.saveNotificationPermission(enabled: SettingsSaver.disabled)
            UserDefaultsService.SettingSaver.saveNotificationSelection(enabled: false)
            notificationEnabled = "disabled"
            notificationSelected = false
            NotificationService.shared.notificationCenter?.removeAllDeliveredNotifications()
            NotificationService.shared.notificationCenter?.removeAllPendingNotificationRequests()
   
        }
        
       
    }
    
    @objc func handleChangePerson() {
        let changePersonView = ChangePersonView()
        changePersonView.tag = 10
        changePersonView.frame = frame
        addSubview(changePersonView)
    }
    
    @objc func handleChangeNotificationTime() {
        let notificationTimeView = NotificationTimeView()
        notificationTimeView.frame = frame
        addSubview(notificationTimeView)
    }
    
    @objc func reloadSettingsUI(_ sender : Any){
        SettingsModel.retrieveSettings()
        self.notificationTime.setTitle( "\(hourOfPush):00", for: .normal)
        if notificationEnabled == "enabled"{
            self.notifications.setOn(true, animated: false)
            self.notificationTime.isEnabled = true
            self.notificationTime.isUserInteractionEnabled = true
        }else{
            self.notificationTime.isEnabled = false
            self.notificationTime.isUserInteractionEnabled = false
            self.notifications.setOn(false, animated: false)
        }
      
    }
    
}
