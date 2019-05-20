//
//  ViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//
//погоду по часам не сохраняем для будущих дней
//MARK : Saving rules for UserDefaults
//hours today  --"temp; code;" x24 +
//forecast-- days, temps, codes (for tableview) "date, temp, code/ wind, humidity, pressure, date;" x7 +


import UIKit
import CoreLocation

var selectedCity = ""
var selectedDay = 0 

class ViewController: UIViewController {
    
    var locationManager: CLLocationManager?
    var latitude : CLLocationDegrees? 
    var longitude : CLLocationDegrees?
    var isOpened = false
    
    let navigationBar = NavigationBar(frame: .zero)
    let cityTextField = CityTextField(frame: .zero)
    let settingsButton = SettingsButton(frame: .zero)
    let partsCollectionView = PartsCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let citiesTableView = CitiesTableView(frame: .zero)
    let citiesButton = CitiesButton(frame: .zero)
    
    let detailsView = DetailsView(frame: .zero)
    let settingsView = SettingsView()
    
    func configureMain() {
        [partsCollectionView, navigationBar, cityTextField, settingsButton, citiesButton, detailsView, citiesTableView].forEach {view.addSubview($0)}
        partsCollectionView.delegate = self
        partsCollectionView.dataSource = self
        partsCollectionView.register(PartCell.self, forCellWithReuseIdentifier: "partCell")
        citiesTableView.delegate = self
        citiesTableView.dataSource = self
        citiesTableView.register(CityCell.self, forCellReuseIdentifier: "cityCell")
        citiesButton.addTarget(self, action: #selector(handleCitiesButton), for: .touchUpInside)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureMain()
        self.cityTextField.delegate = self
        //location
        locationManager?.requestAlwaysAuthorization()
        self.configureLocationManager()
        
        //reading previous data if exists
        UserDefaults.standard.set(nil, forKey: "daysParts")
        if (UserDefaults.standard.value(forKey: "isOpened") != nil){
            retrieveDataAndUpdate()
            self.fillUIelementsWithData()
            self.partsCollectionView.reloadData()
        }
        
        //determining part of the day
        determinePartOfDay()
        
        //getting fresh data
        UserDefaults.standard.set(1, forKey: "isOpened")
        
        getDataAndUpdate()
        self.fillUIelementsWithData()
        //
       
        print(codesHours)//here for the first time still previous codes
   
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func getDataAndUpdate(){
        if latitude != nil && longitude != nil{
            let str = String(latitude!.description) + "%20" + String(longitude!.description)
            print("Geo request is \(str)")
            getWeather(currentGEO: str, completion: {
                [weak self] data in
                processData(data : data)
                //save
                DispatchQueue.main.async {
                    self!.fillUIelementsWithData()
                    configureNotifications()
                    createNotificationAtTime()
                }
            })
        } else{
        loadData(currentCity: currentCity, completion: {
            [weak self] data in
            processData(data : data)
            //save
            DispatchQueue.main.async {
                self!.fillUIelementsWithData()
                configureNotifications()
                createNotificationAtTime()
            }
        })
        }
    }
    //
    func fillUIelementsWithData(){
        detailsView.hoursCollectionView.scrollToItem(at: IndexPath(row: getCurrentHours(), section: 0), at: .centeredHorizontally, animated: false)
        partsCollectionView.scrollToItem(at: IndexPath(row: partOfDayNow.rawValue, section: 0), at: .left, animated: true)
        DispatchQueue.main.async {
            self.partsCollectionView.reloadData()
            self.detailsView.daysCollectionView.reloadData()
            self.detailsView.hoursCollectionView.reloadData()
            self.detailsView.nowTemperature.text = "\(currentCondition.0)°С"
            self.detailsView.nowFeelsLike.text = "Feels like \(currentCondition.1)°С"
            self.detailsView.temperatureImageView.image = UIImage(named: currentCondition.2)
            self.detailsView.nowCondition.text = statuses[currentCondition.2]?.0
            if allDays.count != 0{
                self.detailsView.detailsTableView.reloadData()

            }
        }
    }
   
  
}
