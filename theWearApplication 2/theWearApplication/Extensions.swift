//
//  Extensions.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit
import CoreLocation

extension UIColor {
    static let color_113 = UIColor(red: 36/255, green: 158/255, blue: 217/255, alpha: 1)
    static let dark113 = UIColor(red: 10/255, green: 80/255, blue: 116/255, alpha: 1)
    static let color_119 = UIColor(red: 145/255, green: 207/255, blue: 236/255, alpha: 1)
    static let color_122 = UIColor(red: 195/255, green: 205/255, blue: 222/255, alpha: 1)
}

extension UIView {
    func addCornerRadiusAnimation(to: CGFloat, duration: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.toValue = to
        animation.duration = duration
        layer.add(animation, forKey: "cornerRadius")
        layer.cornerRadius = to
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
        
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        cell.cityLabel.text = allCities[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var text = allCities[indexPath.row]
        text = text.replacingOccurrences(of: " ", with: "%20")
        selectedCity = text
        if selectedCity != ""{
            print(selectedCity)
            loadData(currentCity: selectedCity, completion: {
                [weak self] data in
                print(data.current_condition[0].temp_C)
                processData(data: data)
                DispatchQueue.main.async {
                    self!.handleCitiesButton()
                    self!.fillUIelementsWithData()
                }
            })}
//        self.handleCitiesButton()
        UIView.animate(withDuration: 0.2) {
            self.cityTextField.text = allCities[indexPath.row]
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return fullHeight * 0.07
    }
}

extension ViewController {
    @objc func handleCitiesButton() {
       
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            if self.isOpened {
                self.citiesTableView.alpha = 0
            } else {
                self.cityTextField.becomeFirstResponder()
                self.detailsView.frame = CGRect(x: self.detailsView.frame.origin.x, y: fullHeight, width: self.detailsView.frame.width, height: self.detailsView.frame.height)
            }
        }) { _ in
            UIView.animate(withDuration: 0.5, animations: {
                if self.isOpened {
                    self.cityTextField.resignFirstResponder()
                    self.detailsView.frame = CGRect(x: -fullHeight * 0.1, y: fullHeight * 0.8, width: width, height: fullHeight)
                } else {
                    self.citiesTableView.alpha = 1
                }
            })
            self.isOpened = !self.isOpened
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if allDays.count > 0 {
        switch(indexPath.row){
        case 0 :
            detailsView.nowCondition.text = statuses[allDays[selectedDay].morningcode]?.0
            detailsView.nowTemperature.text = allDays[selectedDay].morningtemp + "ºC"
            detailsView.nowFeelsLike.text =  "Feels like " + allDays[selectedDay].morningfeelslike + "ºC"
            detailsView.temperatureImageView.image = UIImage(named: allDays[selectedDay].morningcode)
        case 1 :
            detailsView.nowCondition.text = statuses[allDays[selectedDay].daycode]?.0
            detailsView.nowTemperature.text = allDays[selectedDay].daytemp + "ºC"
            detailsView.nowFeelsLike.text = "Feels like " + allDays[selectedDay].dayfeelslike + "ºC"
            detailsView.temperatureImageView.image = UIImage(named: allDays[selectedDay].daycode)
      
        case 2 :
            detailsView.nowCondition.text = statuses[allDays[selectedDay].eveningcode]?.0
            detailsView.nowTemperature.text = allDays[selectedDay].eveningtemp + "ºC"
            detailsView.nowFeelsLike.text = "Feels like " + allDays[selectedDay].eveningfeelslike + "ºC"
            detailsView.temperatureImageView.image = UIImage(named: allDays[selectedDay].eveningcode)
      
        case 3 :
            if allDays[selectedDay].nightcode != nil {
                detailsView.nowCondition.text = statuses[allDays[selectedDay].nightcode!]?.0
                detailsView.nowTemperature.text = allDays[selectedDay].nighttemp! + "ºC"
                detailsView.nowFeelsLike.text = "Feels like " + allDays[selectedDay].nightfeelslike! + "ºC"
                detailsView.temperatureImageView.image = UIImage(named: "000")
            }
            else{
                detailsView.nowCondition.text = "no info"
                detailsView.nowTemperature.text = "no info"
                detailsView.nowFeelsLike.text = "no info"
                detailsView.temperatureImageView.image = UIImage(named: "000")
            }
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partCell", for: indexPath) as! PartCell
            let colorComp = statuses["000"]
            cell.backgroundColor = UIColor(red: CGFloat((colorComp?.1)!) / 255, green: CGFloat((colorComp?.2)!) / 255, blue: CGFloat((colorComp?.3)!) / 255, alpha: 1.0)
        
        default :
            detailsView.nowCondition.text = "now condition"
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partCell", for: indexPath) as! PartCell
        if allDays.count > 0 {
            var code = ""
            switch(indexPath.row){
            case 0 :
                code = allDays[0].morningcode
            case 1 :
                code = allDays[0].daycode
            case 2 :
                code = allDays[0].eveningcode
            case 3 :
//                if allDays[0].nightcode != nil{
//                    code = allDays[0].nightcode!}
//                else {
//                    code = "113"
//                }
                code = "000"
            default :
                code = "113"
            }
            let colorComp = statuses[code]
//            print(code)
            if colorComp != nil {
                let color = UIColor(red: CGFloat((colorComp?.1)!) / 255, green: CGFloat((colorComp?.2)!) / 255, blue: CGFloat((colorComp?.3)!) / 255, alpha: 1.0)
                cell.backgroundColor = color
            }
            
        }else {
            cell.backgroundColor = UIColor.color_113}
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: width, height: fullHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

extension DetailsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailCell
        if allDays.count > 0{
        switch (indexPath.row){
        case 0:
            cell.name.text = allDays[selectedDay].wind + " m/s"
        case 1:
            cell.name.text = allDays[selectedDay].humidity + "%"
        case 2:
            cell.name.text = allDays[selectedDay].pressure + " mm Hg"
        case 3:
            cell.name.text = "UV: " + allDays[selectedDay].uv
        default :
            cell.name.text = ""
        }
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0.0625 * fullHeight
    }
    
}

extension DetailsView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == hoursCollectionView {
            return 48
        } else {
            return 7
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == hoursCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hourCell", for: indexPath) as! HourCell
            if demoTemp.count > 0 && codesHours.count > 0{
                cell.hour.text = demoHours[indexPath.row]
                cell.temperature.text = demoTemp[indexPath.row]
                cell.icon.image = UIImage(named: codesHours[indexPath.row])
            } else{
            cell.hour.text = "10:00"
            cell.icon.image = UIImage(named: "sun")
            cell.temperature.text = "23°C"
            }
            return cell
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! DayCell
            if allDays.count > 0{
                print("codes here")
                print(allDays[0].morningcode, allDays[0].daycode, allDays[0].eveningcode, allDays[0].nightcode)
                let colorComponents = statuses[allDays[indexPath.row].daycode]
                if colorComponents != nil{
                    if indexPath.row != 3{
                        let color = UIColor(red: CGFloat(colorComponents!.1 )/255, green: CGFloat(colorComponents!.2 )/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1.0)
                         cell.substrateView.backgroundColor = color
                    }
                }
                cell.day.text = allDays[indexPath.row].date
                cell.icon.image = UIImage(named: allDays[indexPath.row].daycode)
                cell.temperature.text = allDays[indexPath.row].daytemp
            }else{
            cell.day.text = "Tuesday,\nJuly, 13"
            cell.icon.image = UIImage(named: "sun")
            cell.temperature.text = "23°C"
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == hoursCollectionView {
            return 0
        } else {
            return buttonSize
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: buttonSize, bottom: 0, right: buttonSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == hoursCollectionView {
            return CGSize(width: 0.2 * width, height: 0.15 * fullHeight)
        } else {
            return CGSize(width: 0.3 * width, height: 0.2 * fullHeight)
        }
    }
}

extension ViewController : CLLocationManagerDelegate{
    
    func configureLocationManager(){
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
//        locationManager?.startUpdatingLocation()
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
                latitude = geoCoordinates?.coordinate.latitude
                longitude = geoCoordinates?.coordinate.longitude
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
            latitude = locations.first!.coordinate.latitude
            longitude = locations.first!.coordinate.longitude
//            getDataAndUpdate()
//            locationManager?.stopUpdatingLocation()
        }
        
    }
}
extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //textField code
        
        textField.resignFirstResponder()  //if desired
        handleSearchOfCity(city : textField.text)
        return true
    }
    
    func handleSearchOfCity(city : String?) {
        print("ended")
        if city != nil {
            autocomplete(cityTyped: city!, completion: {
                [weak self] results in
                allCities = []
                for result in results{
                    allCities.append(result.areaName[0].value + ", " +  result.region[0].value + ", " + result.country[0].value)
                }
                DispatchQueue.main.async{
                    self?.citiesTableView.reloadData()
                }
            })
        }
    }
}

extension SettingsView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SegmentedControlCell
        cell.backgroundColor = .white
        if collectionView == tempsSegmentedControl {
            cell.label.text = temps[indexPath.item]
        } else if collectionView == pressureSegmentedControl {
            cell.label.text = pressures[indexPath.item]
        } else {
            cell.label.text = windSpeeds[indexPath.item]
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == tempsSegmentedControl {
            if indexPath.item == 0 {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.tempsChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.1 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.tempsChooseView.frame = CGRect(x: width / 2 + buttonSize + self.tempsSegmentedControl.frame.width / 2, y: fullHeight * 0.1 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            }
        } else if collectionView == pressureSegmentedControl {
            if indexPath.item == 0 {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.pressureChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.2 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.pressureChooseView.frame = CGRect(x: width / 2 + buttonSize + self.tempsSegmentedControl.frame.width / 2, y: fullHeight * 0.2 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            }
        }
//       
        else {
            if indexPath.item == 0 {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.3 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize + self.tempsSegmentedControl.frame.width / 2, y: fullHeight * 0.3 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (width - width / 2 - buttonSize * 2) / 2, height: buttonSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}


