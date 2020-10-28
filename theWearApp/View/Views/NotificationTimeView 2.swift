//
//  NotificationTimeView.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class NotificationTimeView: UIView {
    
    let timeArray = ["00:00", "01:00", "02:00", "03:00", "04:00", "05:00", "06:00", "07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00"]
    
    let underView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let blackView = UIView()
    let timePicker = UIPickerView()
    
    let pointer: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.1
        view.layer.cornerRadius = 3.5
        return view
    }()
    
    func configure() {
        if let window = UIApplication.shared.keyWindow {
            [blackView, underView].forEach {window.addSubview($0)}
            blackView.backgroundColor = .black
            blackView.alpha = 0
            blackView.frame = window.frame
            underView.frame = CGRect(x: 0, y: Frames.shared.height, width: Frames.shared.width, height: Frames.shared.height / 2)
            underView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleUnderViewPan(_:))))
            timePicker.delegate = self
            timePicker.dataSource = self
            underView.addSubview(timePicker)
            
            let doneButton = UIButton()
            doneButton.layer.cornerRadius = 10
            doneButton.backgroundColor = colors[page]
            doneButton.setTitle("Done", for: .normal)
            doneButton.addTarget(self, action: #selector(close(_:)), for: .touchUpInside)
            doneButton.addTarget(self, action: #selector(touchDown(_:)), for: .touchDown)
            underView.addSubview(doneButton)
            underView.addSubview(pointer)
            pointer.center(underView.centerXAnchor, nil, 0, nil, 45, 7)
            pointer.topAnchor.constraint(equalTo: underView.topAnchor, constant: 15).isActive = true
            
            doneButton.anchor(nil, underView.leadingAnchor, underView.safeAreaLayoutGuide.bottomAnchor, underView.trailingAnchor, nil, 30, 30, 30, nil, Frames.shared.height * 0.075)
            timePicker.anchor(pointer.bottomAnchor, underView.leadingAnchor, doneButton.topAnchor, underView.trailingAnchor, 30, 30, 30, 30, nil, nil)
            doneButton.addTarget(self, action: #selector(handleTimeChange(_ :)), for: .touchDown)
        }
    }
    
    @objc func touchDown(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        })
    }
    
    func show() {
        self.timePicker.selectRow(hourOfPush, inComponent: 0, animated: false)
        UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.blackView.alpha = 0.5
            self.underView.frame.origin.y = Frames.shared.height / 2
        })
    }
    
    @objc func handleUnderViewPan(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: underView)
            let newY = underView.frame.origin.y + translation.y
            if newY >= Frames.shared.height / 2 {
                underView.frame.origin.y = newY
            }
            recognizer.setTranslation(.zero, in: underView)
        } else if recognizer.state == .ended {
            if underView.frame.origin.y >= Frames.shared.height * 3 / 4 {
                UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.blackView.alpha = 0
                    self.underView.frame.origin.y = Frames.shared.height
                }, completion: { _ in
                    self.removeFromSuperview()
                })
            } else {
                show()
            }
        }
    }
    
    @objc func close(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            sender.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
        UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.blackView.alpha = 0
            self.underView.frame.origin.y = Frames.shared.height
        }, completion: { _ in
            self.removeFromSuperview()
        })
    }
    
    @objc func handleTimeChange(_ sender : Any){
        print("time changed")
        let time = timeArray[self.timePicker.selectedRow(inComponent: 0)]
        print(time)
        let hour = Array(time.split(separator: ":"))[0]
        UserDefaultsService.SettingSaver.saveTime(time:  Int(String(hour)) ?? 18)
        hourOfPush =  Int(String(hour)) ?? 18
        NotificationCenter.default.post(name: .needUpdateSettings, object: nil)
        
        //prepare votification text now
        if !ViewController.latitude.isEmpty && !ViewController.longitude.isEmpty{
            let geo = ViewController.latitude  + "%20" + ViewController.longitude
            NetworkService.shared.getWeather(currentGEO: geo, completion: {
                data in
                Data.doAllDataManipulations(data: data)
                NotificationService.shared.performAllNotificationTasks()
            })}
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        show()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
