//
//  Alerts.swift
//  theWearApp
//
//  Created by Валентина on 10.07.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit


class Alert {
    
    
    func createCityInputAlert()->UIAlertController{
        let alert = UIAlertController(title: "Something went wrong...", message: "Sorry, no matching cities found. Avoid using diacritics, please.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        return alert
//        self.present(alert, animated: true, completion: nil)
    }
    
    func createGeoAlert(locationImprossible : Bool){
        let alert = UIAlertController(title: "Something went wrong...", message: "Sorry, impossible to get your location. Please, euse city search instead.", preferredStyle: .alert)
        if locationImprossible {
            alert.message = "Sorry, impossible to get your location. Please, enable location services in your settings."
        }
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }}))
//        self.present(alert, animated: true, completion: nil)
    }
    func createInternetAlert(){
        let alert = UIAlertController(title: "Something went wrong...", message: "Sorry, impossible to get the forecast. Please, check your internet connection.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
            }}))
//        self.present(alert, animated: true, completion: nil)
    }
}
