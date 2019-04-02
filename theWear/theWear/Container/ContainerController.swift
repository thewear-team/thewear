//
//  ContainerController.swift
//  theWear
//
//  Created by Maxim Reshetov on 24/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    var detailsController: DetailsController!
    var mainController: MainController!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMainController()
        configureDetailsController()
        if !isInternetAvailable(){
            print("no")
            
        } else {
            print("yes")
            loadData(currentCity: "Moscow", completion: {
                [weak self] info in
                print(info.current_condition[0].FeelsLikeC)
                self!.createRealmData(info: info)            })
        }
       
    }
    
    func configureMainController() {
        mainController = MainController()
        view.addSubview(mainController.view)
        addChild(mainController)
        mainController.didMove(toParent: self)
    }
    
    @objc func handleGesture(_ recognizer: UIPanGestureRecognizer) {
        let neededHeight = (4.8 / 6) * detailsController.view.frame.height
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: detailsController.view)
            let newY = detailsController.view.frame.origin.y + translation.y
            
            let newYForNavBar = mainController.underView.frame.origin.y + (translation.y / 4)
            
            if newY <= neededHeight {
                if detailsController.view.frame.origin.y < neededHeight - 150 {
                     mainController.underView.frame = CGRect(x: mainController.underView.frame.origin.x, y: newYForNavBar, width: mainController.underView.frame.width, height: mainController.underView.frame.height)
                }
                detailsController.view.frame = CGRect(x: detailsController.view.frame.origin.x, y: newY, width: detailsController.view.frame.width, height: detailsController.view.frame.height)
                recognizer.setTranslation(.zero, in: detailsController.view)
            }
        } else if recognizer.state == .ended {
            if detailsController.view.frame.origin.y > detailsController.view.frame.height / 2 && detailsController.view.frame.origin.y < neededHeight - 75  {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: 0, y: neededHeight - 150, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
                    self.mainController.underView.frame = CGRect(x: self.mainController.underView.frame.origin.x, y: 44, width: self.mainController.underView.frame.width, height: self.mainController.underView.frame.height)
                }, completion: nil)
            } else if detailsController.view.frame.origin.y <= 44 {
                // handle
            } else if detailsController.view.frame.origin.y <= detailsController.view.frame.height / 2 {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: self.detailsController.view.frame.origin.x, y: 44, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
                    self.mainController.underView.frame = CGRect(x: self.mainController.underView.frame.origin.x, y: -self.mainController.underView.frame.height, width: self.mainController.underView.frame.width, height: self.mainController.underView.frame.height)
                }, completion: nil)
            } else if detailsController.view.frame.origin.y >= neededHeight - 75 {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: 0, y: neededHeight, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
                    self.mainController.underView.frame = CGRect(x: self.mainController.underView.frame.origin.x, y: 44, width: self.mainController.underView.frame.width, height: self.mainController.underView.frame.height)
                }, completion: nil)
            }
        }
    }
    
    func configureDetailsController() {
        detailsController = DetailsController()
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handleGesture(_:)))
        detailsController.view.addGestureRecognizer(panGesture)
        
        let neededHeight = (4.8 / 6) * detailsController.view.frame.height
        detailsController.view.frame = CGRect(x: 0, y: neededHeight, width: detailsController.view.frame.width, height: detailsController.view.frame.height)
        view.insertSubview(detailsController.view, at: 1)
        addChild(detailsController)
        detailsController.didMove(toParent: self)
    }
    
    func showDetailsController() {
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
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
