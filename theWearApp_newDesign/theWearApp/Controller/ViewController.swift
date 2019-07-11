//
//  ViewController.swift
//  theWearApp
//
//  Created by Max Reshetov on 30/06/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, ChangeCityDelegate {
    
    // MARK: Properties for UI
    
    let naviagtionBar = NavigationBar(frame: .zero)
    
    let currentLayer = CAShapeLayer()
    let currentLayerMask = CAShapeLayer()
    
    let nextLayer = CAShapeLayer()
    let nextLayerMask = CAShapeLayer()
    
    var previousPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    var currentPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    var nextPartInfo = PartInfoView(frame: .zero, iconName: iconNames[page + 1], temperature: temperature[page + 1], feelsLike: feelsLike[page + 1], condition: condition[page + 1])
    
    
    let previousPerson = UIImageView()
    let currentPerson = UIImageView()
    let nextPerson = UIImageView()
    
    let panView = UIView()
    var helpBezier = UIBezierPath()
    
    //MARK : otther properties
    
    var latitude :  String = ""
    var longitude : String = ""
    
    var locationManager: CLLocationManager?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {return .lightContent}
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {return .slide}
    override var prefersStatusBarHidden: Bool {return detailsIsOpened}
    var detailsIsOpened = false
    // MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePrevious()
        configureCurrent()
        configureNext()
        configurePanView()
        configureNavBar()
        
        determinePartOfDay()
        getCurrentHours()
        
        self.configureLocationManager()
        
        
        UserDefaults.standard.set(nil, forKey: "daysParts")
        if (UserDefaults.standard.value(forKey: "isOpened") != nil){
            retrieveData()
            //fill ui
            //retrieve settings
            
            SettingsModel.shared.retrieveSettings()
        }else{
            SettingsModel.shared.saveUnitForDetails()
        }
        if ReachabilityChecker.isInternetAvailable(){
            //loading new data
            getDataAndUpdate()
        }
        else{
           UserDefaultsService.getPreviousData()
        }
        
        UserDefaults.standard.set(1, forKey: "isOpened")
        
    }
    
    // MARK: Handlers
    
    func configurePrevious() {
        view.addSubview(previousPartInfo)
        view.addSubview(previousPerson)
        previousPerson.frame = CGRect(x: (width - 250) / 2, y: (height - 550) / 2, width: 250, height: 500)
    }
    
    func configureCurrent() {
        helpBezier = createCurrent()
        [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        currentLayer.mask = currentLayerMask
        currentLayer.fillColor = colors[page].cgColor
        view.layer.addSublayer(currentLayer)
        currentLayer.addSublayer(currentPartInfo.layer)
        currentLayer.addSublayer(currentPerson.layer)
        currentPerson.frame = CGRect(x: (width - 250) / 2, y: (height - 550) / 2, width: 250, height: 500)
        currentPerson.image = UIImage(named: persons[page])
    }
    
    func configureNext() {
        helpBezier = createNext()
        [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        nextLayer.mask = nextLayerMask
        nextLayer.fillColor = colors[page + 1].cgColor
        view.layer.addSublayer(nextLayer)
        nextLayer.addSublayer(nextPartInfo.layer)
        nextLayer.addSublayer(nextPerson.layer)
        nextPerson.frame = CGRect(x: (width - 250) / 2, y: (height - 550) / 2, width: 250, height: 500)
        nextPerson.image = UIImage(named: persons[page + 1])
    }
    
    func configurePanView() {
        panView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.addSubview(panView)
        panView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePanView(_:))))
        panView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapOnWeather(_:))))
    }
    
    @objc func handleTapOnWeather(_ recognizer: UITapGestureRecognizer) {
        let location = recognizer.location(in: panView)
        if location.x >= 30 && location.x <= width - 60 && location.y >= (0.89 * height - bottom - 30) && location.y <= (height - bottom - 30) {
            let detailsView = DetailsView(frame: .zero)
            view.addSubview(detailsView)
            detailsView.show()
            detailsIsOpened = true
            UIView.animate(withDuration: 0.5) {
                self.setNeedsStatusBarAppearanceUpdate()
            }
        }
    }
    
    @objc func handlePanView(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: panView)
            let newX = panView.frame.origin.x + translation.x
            if newX <= 0 {
                if page < colors.count - 1 {
                    panView.frame.origin.x = newX
                    helpBezier = createNextWhenPan(newX + width, translation.x)
                    [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
                }
            } else {
                if page != 0 {
                    panView.frame.origin.x = newX
                    helpBezier = createCurrentWhenPan(newX, translation.x)
                    [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
                }
            }
            view.layoutIfNeeded()
            recognizer.setTranslation(.zero, in: panView)
        } else if recognizer.state == .ended {
            if panView.frame.origin.x < -width / 2 {
                page += 1
                handleOpenNextLayer()
            } else if panView.frame.origin.x >= -width / 2 && panView.frame.origin.x <= 0 {
                handleCloseNextLayer()
            } else if panView.frame.origin.x > 0 && panView.frame.origin.x <= width / 2 {
                handleOpenCurrentLayer()
            } else {
                page -= 1
                handleCloseCurrentLayer()
            }
            panView.frame.origin.x = 0
        }
    }
    
    func updatePrevious() {
        previousPartInfo.icon.image = UIImage(named: iconNames[page - 1])
        previousPartInfo.temperature.text = temperature[page - 1]
        previousPartInfo.feelsLikeTemperature.text = feelsLike[page - 1]
        previousPartInfo.condition.text = condition[page - 1]
        previousPerson.image = UIImage(named: persons[page - 1])
    }
    
    func updateCurrent() {
        currentPartInfo.icon.image = UIImage(named: iconNames[page])
        currentPartInfo.temperature.text = temperature[page]
        currentPartInfo.feelsLikeTemperature.text = feelsLike[page]
        currentPartInfo.condition.text = condition[page]
        currentPerson.image = UIImage(named: persons[page])
    }
    
    func updateNext() {
        nextPartInfo.icon.image = UIImage(named: iconNames[page + 1])
        nextPartInfo.temperature.text = temperature[page + 1]
        nextPartInfo.feelsLikeTemperature.text = feelsLike[page + 1]
        nextPartInfo.condition.text = condition[page + 1]
        nextPerson.image = UIImage(named: persons[page + 1])
    }
    
    func handleOpenNextLayer() {
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            CATransaction.setValue(true, forKey: kCATransactionDisableActions)
            self.view.backgroundColor = colors[page - 1]
            self.currentLayer.fillColor = colors[page].cgColor
            self.helpBezier = createNext()
            [self.nextLayer, self.nextLayerMask].forEach {$0.path = self.helpBezier.cgPath}
            
            self.updatePrevious()
            self.updateCurrent()
            
            if page < colors.count - 1 {
                self.nextLayer.fillColor = colors[page + 1].cgColor
                self.updateNext()
            }
            self.view.layoutIfNeeded()
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = nextLayer.path
        helpBezier = createOpenedNext()
        [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        [nextLayer, nextLayerMask].forEach {$0.add(animation, forKey: nil)}
        animation.toValue = helpBezier.cgPath
        CATransaction.commit()
    }
    
    func handleCloseNextLayer() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = nextLayer.path
        helpBezier = createNext()
        [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        animation.toValue = helpBezier.cgPath
        [nextLayer, nextLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func handleOpenCurrentLayer() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = currentLayer.path
        helpBezier = createCurrent()
        animation.toValue = helpBezier.cgPath
        [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        [currentLayer, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func handleCloseCurrentLayer() {
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            CATransaction.setValue(true, forKey: kCATransactionDisableActions)
            self.updateCurrent()
            self.updateNext()
            if page != 0 {
                self.view.backgroundColor = colors[page - 1]
                self.updatePrevious()
            }
            self.nextLayer.fillColor = colors[page + 1].cgColor
            self.currentLayer.fillColor = colors[page].cgColor
            self.helpBezier = createCurrent()
            [self.currentLayer, self.currentLayerMask].forEach {$0.path = self.helpBezier.cgPath}
            self.view.layoutIfNeeded()
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = currentLayer.path
        helpBezier = createClosedCurrent()
        animation.toValue = helpBezier.cgPath
        [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        [currentLayer, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
        CATransaction.commit()
    }
    
    func configureNavBar() {
        view.addSubview(naviagtionBar)
        naviagtionBar.delegate = self
    }
    
    func changeCity() {
        UIView.animate(withDuration: 0.1) {
            self.naviagtionBar.dateLabel.alpha = 0
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.position))
        animation.duration = 0.6
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation.fromValue = currentLayer.position
        let openPosition = CGPoint(x: 0, y: height / 2)
        [currentLayer, currentLayerMask].forEach {$0.position = openPosition}
        animation.toValue = openPosition
        [currentLayer, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    // data loading funcs
    func getDataAndUpdate(){
        
        if UserDefaultsService.checkLatLong(){
            UserDefaultsService.getLatLong()
            let str = String(latitude) + "%20" + String(longitude)
            print("Geo request is \(str)")
            NetworkService.shared.getWeather(currentGEO: str, completion: {
                [weak self] data in
                Data.processDataAndSave(data : data)
                Data.prepareArraysToDisplay(data: data)
                //save
                DispatchQueue.main.async {
                    self!.fillUIelementsWithData()
                    NotificationService.shared.performAllNotificationTasks()
                    self!.updateNext()
                    self!.updateCurrent()
                    
                }
            })
            NetworkService.shared.autocomplete(latitude: latitude, longitude: longitude, completion: {
                [weak self] data in
                if data != nil{
                    let currentGeoPositionName = data![0].areaName[0].value + ", " + data![0].region[0].value + ", " + data![0].country[0].value
                    currentCity = currentGeoPositionName
                    DispatchQueue.main.async {
                       //
                    }
                } else {
//                    self!.createGeoAlert(locationImprossible: false)
                }
            })

        }
        else{
            NetworkService.shared.loadData(currentCity: currentCity, completion: {
                                [weak self] data in
                                Data.processDataAndSave(data : data)
                                Data.prepareArraysToDisplay(data: data)
                                //save
                                DispatchQueue.main.async {
//                                    self!.fillUIelementsWithData()
                                    self!.updateNext()
                                    self!.updateCurrent()
                                   
                                NotificationService.shared.performAllNotificationTasks()
                                }
                            })
            
        }
    }
    
    func fillUIelementsWithData(){
        
    }
    
}
