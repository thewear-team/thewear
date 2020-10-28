//
//  Extensions.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import CoreLocation
import NotificationCenter

extension Int {
    mutating func convertToFarenheit()->Int{
        return Int(self * (9/5) + 32)
    }
    mutating func convertToCelsius()->Int{
        return Int((self + 32) *  (5/9))
    }
    
}

extension ViewController : CLLocationManagerDelegate {
    
    func configureLocationManager(){
        ViewController.locationManager = CLLocationManager()
        ViewController.locationManager!.delegate = self
        
        ViewController.locationManager!.requestAlwaysAuthorization()
        ViewController.locationManager!.requestWhenInUseAuthorization()
        ViewController.locationManager?.startMonitoringSignificantLocationChanges()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            print("location status ok")
            
            let geoCoordinates = ViewController.locationManager?.location
            if geoCoordinates != nil  {
                if geoCoordinates!.compareToPreviousSignificance(){
                    ViewController.latitude = (geoCoordinates?.coordinate.latitude.description)!
                    ViewController.longitude = (geoCoordinates?.coordinate.longitude.description)!
                    UserDefaultsService.saveLatLong(coordinates: (ViewController.latitude, ViewController.longitude))
                    NotificationCenter.default.post(name: .newLocation, object: nil)
                }
            }
        }
        else {
            ViewController.locationManager?.requestAlwaysAuthorization()
        }
        
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error:: \(error.localizedDescription)")
    }
    
    func isLocationCoordinatetsAvailable()->Bool{
        if !ViewController.latitude.isEmpty && !ViewController.longitude.isEmpty{
            return true
        } else{
            return false
        }
    }
    
    static func refreshLocation()->Bool{
        ViewController.locationManager?.requestLocation()
        let currentLocation = ViewController.locationManager?.location
        if currentLocation != nil{
            let lat = currentLocation?.coordinate.latitude.description
            let lon = currentLocation?.coordinate.longitude.description
            print(lat, lon)
            ViewController.latitude = lat ?? ViewController.latitude
            ViewController.longitude = lon ?? ViewController.longitude
            UserDefaultsService.saveLatLong(coordinates: (ViewController.latitude, ViewController.longitude))
            NotificationCenter.default.post(name: .newLocation, object: nil)
            return true
        }
        else{
            DispatchQueue.main.async {
                if alert == nil {
                    alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get your location. Please, enable location services in the settings.", comment: ""))
                    if let window = UIApplication.shared.keyWindow {
                        window.addSubview(alert!)
                    }
                }
            }
            return false
        }
    }
    
    static func getDataByLocation() {
        
        let coordinates = (ViewController.latitude, ViewController.longitude)
        let str = coordinates.0 + "%20" + coordinates.1
        DispatchQueue.global().sync {
            NetworkService.shared.getWeather(currentGEO: str, completion: {
                data in
                Data.doAllDataManipulations(data: data)
                NotificationService.shared.performAllNotificationTasks()
                
                NetworkService.shared.autocomplete(latitude: coordinates.0, longitude: coordinates.1, completion: {
                    data in
                    if data != nil {
                        let currentGeoPositionName = SearchResult.getProperAreaName(item: data![0])
                        lastLocation = currentGeoPositionName
                        currentCity = currentGeoPositionName
                        UserDefaultsService.saveLastCity(city: currentCity)
                        UserDefaultsService.saveLastLocation(location: lastLocation)
                    } else {
                        DispatchQueue.main.async {
                            if alert == nil {
                                alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get your location. Please, enable location services in the settings.", comment: ""))
                                if let window = UIApplication.shared.keyWindow {
                                    window.addSubview(alert!)
                                }
                            }
                        }
                    }
                    NotificationCenter.default.post(name: .newCityAndDate, object: nil)
                    NotificationCenter.default.post(name: .needUpdate, object: nil)
                })
            })
        }
    }
    
    
    func getDataByCityAndUpdate(){
        
        NetworkService.shared.loadData(currentCity: currentCity, completion: {
            data in
            Data.doAllDataManipulations(data: data)
            NotificationCenter.default.post(name: .newCityAndDate, object: nil)
            NotificationCenter.default.post(name: .needUpdate, object: nil)
        })
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.first != nil {
            if locations[0].compareToPreviousSignificance(){
                
                DispatchQueue.global().sync {
                    ViewController.latitude = locations.first!.coordinate.latitude.description
                    ViewController.longitude = locations.first!.coordinate.longitude.description
                }
                NotificationCenter.default.post(name: .newLocation, object: nil)
                UserDefaultsService.saveLatLong(coordinates: (ViewController.latitude, ViewController.longitude))
                ViewController.locationManager?.stopUpdatingLocation()
            }
        }
    }
}
extension Notification.Name {
    static let newLocation = Notification.Name("NewLocation")
    static let needUpdate = Notification.Name("NeedUpdate")
    static let newCityAndDate = Notification.Name("NewCityAndDate")
    static let needUpdateSettings = Notification.Name("NeedUpdateSettings")
    static let startWorking = Notification.Name("startWorking")
}

extension CLLocation{
    func compareToPreviousSignificance()->Bool{
        guard (Double(ViewController.latitude) != nil && ((Double(ViewController.longitude)) != nil)) else {return true}
        guard (ViewController.latitude != "" && (ViewController.longitude) != "") else {return true}
        let previousCoordinate =  CLLocation(latitude: Double(ViewController.latitude) as! CLLocationDegrees , longitude: Double(ViewController.longitude) as! CLLocationDegrees)
        if self.distance(from: previousCoordinate) > 1000{
            return true
        }
        return false
    }
}



  
