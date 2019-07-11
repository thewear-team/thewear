//
//  Extensions.swift
//  theWearApp
//
//  Created by Валентина on 09.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import CoreLocation

extension Int {
    mutating func convertToFarenheit()->Int{
        return Int(self * (9/5) + 32)
    }
    mutating func convertToCelsius()->Int{
        return Int((self + 32) *  (5/9))
    }
    
}

extension ViewController : CLLocationManagerDelegate{
    
    func configureLocationManager(){
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        locationManager?.startMonitoringSignificantLocationChanges()
        locationManager?.allowsBackgroundLocationUpdates = true
        locationManager?.requestAlwaysAuthorization()
        locationManager?.requestLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            print("location ok")
            
            let geoCoordinates = locationManager?.location
            if geoCoordinates != nil {
                print(geoCoordinates?.coordinate.latitude)
                print(geoCoordinates?.coordinate.longitude)
                latitude = (geoCoordinates?.coordinate.latitude.description)!
                longitude = (geoCoordinates?.coordinate.longitude.description)!
                UserDefaults.standard.set(latitude, forKey: "latitude")
                UserDefaults.standard.set(longitude, forKey: "longitude")
            }
        }
        else {
            locationManager?.requestAlwaysAuthorization()
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error:: \(error.localizedDescription)")
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.first != nil {
            print("location:: \(locations.first!.coordinate)")
            latitude = locations.first!.coordinate.latitude.description
            longitude = locations.first!.coordinate.longitude.description
            UserDefaults.standard.set(latitude, forKey: "latitude")
            UserDefaults.standard.set(longitude, forKey: "longitude")
        }
        
    }
}
