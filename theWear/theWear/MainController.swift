//
//  ViewController.swift
//  theWear
//
//  Created by Валентина on 17/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit
import CoreLocation

class MainController: UIViewController, CLLocationManagerDelegate {

    var locManger = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.customBlue
        setupNavigationBar()
        let locationManager = CLLocationManager()
        self.locManger = locationManager
//        self.locManger.start
        locManger.delegate = self
        enableLocationServices(manager: self.locManger)
        loadData(currentCity: "Moscow", completion: {
            [weak self] info in
            print(info.current_condition[0].FeelsLikeC)
            self!.createRealmData(info: info)
        })
        
       
      
    }
    
     //MARK : UI implementation
    
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
    
    
    //MARK : Core location funcs
    
    func enableLocationServices(manager : CLLocationManager) {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            // Request when-in-use authorization initially
            manager.requestWhenInUseAuthorization()
            manager.requestAlwaysAuthorization()
            break
            
        case .restricted, .denied:
            // Disable location features
            self.locManger.requestAlwaysAuthorization()
            self.locManger.requestWhenInUseAuthorization()
            
            print("no")
            break
            
        case .authorizedWhenInUse:
            // Enable basic location features
            
            break
            
        case .authorizedAlways:
            // Enable any of your app's location features
            
            break
        }
    }
    
    func getCurrentLocation (){
        let location = self.locManger.r
    }
    
    
    // MARK : REALM funcs
    func createRealmData(info : Data){
        let currentDayData = RealmWeatherToday()
        currentDayData.dayTemp = info.weather[0].hourly![15].tempC
        currentDayData.morningTemp = info.weather[0].hourly![9].tempC
        currentDayData.eveningTemp = info.weather[0].hourly![21].tempC
        currentDayData.nightTemp = info.weather[1].hourly![3].tempC
        
        currentDayData.morningFeelsLike = info.weather[0].hourly![9].FeelsLikeC
        currentDayData.dayFeelsLike = info.weather[0].hourly![15].FeelsLikeC
        currentDayData.eveningFeelsLike = info.weather[0].hourly![21].FeelsLikeC
        currentDayData.nightFeelsLike = info.weather[1].hourly![3].FeelsLikeC
        
        var days = [RealmWeatherForecast]()
        for day in info.weather{
            let newday = RealmWeatherForecast()
            var sumTemp = 0
            day.hourly!.map{
                sumTemp = sumTemp + Int($0.tempC)!
            }
            sumTemp = sumTemp / 24
            newday.avgTemp = String(sumTemp)
            newday.day = day.date!
            newday.feelsLikeTemp = day.hourly![15].FeelsLikeC
            newday.iconCode = day.hourly![15].weatherCode
            days.append(newday)
        }
        var hours = [RealmWeatherHour]()
        if info.weather[0].hourly != nil{
            for hour in info.weather[0].hourly!{
                let newHour = RealmWeatherHour()
                newHour.iconCode = hour.weatherCode
                newHour.tempC = hour.tempC
                hours.append(newHour)
            }
        }
        RealmProvider.cleanTables()
        RealmProvider.saveToDB(items: days, update: false)
        RealmProvider.saveToDB(items: [currentDayData], update: false)
        RealmProvider.saveToDB(items: hours, update: false)
    }
    

}

