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
    let pressures = [ "hPa", "mmHg"]
    let windSpeeds = ["km/h", "m/s"]
    let genders = ["man", "woman"]
    let notifications = ["on", "off"]
    
    let substrateView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = cornerRadius - 15
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
    
    let datePickerLabel: UILabel = {
        let label = UILabel()
        label.text = "At time"
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
    
    let genderLabel: UILabel = {
        let label = UILabel()
        label.text = "Gender"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        return label
    }()
    
    let genderSegmentedControl: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .clear
        cv.isScrollEnabled = false
        return cv
    }()
    
    let genderChooseView = UIView()
    
    let notificationsLabel: UILabel = {
        let label = UILabel()
        label.text = "Notifications"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        return label
    }()
    
    let notificationsSegmentedControl: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .clear
        cv.isScrollEnabled = false
        return cv
    }()
    let datePicker: UIDatePicker = {
       let picker = UIDatePicker()
        picker.datePickerMode = .time
        
        return picker
    }()
   
    
    let notificationsChooseView = UIView()
    
    func showSettingsView() {
        configureSettingsView()
       
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.substrateView.frame = CGRect(x: 0, y: top, width: width, height: fullHeight - bottom)
        }, completion: nil)
         configurePreviousValues()
    }
    
    @objc func handlePan(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: substrateView)
            let newY = substrateView.frame.origin.y + translation.y
            
            if newY >= top {
                substrateView.frame = CGRect(x: 0, y: newY, width: width, height: fullHeight - bottom)
            }
            
            recognizer.setTranslation(.zero, in: substrateView)
        } else {
            if substrateView.frame.origin.y > 0.2 * fullHeight {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.substrateView.frame = CGRect(x: 0, y: fullHeight, width: width, height: fullHeight - bottom)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.substrateView.frame = CGRect(x: 0, y: top, width: width, height: fullHeight - bottom)
                }, completion: nil)
            }
        }
    }
    
    func configureSettingsView() {
        datePicker.addTarget(self, action: #selector(datePickerChanged(_:)), for: .valueChanged)
        tempsSegmentedControl.delegate = self
        tempsSegmentedControl.dataSource = self
        tempsSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        pressureSegmentedControl.delegate = self
        pressureSegmentedControl.dataSource = self
        pressureSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        windSpeedSegmentedControl.delegate = self
        windSpeedSegmentedControl.dataSource = self
        windSpeedSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        genderSegmentedControl.delegate = self
        genderSegmentedControl.dataSource = self
        genderSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        notificationsSegmentedControl.delegate = self
        notificationsSegmentedControl.dataSource = self
        notificationsSegmentedControl.register(SegmentedControlCell.self, forCellWithReuseIdentifier: "cell")
        
        tempsChooseView.backgroundColor = UIColor.color_113
        tempsChooseView.layer.cornerRadius = 2.5
        
        pressureChooseView.backgroundColor = UIColor.color_113
        pressureChooseView.layer.cornerRadius = 2.5
        
        windSpeedChooseView.backgroundColor = UIColor.color_113
        windSpeedChooseView.layer.cornerRadius = 2.5
        
        genderChooseView.backgroundColor = UIColor.color_113
        genderChooseView.layer.cornerRadius = 2.5
        
        notificationsChooseView.backgroundColor = UIColor.color_113
        notificationsChooseView.layer.cornerRadius = 2.5
        
        [substrateView].forEach {keyWindow.addSubview($0)}
        substrateView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:))))
        substrateView.frame = CGRect(x: 0, y: fullHeight, width: width, height: fullHeight - bottom)
        [tempLabel, pressureLabel, windSpeedLabel, datePickerLabel, tempsSegmentedControl, pressureSegmentedControl, windSpeedSegmentedControl, tempsChooseView, pressureChooseView, windSpeedChooseView, genderLabel, genderSegmentedControl, genderChooseView, notificationsLabel, notificationsSegmentedControl, notificationsChooseView, datePicker].forEach {substrateView.addSubview($0)}
        tempLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.1, width: width / 2, height: buttonSize)
        pressureLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.2, width: width / 2, height: buttonSize)
        windSpeedLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.3, width: width / 2, height: buttonSize)
        genderLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.45, width: width / 2, height: buttonSize)
        notificationsLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.6, width: width / 2, height: buttonSize)
        datePickerLabel.frame = CGRect(x: buttonSize, y: fullHeight * 0.7, width: width / 2, height: buttonSize)
        
        tempsSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.1, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        tempsChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.1 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)

        pressureSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.2, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        pressureChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.2 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)
        
        windSpeedSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.3, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.3 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)
        
        genderSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.45, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        genderChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.45 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)
        
        notificationsSegmentedControl.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.6, width: width - width / 2 - buttonSize * 2, height: buttonSize)
        notificationsChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.6 + buttonSize, width: tempsSegmentedControl.frame.width / 2, height: 5)
        
       
        datePicker.frame =  CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.7 - 5, width: width - width / 2 - buttonSize * 2, height: buttonSize + 10)
        
    }
    
    override init() {
        super.init()
    }
    func configurePreviousValues(){
        if (UserDefaults.standard.value(forKey: "temperature") as! String) == "ºC"{
            self.tempsChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.1 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
           
        }
        else{
            self.tempsChooseView.frame = CGRect(x: width / 2 + buttonSize + self.tempsSegmentedControl.frame.width / 2, y: fullHeight * 0.1 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
        }
        
        if (UserDefaults.standard.value(forKey: "pressure") as! String) == "hPa"{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.pressureChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.2 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
            }
        else{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.pressureChooseView.frame = CGRect(x: width / 2 + buttonSize + self.tempsSegmentedControl.frame.width / 2, y: fullHeight * 0.2 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
        }
        
        if (UserDefaults.standard.value(forKey: "wind") as! String) == "km/h"{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.3 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
        }
        else{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize + self.tempsSegmentedControl.frame.width / 2, y: fullHeight * 0.3 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
        }
        
        if (UserDefaults.standard.value(forKey: "gender") as! String) == "man"{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.genderChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.45 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
        }
        else{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.genderChooseView.frame = CGRect(x: width / 2 + buttonSize + self.genderSegmentedControl.frame.width / 2, y: fullHeight * 0.45 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
        }
        
        if (UserDefaults.standard.value(forKey: "notifications") as! Bool) == true{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.notificationsChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.6 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
            self.datePicker.isEnabled = true
        }
        else{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.notificationsChooseView.frame = CGRect(x: width / 2 + buttonSize + self.genderSegmentedControl.frame.width / 2, y: fullHeight * 0.6 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
            }, completion: nil)
            self.datePicker.isEnabled = false
        }
        let hour = (UserDefaults.standard.value(forKey: "hour") as? Int)
        let minute = (UserDefaults.standard.value(forKey: "minute") as? Int)
        let dateString = "\(String(hour ?? 00)):\(String(minute ?? 00))"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat =  "HH:mm"
        let date = dateFormatter.date(from: dateString)
        if date != nil{
            datePicker.date = date!}
        
    }
    
    @objc func datePickerChanged(_ sender : UIDatePicker){
        print("new hour of notifications selected")
        let date = sender.date
        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
        let hour = components.hour!
        let minute = components.minute!
        UserDefaults.standard.set(hour, forKey: "hour")
        UserDefaults.standard.set(minute, forKey: "minute")
        notificationCenter?.removeAllDeliveredNotifications()
        notificationCenter?.removeAllPendingNotificationRequests()
        createnoticreateNotificationAtTime(hour: hour, minute: minute, city: currentCity, text: genereatePush(hour: hour) ?? "", back: false)
    }
    
}
