//
//  ViewController.swift
//  theWearApp
//
//  Created by Max Reshetov on 30/06/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, ChangeCityDelegate, DetailsViewDelegate {
    
    // MARK: Properties for UI
    
    //let preloaderView = PreloaderView()
    let navigationBar = NavigationBar(frame: .zero)
    let previousLayer = PreviousLayer(layer: CAShapeLayer())
    let currentLayer = CurrentLayer(layer: CAShapeLayer())
    let nextLayer = NextLayer(layer: CAShapeLayer())    
    let panView = PanView(frame: .zero)
    
    //MARK : other properties
    
    var latitude :  String = ""
    var longitude : String = ""
    
    var locationManager: CLLocationManager?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {return .lightContent}
    
    // MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        determinePartOfDay()
        getCurrentHours()
        
        self.configureLocationManager()
        
        UserDefaults.standard.set(nil, forKey: "daysParts")
        if (UserDefaults.standard.value(forKey: "isOpened") != nil){
            UserDefaultsService.getPreviousData()
            SettingsModel().retrieveSettings()
            //fill ui
            
        }else{
            SettingsModel.shared.saveUnitForDetails()
        }
        
        if ReachabilityChecker.isInternetAvailable(){
            //loading new data and updating ui
            getDataAndUpdate()
        }
        
        UserDefaults.standard.set(1, forKey: "isOpened")
        
        // New code
        [previousLayer, currentLayer, nextLayer].forEach {view.layer.addSublayer($0)}
        nextLayer.previousDelegate = previousLayer
        nextLayer.currentDelegate = currentLayer
        currentLayer.previousDelegate = previousLayer
        currentLayer.nextDelegate = nextLayer
        panView.currentDelegate = currentLayer
        panView.nextDelegate = nextLayer
        panView.delegate = self
        [navigationBar, panView].forEach {view.addSubview($0)}
        navigationBar.delegate = self
    }
    
    // MARK: Handlers
    
    func configureDetailsView() {
        let detailsView = DetailsView(frame: .zero)
        view.addSubview(detailsView)
        detailsView.show()
    }
    
    func changeCity() {
        UIView.animate(withDuration: 0.1) {
            self.navigationBar.dateLabel.alpha = 0
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.position))
        animation.duration = 0.6
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation.fromValue = currentLayer.position
        let openPosition = CGPoint(x: 0, y: height / 2)
        [currentLayer, currentLayer.currentLayerMask].forEach {$0.position = openPosition}
        animation.toValue = openPosition
        [currentLayer, currentLayer.currentLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func getDataAndUpdate() {
        
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
                    NotificationService.shared.performAllNotificationTasks()
                    self!.currentLayer.updateCurrent()
                    self!.nextLayer.updateNext()
                   
                }
            })
            NetworkService.shared.autocomplete(latitude: latitude, longitude: longitude, completion: {
                [weak self] data in
                if data != nil{
                    let currentGeoPositionName = data![0].areaName[0].value + ", " + data![0].region[0].value + ", " + data![0].country[0].value
                    currentCity = currentGeoPositionName
                    DispatchQueue.main.async {
                        self!.navigationBar.changeCity(for: currentGeoPositionName)
                    }
                } else {
//                    self!.createGeoAlert(locationImprossible: false)
                }
            })

        } else {
            NetworkService.shared.loadData(currentCity: currentCity, completion: {
                                [weak self] data in
                                Data.processDataAndSave(data : data)
                                Data.prepareArraysToDisplay(data: data)
                                //save
                                DispatchQueue.main.async {
                                    NotificationService.shared.performAllNotificationTasks()
                                    self!.currentLayer.updateCurrent()
                                    self!.nextLayer.updateNext()
                                    
                                   self!.navigationBar.changeCity(for: currentCity)
                                }
                            })
            
        }
    }
}
