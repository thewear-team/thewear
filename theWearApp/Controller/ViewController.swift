//
//  ViewController.swift
//  theWearApp
//
//  Created by Max Reshetov on 30/06/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    let navigationBar = NavigationBar(frame: .zero)
    let previousLayer = PreviousLayer(layer: CAShapeLayer())
    let currentLayer = CurrentLayer(layer: CAShapeLayer())
    let nextLayer = NextLayer(layer: CAShapeLayer())
    let panView = PanView(frame: .zero)
    let preloaderView = PreloaderView()
    let partView = UIView()
    
    static var latitude :  String = ""
    static  var longitude : String = ""
    static var locationManager: CLLocationManager?
    override var preferredStatusBarStyle: UIStatusBarStyle {return .lightContent}
    
    @objc func handleTapOnPartView(_ recognizer: UITapGestureRecognizer) {
        configureDetailsView()
    }
    
    @objc func handleSwipeUp(_ recognizer: UISwipeGestureRecognizer) {
        configureDetailsView()
    }
    
    func configureDetailsView() {
        let detailsView = DetailsView(frame: .zero)
        detailsView.tag = 1
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(detailsView)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateCityAndDate(_:)), name: .newCityAndDate, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(getDataAndUpdate(_:)), name: .newLocation, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateUI(_:)), name: .needUpdate, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(startWorking(_:)), name: .startWorking, object: nil)
        [previousLayer, currentLayer, nextLayer].forEach {view.layer.addSublayer($0)}
        [navigationBar, panView, partView, preloaderView].forEach {view.addSubview($0)}
        nextLayer.previousDelegate = previousLayer
        nextLayer.currentDelegate = currentLayer
        currentLayer.previousDelegate = previousLayer
        currentLayer.nextDelegate = nextLayer
        panView.currentDelegate = currentLayer
        panView.nextDelegate = nextLayer
        
        let y = 0.9 * Frames.shared.height - Frames.shared.bottom - 30
        let w = Frames.shared.width - 60
        let h = 0.1 * Frames.shared.height
        partView.frame = CGRect(x: 30, y: y, width: w, height: h)
        partView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapOnPartView(_:))))
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeUp(_:)))
        swipeUp.direction = .up
        partView.addGestureRecognizer(swipeUp)
        
        startWorking(self)
        
    }
    
    @objc  func startWorking(_ sender : Any){
        determinePartOfDay()
        getCurrentHours()
        //testing new service
        NewNetworkService.shared.loadCurrentData(query: "Moscow")
        NewNetworkService.shared.loadFutureData(query: "Paris")
        NewNetworkService.shared.loadFutureData(query: "55.78926347611057,37.53836397636919")
        NewNetworkService.shared.loadAutocompleteSearchData(query: "Lon")
        //
        SettingsModel.retrieveSettings()
        
        self.configureLocationManager()
        DispatchQueue.global(qos: .userInitiated).sync {
            ViewController.locationManager?.requestLocation()
        }
        UserDefaultsService.SearchingSaver.getPreviousCities()
        
        if UserDefaults.standard.value(forKey: "isOpened") == nil {
            UserDefaults.standard.set(1, forKey: "isOpened")
            if ReachabilityChecker.isInternetAvailable() {
                self.getDataAndUpdate(self)
            } else {
                DispatchQueue.main.async {
                    if alert == nil {
                        alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get current forecast. Please, check your internet connection.", comment: ""))
                        if let window = UIApplication.shared.keyWindow {
                            window.addSubview(alert!)
                        }
                    }
                }
            }
        } else {
            SettingsModel.retrieveSettings()
            UserDefaultsService.SearchingSaver.getPreviousCities()
            if ReachabilityChecker.isInternetAvailable() {
                if self.isLocationCoordinatetsAvailable() {
                    ViewController.getDataByLocation()
                } else {//no location
                    if UserDefaultsService.checkLatLong() {
                        UserDefaultsService.getLatLong()
                        ViewController.getDataByLocation()
                    } else if UserDefaultsService.checkLastCity() {
                        UserDefaultsService.getLastCityAndLocation()
                        self.getDataByCityAndUpdate()
                    } else {
                        currentCity = "Moscow"
                        self.getDataByCityAndUpdate()
                    }
                }
            } else { // no internet
                UserDefaultsService.getPreviousData(completion : {
                    NotificationCenter.default.post(name: .needUpdate, object: nil)
                    NotificationCenter.default.post(name: .newCityAndDate, object: nil)
                })
            }
        }
    }
    
    @objc func updateCityAndDate(_ sender : Any) {
        let dispatchGroup = DispatchGroup()
        
        dispatchGroup.enter()
        DispatchQueue.main.async {
            self.navigationBar.cityLabel.text = currentCity
            self.navigationBar.cityLabel.layer.removeAllAnimations()
            self.navigationBar.cityMask.layer.removeAllAnimations()
            self.navigationBar.cityLabel.frame.origin.x = 0
            self.navigationBar.cityMask.frame.origin.x = 0
            
            let size = CGSize(width: 10000, height: 0.05 * Frames.shared.height)
            let estimatedFrame = NSString(string: currentCity).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: Frames.shared.cityFont!], context:  nil)
            self.navigationBar.cityLabel.frame = CGRect(x: 0, y: 0, width: estimatedFrame.width, height: 0.05 * Frames.shared.height)
            
            if estimatedFrame.width > self.navigationBar.frame.width - 0.05 * Frames.shared.height - 30 {
                UIView.animate(withDuration: 4.0, delay: 2.0, options: .curveLinear, animations: {
                    self.navigationBar.cityLabel.frame.origin.x -= self.navigationBar.cityLabel.frame.width - self.navigationBar.frame.width + 0.05 * Frames.shared.height + 30
                    self.navigationBar.cityMask.frame.origin.x += self.navigationBar.cityLabel.frame.width - self.navigationBar.frame.width + 0.05 * Frames.shared.height + 30
                })
                UIView.animate(withDuration: 4.0, delay: 8.0, options: .curveLinear, animations: {
                    self.navigationBar.cityLabel.frame.origin.x += self.navigationBar.cityLabel.frame.width - self.navigationBar.frame.width + 0.05 * Frames.shared.height + 30
                    self.navigationBar.cityMask.frame.origin.x -= self.navigationBar.cityLabel.frame.width - self.navigationBar.frame.width + 0.05 * Frames.shared.height + 30
                })
            }
            
            if selectedDay == 0 {
                self.navigationBar.changeDate(for: NSLocalizedString(NSLocalizedString("Today", comment: "") + ", " + "\(allDates[0].split(separator: ",")[1])", comment: ""))
            }else{
                self.navigationBar.changeDate(for: allDates[selectedDay])
            }
        }
        dispatchGroup.leave()
        dispatchGroup.notify(queue: .main) {
            UIView.animate(withDuration: 0.5, delay: 1.0, options: .curveEaseOut, animations: {
                self.preloaderView.currentIV.alpha = 0
                self.preloaderView.nextIV.alpha = 0
            })
            UIView.animate(withDuration: 0.5, delay: 2.0, options: .curveEaseOut, animations: {
                self.preloaderView.alpha = 0
            }, completion: { _ in
                self.preloaderView.removeFromSuperview()
            })
        }
    }
    
    @objc func updateUI(_ sender : Any) {
        
        if selectedDay == 0 && hourNow >= 6 {
            page = partOfDayNow
        }
        DispatchQueue.main.async {
            self.currentLayer.updateCurrent()
            self.nextLayer.updateNext()
            if page != 0 {
                self.previousLayer.updatePrevious()
            }
        }
    }
    
    @objc func getDataAndUpdate(_ sender : Any) {
        if self.isLocationCoordinatetsAvailable(){
            ViewController.getDataByLocation()
        } else {
            self.getDataByCityAndUpdate()
            
        }
    }
}
