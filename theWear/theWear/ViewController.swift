//
//  ViewController.swift
//  theWearConcept
//
//  Created by Maxim Reshetov on 10/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit
import CoreLocation

let demoCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]

class ViewController: UIViewController {
    
    let hoursCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .green
        return collectionView
    }()
    
    let daysTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .red
        return tableView
    }()
    
    let settingsButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "settings"), for: .normal)
        button.alpha = 0
        button.addTarget(self, action: #selector(handleSettings), for: .touchUpInside)
        return button
    }()
    
    // Down menu
    let weatherImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "sun"))
        return imageView
    }()
    
    let weatherLabel: UILabel = {
        let label = UILabel()
        label.text = "24°С"
        label.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    let weatherLikeLabel: UILabel = {
        let label = UILabel()
        label.text = "Feels like 25°C"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor.dark113
        return label
    }()
    
    let underView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        view.layer.maskedCorners = [.layerMaxXMinYCorner]
        return view
    }()
    
class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager!
    var coordinate : CLLocationCoordinate2D?
    
    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 2
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 2
        return view
    }()
    
    let cityTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Moscow"
        textField.isUserInteractionEnabled = false
        textField.textColor = .white
        textField.tintColor = .white
        textField.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        return textField
    }()
    
    let menuButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleMenuButton), for: .touchUpInside)
        return button
    }()
    
    let partsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let citiesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    var originYPartsCollectionView: CGFloat = 0.0
    var originYView: CGFloat = 30.0
    var cityTableViewIsOpened = false
    
    var lastCity = ""
    
    @objc func handleSettings() {
        present(SettingsViewController(), animated: true, completion: nil)
    }
    
    @objc func handleMenuButton() {
        if !cityTableViewIsOpened {
            self.cityTextField.isUserInteractionEnabled = true
            lastCity = cityTextField.text!
            self.cityTextField.becomeFirstResponder()
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.underView.frame = CGRect(x: 0, y: self.view.frame.height, width: self.underView.frame.width, height: self.underView.frame.height)
                self.settingsButton.alpha = 1
                self.originYPartsCollectionView = self.view.frame.height
                self.partsCollectionView.frame = CGRect(x: 0, y: self.originYPartsCollectionView, width: self.partsCollectionView.frame.width, height: self.partsCollectionView.frame.height)
                self.citiesTableView.alpha = 1
                
                // animating view1
                self.originYView = self.view1.frame.origin.y + 3
                self.view1.frame = CGRect(x: self.view1.frame.origin.x, y: self.originYView, width: self.view1.frame.width, height: self.view1.frame.height)
                self.view1.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
                
                // animating view2
                self.view2.frame = CGRect(x: self.view2.frame.origin.x, y: self.originYView, width: 30, height: self.view2.frame.height)
                self.view2.transform = CGAffineTransform(rotationAngle: -(CGFloat.pi / 4))
            })
        } else {
            self.cityTextField.resignFirstResponder()
            if cityTextField.text != lastCity {
                cityTextField.text = lastCity
            }
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.underView.frame = CGRect(x: 0, y: self.view.frame.height - 180, width: self.underView.frame.width, height: self.underView.frame.height)
                self.settingsButton.alpha = 0
                self.originYPartsCollectionView = 0
                self.partsCollectionView.frame = CGRect(x: 0, y: self.originYPartsCollectionView, width: self.partsCollectionView.frame.width, height: self.partsCollectionView.frame.height)
                self.citiesTableView.alpha = 0
                
                // animating view1
                self.originYView = self.top + 30
                self.view1.transform = CGAffineTransform(rotationAngle: 0)
                self.view1.frame = CGRect(x: 30, y: self.originYView, width: 30, height: 4)
                
                
                // animating view2
                self.view2.transform = CGAffineTransform(rotationAngle: 0)
                self.view2.frame = CGRect(x: 30, y: self.originYView + 9, width: 15, height: 4)
                
                
            }) { _ in
                self.cityTextField.isUserInteractionEnabled = false
            }
        }
        cityTableViewIsOpened = !cityTableViewIsOpened
    }
    
    var top: CGFloat = 0.0
    
    func configureNavigationBar() {
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            let topPadding = window?.safeAreaInsets.top
            top = topPadding!
        }
            
        [view1, view2, cityTextField, menuButton, settingsButton].forEach {view.addSubview($0)}
        originYView = top + 30
            
        view1.frame = CGRect(x: 30, y: originYView, width: 30, height: 4)
        view2.frame = CGRect(x: 30, y: originYView + 9, width: 15, height: 4)
        cityTextField.frame = CGRect(x: 75, y: top + 25, width: view.frame.width - 150, height: 23)
        menuButton.frame = CGRect(x: 15, y: top + 15, width: 60, height: 53)
        settingsButton.frame = CGRect(x: view.frame.width - 60, y: top + 30 - 6.5, width: 30, height: 30)
    }
    
    func configureCollectionView() {
        view.addSubview(partsCollectionView)
        partsCollectionView.frame = CGRect(x: 0, y: originYPartsCollectionView, width: view.frame.width, height: view.frame.height)
    }
    
    func configureTableView() {
        view.addSubview(citiesTableView)
        citiesTableView.anchor(top: cityTextField.bottomAnchor, left: view.leadingAnchor, bottom: view.bottomAnchor, right: view.trailingAnchor, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        citiesTableView.alpha = 0
    }
    

    var additionalWidth: CGFloat = 0.0
    
    @objc func handlePan(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: underView)
            let newY = underView.frame.origin.y + translation.y
            if newY <= view.frame.height - 180 && newY >= 0 {
                additionalWidth = newY / 12
                underView.frame = CGRect(x: 0, y: newY, width: view.frame.width - additionalWidth, height: underView.frame.height)
                self.weatherImage.frame = CGRect(x: 30, y: self.top + 30 - (newY / 24), width: 90, height: 90)
                self.weatherLabel.frame = CGRect(x: 135, y: self.top + 30 - (newY / 24), width: 90, height: 45)
                self.weatherLikeLabel.frame = CGRect(x: 135, y: self.top + 50 + 30  - (newY / 24), width: 200, height: 45)
                
                hoursCollectionView.frame = CGRect(x: 0, y: 180, width: hoursCollectionView.frame.width + additionalWidth, height: 100)
                daysTableView.frame = CGRect(x: 0, y: 300, width: daysTableView.frame.width + additionalWidth, height: underView.frame.height - 180 - 100 - 20)
            }
            recognizer.setTranslation(.zero, in: underView)
        } else {
            if underView.frame.origin.y >= view.frame.height - 380 {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.underView.frame = CGRect(x: 0, y: self.view.frame.height - 180, width: self.view.frame.width - 60, height: self.view.frame.height)
                    
//                    self.weatherImage.frame = CGRect(x: 30, y: 45, width: 90, height: 90)
//                    self.weatherLabel.frame = CGRect(x: 135, y: 45, width: 90, height: 45)
//                    self.weatherLikeLabel.frame = CGRect(x: 135, y: 95, width: 200, height: 45)
//
                }, completion: nil)
            } else if underView.frame.origin.y < view.frame.height - 380 {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.underView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
                    
                    self.hoursCollectionView.frame = CGRect(x: 0, y: 180, width: self.underView.frame.width, height: 100)
                    self.daysTableView.frame = CGRect(x: 0, y: 300, width: self.underView.frame.width, height: self.underView.frame.height - 180 - 100 - 20)
                    
                    self.weatherImage.frame = CGRect(x: 30, y: self.top + 30, width: 90, height: 90)
                    self.weatherLabel.frame = CGRect(x: 135, y: self.top + 30, width: 90, height: 45)
                    self.weatherLikeLabel.frame = CGRect(x: 135, y: self.top + 80, width: 200, height: 45)
                    
                }, completion: nil)
            }
        }
    }
    
    func configureDown() {
        view.addSubview(underView)
        [weatherImage, weatherLabel, weatherLikeLabel].forEach {underView.addSubview($0)}
        
        underView.frame = CGRect(x: 0, y: view.frame.height - 180, width: view.frame.width - 60, height: view.frame.height)
        weatherImage.frame = CGRect(x: 30, y: 45, width: 90, height: 90)
        weatherLabel.frame = CGRect(x: 135, y: 45, width: 90, height: 45)
        weatherLikeLabel.frame = CGRect(x: 135, y: 95, width: 200, height: 45)
        
        let recognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        underView.addGestureRecognizer(recognizer)
    }
    
    func configureDaysAndHours() {
        hoursCollectionView.delegate = self
        hoursCollectionView.dataSource = self
        hoursCollectionView.register(HoursCell.self, forCellWithReuseIdentifier: "hours")
        
        daysTableView.delegate = self
        daysTableView.dataSource = self
        daysTableView.register(DaysCell.self, forCellReuseIdentifier: "days")
        
        underView.addSubview(hoursCollectionView)
        underView.addSubview(daysTableView)
        
        hoursCollectionView.frame = CGRect(x: 0, y: 180, width: underView.frame.width, height: 100)
        daysTableView.frame = CGRect(x: 0, y: 300, width: underView.frame.width, height: underView.frame.height - 180 - 100 - 20)
}
        
    func determineMyCurrentLocation() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        print(CLLocationManager.locationServicesEnabled())
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
            //locationManager.startUpdatingHeading()
        }
        else{
            self.cityTextField.text = "Can't get current location"
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation:CLLocation = locations[0] as CLLocation
        
        // Call stopUpdatingLocation() to stop listening for location updates,
        // other wise this function will be called every time when user location changes.
        
//         manager.stopUpdatingLocation()
        
        print("user latitude = \(userLocation.coordinate.latitude)")
        print("user longitude = \(userLocation.coordinate.longitude)")
        self.coordinate = userLocation.coordinate
        var textGeo = String(coordinate!.latitude) + "%20" + String(coordinate!.longitude)
        getWeather(currentGEO: textGeo, completion: {
            [weak self] weather in
            print("Now it feels like \(weather.current_condition[0].FeelsLikeC)")
            self!.saveNewData(data: weather)
        })
        autocomplete(lattitude: String(self.coordinate!.latitude), longitude: String(self.coordinate!.longitude), completion: {
            [weak self] search in
            DispatchQueue.main.async {
                 self?.cityTextField.text = search[0].region[0].value
            }
            print("Here is the geo info: \(search[0].country[0].value), \(search[0].region[0].value)")
        })
//        manager.stopUpdatingLocation()
    }
    func saveNewData(data : Data){
       print(RealmProvider.configuration.fileURL)
        let realmToday = RealmWeatherToday()
        realmToday.morningTemp = data.weather[0].hourly![9].tempC
        realmToday.morningFeelsLike = data.weather[0].hourly![9].FeelsLikeC
        
        realmToday.dayTemp = data.weather[0].hourly![15].tempC
        realmToday.dayFeelsLike = data.weather[0].hourly![15].FeelsLikeC
        
        realmToday.eveningTemp = data.weather[0].hourly![21].tempC
        realmToday.eveningFeelsLike = data.weather[0].hourly![21].FeelsLikeC
        
        realmToday.nightTemp = data.weather[1].hourly![3].tempC
        realmToday.nightFeelsLike = data.weather[1].hourly![3].FeelsLikeC
        RealmProvider.cleanTables()
        RealmProvider.saveToDB(items: [realmToday], update: false)
        
        var realmHours = [RealmWeatherHour]()
        for hour in data.weather[0].hourly!{
            let newhour = RealmWeatherHour()
            newhour.iconCode = hour.weatherCode
            newhour.tempC = hour.tempC
            realmHours.append(newhour)
        }
        RealmProvider.saveToDB(items: realmHours, update: false)
        
        var realmForecasts = [RealmWeatherForecast]()
        for day in data.weather{
            let newDay = RealmWeatherForecast()
            var avg = 0
            day.hourly!.map{
                avg = avg + Int($0.tempC)!
            }
            avg = avg / 24
            newDay.avgTemp = String(avg)
            newDay.day = day.date!
            newDay.feelsLikeTemp  = day.hourly![15].FeelsLikeC
            newDay.iconCode = day.hourly![15].weatherCode
            realmForecasts.append(newDay)
        }
        RealmProvider.saveToDB(items: realmForecasts, update: false)
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        print("Error \(error)")
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.color_113
        
        // configure CollectionView
        configureCollectionView()
        partsCollectionView.delegate = self
        partsCollectionView.dataSource = self
        partsCollectionView.register(NowCell.self, forCellWithReuseIdentifier: "nowCell")
        partsCollectionView.register(SecondCell.self, forCellWithReuseIdentifier: "secondCell")
        partsCollectionView.register(ThirdCell.self, forCellWithReuseIdentifier: "thirdCell")
        
        // configure NavigationBar
        configureNavigationBar()
        
        // configure TableView
        configureTableView()
        citiesTableView.delegate = self
        citiesTableView.dataSource = self
        citiesTableView.register(CityCell.self, forCellReuseIdentifier: "cityCell")

        
        // configure down menu
        configureDown()
        
        // configure hours and days
        configureDaysAndHours()

        determineMyCurrentLocation()
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == citiesTableView {
            return demoCities.count
        } else {
            return 12
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == citiesTableView {
            return 50
        } else {
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == citiesTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
            cell.backgroundColor = .clear
            cell.cityLabel.text = demoCities[indexPath.row]
            cell.selectionStyle = .none
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "days", for: indexPath) as! DaysCell
            cell.backgroundColor = .clear
            return cell
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == partsCollectionView {
            return 3
        } else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == partsCollectionView {
            return CGSize(width: view.frame.width, height: view.frame.height)
        } else {
            return CGSize(width: 90, height: 90)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        if scrollView == partsCollectionView {
            let x = targetContentOffset.pointee.x
            let index = x / view.frame.width
            if index == 0 {
                view.backgroundColor = UIColor.color_113
            } else if index == 1 {
                view.backgroundColor = UIColor.color_122
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == partsCollectionView {
            if indexPath.item == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nowCell", for: indexPath) as! NowCell
                cell.bgLabel.text = "Now"
                cell.backgroundColor = UIColor.color_113
                return cell
            } else if indexPath.item == 1 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCell", for: indexPath) as! SecondCell
                cell.bgLabel.text = "Evening"
                cell.backgroundColor = UIColor.color_119
                return cell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "thirdCell", for: indexPath) as! ThirdCell
                cell.bgLabel.text = "Night"
                cell.backgroundColor = UIColor.color_122
                return cell
            }
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hours", for: indexPath) as! HoursCell
            return cell
        }
    }
    
}

