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
    static let body = UIColor(red: 197/255, green: 153/255, blue: 116/255, alpha: 1)
    static let shadowBody = UIColor(red: 179/255, green: 137/255, blue: 102/255, alpha: 1)
    static let sneakerColor = UIColor(red: 0.891, green: 0.891, blue: 0.891, alpha: 1)
    static let hairCutColor = UIColor(red: 48/255, green: 47/255, blue: 47/255, alpha: 1)
    static let trouserLegBlueColor = UIColor(red: 98/255, green: 120/255, blue: 217/255, alpha: 1)
    static let trouserLegShadowBlueColor = UIColor(red: 76/255, green: 95/255, blue: 176/255, alpha: 1)
    static let hoodieColor = UIColor(red: 240/255, green: 126/255, blue: 126/255, alpha: 1)
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
        currentCity = text
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
            if indexPath.row == partOfDayNow && selectedDay == 0{
                //if now
                if (getCurrentHours() > 22 || getCurrentHours() < 4) &&  statuses[currentCondition.2]?.0 == "Sunny"{
                    detailsView.nowCondition.text = "Clear"
                }else{
                    detailsView.nowCondition.text = statuses[currentCondition.2]?.0}
                detailsView.nowTemperature.text = currentCondition.0 + "ºC now"
                detailsView.nowFeelsLike.text =  "Feels like " + currentCondition.1 + "ºC"
                detailsView.temperatureImageView.image = UIImage(named: currentCondition.2)
            }else{
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
                if statuses[allDays[selectedDay].nightcode!]?.0 == "Sunny"{
                     detailsView.nowCondition.text = "Clear"
                } else{
                    detailsView.nowCondition.text = statuses[allDays[selectedDay].nightcode!]?.0}
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
            partsCollectionView.backgroundColor = UIColor(red: CGFloat((colorComp?.1)!) / 255, green: CGFloat((colorComp?.2)!) / 255, blue: CGFloat((colorComp?.3)!) / 255, alpha: 1.0)
        
        default :
            detailsView.nowCondition.text = "now condition"
            }
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partCell", for: indexPath) as! PartCell
        if allDays.count > 0 {
            var code = ""
            switch(indexPath.row){
            case 0 :
                code = allDays[selectedDay].morningcode
            case 1 :
                code = allDays[selectedDay].daycode
            case 2 :
                code = allDays[selectedDay].eveningcode
            case 3 :
                code = "000"
            default :
                code = "113"
            }
            let colorComp = statuses[code]
//            print(code)
            if colorComp != nil {
                let color = UIColor(red: CGFloat((colorComp?.1)!) / 255, green: CGFloat((colorComp?.2)!) / 255, blue: CGFloat((colorComp?.3)!) / 255, alpha: 1.0)
                cell.backgroundColor = color
                partsCollectionView.backgroundColor = color
                
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

let detailsNames = ["wind", "humidity", "pressure", "uv"]

extension DetailsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailCell
        cell.icon.image = UIImage(named: detailsNames[indexPath.row])
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
            cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
            if allDays.count > 0 {
                let colorComponents = statuses[allDays[indexPath.row].daycode]
                if colorComponents != nil {
                    if indexPath.row != 3 {
                        let color = UIColor(red: CGFloat(colorComponents!.1 )/255, green: CGFloat(colorComponents!.2 )/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1.0)
                         cell.substrateView.backgroundColor = color
                    }
                }
                let dateResult = getNameOfDay(dateString: allDays[indexPath.row].date)
                cell.day.text = dateResult ?? allDays[indexPath.row].date
                cell.icon.image = UIImage(named: allDays[indexPath.row].daycode)
                cell.temperature.text = allDays[indexPath.row].daytemp
                cell.nightTemperature.text = allDays[indexPath.row].nighttemp ?? "-"
            } else {
            cell.day.text = "---"
            cell.icon.image = UIImage(named: "sun")
            cell.temperature.text = "-"
            cell.nightTemperature.text =  "-"
            }
            return cell
        }
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: daysCollectionView)
        if let tappedIndex = daysCollectionView.indexPathForItem(at: location) {
            
            // You can use tappedIndex for doing sth
            selectedDay = tappedIndex.row
            NotificationCenter.default.post(name: dayChangedName, object: selectedDay)
            print(selectedDay)
            
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.frame = CGRect(x: self.detailsViewX, y: fullHeight * 0.8, width: width, height: fullHeight)
                
                self.temperatureImageView.frame.origin.y = 0.05 * fullHeight
                self.nowTemperature.frame.origin.y = 0.05 * fullHeight
                self.nowFeelsLike.frame.origin.y = 0.1 * fullHeight
                self.nowCondition.frame.origin.y = 0.125 * fullHeight
                
                self.temperatureImageView.frame.origin.x = buttonSize + 0.1 * fullHeight
                self.nowTemperature.frame.origin.x = buttonSize + 0.2 * fullHeight
                self.nowFeelsLike.frame.origin.x = buttonSize + 0.2 * fullHeight
                self.nowCondition.frame.origin.x = buttonSize + 0.2 * fullHeight
                
                self.detailsViewIsOpened = false
            }, completion: nil)
            UIViewPropertyAnimator(duration: 0.5, curve: .easeOut) {
                self.layer.cornerRadius = self.cornerRadiusOfDetailsView
                }.startAnimation()
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
        print(city)
        if city != nil {
            autocomplete(cityTyped: city!, completion: {
                [weak self] results in
                allCities = []
                if results != nil{
                    for result in results!{
                    allCities.append(result.areaName[0].value  + ", " + result.country[0].value)
                    }
                }else{
                    self!.createCityInputAlert()
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
        } else if collectionView == windSpeedSegmentedControl {
            cell.label.text = windSpeeds[indexPath.item]
        } else if collectionView == genderSegmentedControl {
            cell.label.text = genders[indexPath.row]
        } else {
            cell.label.text = notifications[indexPath.row]
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
        } else if collectionView == windSpeedSegmentedControl {
            if indexPath.item == 0 {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.3 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.windSpeedChooseView.frame = CGRect(x: width / 2 + buttonSize + self.tempsSegmentedControl.frame.width / 2, y: fullHeight * 0.3 + buttonSize, width: self.tempsSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            }
        } else if collectionView == genderSegmentedControl {
            if indexPath.item == 0 {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.genderChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.45 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.genderChooseView.frame = CGRect(x: width / 2 + buttonSize + self.genderSegmentedControl.frame.width / 2, y: fullHeight * 0.45 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
            }
        } else {
            if indexPath.item == 0 {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.notificationsChooseView.frame = CGRect(x: width / 2 + buttonSize, y: fullHeight * 0.6 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
                self.datePicker.isEnabled = true
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.notificationsChooseView.frame = CGRect(x: width / 2 + buttonSize + self.genderSegmentedControl.frame.width / 2, y: fullHeight * 0.6 + buttonSize, width: self.genderSegmentedControl.frame.width / 2, height: 5)
                }, completion: nil)
                self.datePicker.isEnabled = false
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
extension ViewController{
    func setObserverOnDaySelection(){
        NotificationCenter.default.addObserver(self, selector: #selector(handleDayChange(_sender:)), name: dayChangedName, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(reloadUiAfterInactive(_sender:)), name: afterInactive, object: nil)
    }
    @objc func reloadUiAfterInactive(_sender : Any){
        configureMain()
        retrieveDataAndUpdate()
        self.fillUIelementsWithData()
    }
    
    @objc func handleDayChange(_sender : Any){
        print("NEW DAY IS \(selectedDay)")
        self.fillUIelementsWithData()
        if selectedDay == 0{
                self.partsCollectionView.scrollToItem(at: IndexPath(item: partOfDayNow, section: 0), at: .left, animated: true)
        }else{
        self.partsCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: true)
        }}
    

    override func viewWillAppear(_ animated: Bool) {
        print("WIL APPEAR")
        retrieveDataAndUpdate()
    }

    override func viewDidAppear(_ animated: Bool) {
        fillUIelementsWithData()
    }
    func createCityInputAlert(){
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
        self.present(alert, animated: true, completion: nil)
    }
    func createGeoAlert(){
        let alert = UIAlertController(title: "Something went wrong...", message: "Sorry, impossible to get your location. Please, use city search instead.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }

}


