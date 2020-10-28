//
//  SearchViewExtensions.swift
//  theWearApp
//
//  Created by Max Reshetov on 06/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

extension SearchView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard ReachabilityChecker.isInternetAvailable() == true else {
            self.handleCloseButton()
            DispatchQueue.main.async {
                if alert == nil {
                    alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get current forecast. Please, check your internet connection.", comment: ""))
                    if let window = UIApplication.shared.keyWindow {
                        window.addSubview(alert!)
                    }
                }
            }
            return
        }
        
        if searchingNow && searchResult[0] != NSLocalizedString("No results", comment: "") { // if city is selected
            print(searchResult)
            if indexPath.row <= searchResult.count {
                print("selected city \(searchResult[indexPath.row])")
                if !cities.contains(searchResult[indexPath.row]) {
                    UserDefaultsService.SearchingSaver.saveCities(cities: cities)
                    cities.insert(searchResult[indexPath.row], at: 0)
                }
            }
            UserDefaultsService.SearchingSaver.saveCities(cities: cities)
            selectedDay = 0
            page = partOfDayNow
            getDataBySearch(city: searchResult[indexPath.row])
            
            UserDefaultsService.saveLastCity(city: currentCity)
            
        } else {
            selectedDay = 0
            page = partOfDayNow
            if indexPath.row == 0 { // if current location
                let dispatchGroup = DispatchGroup()
                dispatchGroup.enter()
                handleCurrentLocation()
                dispatchGroup.leave()
                dispatchGroup.notify(queue: .main) {
                    self.handleCloseButton()
                    print("LOADING IS COMPLETE")
                }
                
            } else if indexPath.row <= cities.count {
                if ReachabilityChecker.isInternetAvailable() {
                    getDataBySearch(city: cities[indexPath.row - 1])
                    cities.insert(cities[indexPath.row - 1], at: 0)
                    cities.remove(at: indexPath.row )
                }
            }
        }
    }
    
    func getDataBySearch(city : String) {
        DispatchQueue.main.async {
            self.loadingView = LoadingView()
            self.loadingView?.tag = 10
            if let window = UIApplication.shared.keyWindow {
                window.viewWithTag(10)?.removeFromSuperview()
                let colorViewMask = UIView()
                self.loadingView?.mask = colorViewMask
                colorViewMask.backgroundColor = .white
                colorViewMask.frame = CGRect(x: 0.5 * Frames.shared.width - 0.05 * Frames.shared.height, y: 0.45 * Frames.shared.height, width: 0.1 * Frames.shared.height, height: 0.1 * Frames.shared.height)
                window.addSubview(self.loadingView!)
            }
        }
        
        NetworkService.shared.loadData(currentCity: city, completion: {
            data in
            if ReachabilityChecker.isInternetAvailable(){
                
                print(data.current_condition[0].temp_C + "in \(currentCity)")
                Data.doAllDataManipulations(data: data)
                
                DispatchQueue.main.async {
                    NotificationCenter.default.post(name: .needUpdate, object: nil)
                    NotificationCenter.default.post(name: .newCityAndDate, object: nil)
                    self.handleCloseButton()
                    //remove loading
                    if let loading = UIApplication.shared.keyWindow?.viewWithTag(10) {
                        loading.removeFromSuperview()
                    }
                    self.loadingView = nil
                }
                currentCity = city
                UserDefaultsService.saveLastCity(city: currentCity)
                
            }else{
                DispatchQueue.main.async {
                    if let loading = UIApplication.shared.keyWindow?.viewWithTag(10) {
                        loading.removeFromSuperview()
                    }
                    self.loadingView = nil
                    
                    if alert == nil {
                        alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get current forecast. Please, check your internet connection.", comment: ""))
                        if let window = UIApplication.shared.keyWindow {
                            window.addSubview(alert!)
                        }
                    }
                    self.citiesTableView.reloadData()
                    
                }
            }
        })
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchingNow {
            return searchResult.count
        }else{
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if !searchingNow {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "useCurrentLocationcell", for: indexPath) as! UseCurrentLocationCell
                cell.selectionStyle = .none
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
                cell.cityName.text = (cities.count >= indexPath.row) ? cities[indexPath.row - 1] : ""
                cell.selectionStyle = .none
                return cell
            }
        } else { //if searching
            let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
            cell.cityName.text = searchResult[indexPath.row]
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension SearchView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("searching started")
        handleSearchOfCity(self)
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 1.0) {
            self.citiesTableView.frame.size.height = 0.925 * Frames.shared.height - Frames.shared.top - Frames.shared.keyboard - 0.075 * Frames.shared.height + Frames.shared.bottom
        }
        textField.becomeFirstResponder()
    }
    
    @objc func handleSearchOfCity(_ sender : Any) {
        self.cityTextField.resignFirstResponder()
        let city = cityTextField.text ?? ""
        if ReachabilityChecker.isInternetAvailable() {
            if !city.isEmpty && !city.contains(NSLocalizedString("No results", comment: "")){
                //add loading
                
                DispatchQueue.main.async {
                    self.loadingView = LoadingView()
                    self.loadingView?.tag  = 10
                    if let window = UIApplication.shared.keyWindow {
                        window.viewWithTag(10)?.removeFromSuperview()
                        window.addSubview(self.loadingView!)
                    }
                }
                NetworkService.shared.autocomplete(cityTyped: city, completion: {
                    results in
                    if results != nil{
                        self.searchResult = []
                        for result in results! {
                            self.searchResult.append(SearchResult.getSearchAreaName(item: result))
                        }
                        let setCities = Array(Set(self.searchResult))
                        self.searchResult =  setCities
                        print(self.searchResult)
                    } else {
                        self.searchResult = [NSLocalizedString("No results", comment: "")]
                    }
                    
                    DispatchQueue.main.async{
                        if let loading = UIApplication.shared.keyWindow?.viewWithTag(10) {
                            loading.removeFromSuperview()
                        }
                        self.loadingView = nil
                        self.citiesTableView.reloadData()
                    }
                })
            }
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
    }
}
