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

class ViewController: UIViewController {
    var locationManager: CLLocationManager?
    
    var latitude :  String = ""
    var longitude : String = ""
    var isOpened = false
    
    let navigationBar = NavigationBar(frame: .zero)
    let cityTextField = CityTextField(frame: .zero)
    let settingsButton = SettingsButton(frame: .zero)
    let partsCollectionView = PartsCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let citiesTableView = CitiesTableView(frame: .zero)
    let citiesButton = CitiesButton(frame: .zero)
    let detailsView = DetailsView(frame: .zero)
    let settingsView = SettingsView()
    let locationButton = LocationButton(frame: .zero)
    let personView = PersonView(frame: .zero)
    
    let head = createHead()
    let rightArm = createRightArm()
    let leftArm = createLeftArm()
    let body = createBody()
    let rightLeg = createRightLeg()
    let leftLeg = createLeftLeg()
    let hairCut = createHairCut()
    
    let rightSneaker = createSneaker()
    let leftSneaker = createSneaker()
    
    let leftLeg_moved = createMovedLeftLeg()
    let rightLeg_moved = createMovedRightLeg()
    let body_moved = createMovedBody()
    
    func configureMain() {
        [partsCollectionView, navigationBar].forEach {view.addSubview($0)}
        [cityTextField, settingsButton, citiesButton, locationButton].forEach {navigationBar.addSubview($0)}
        [personView, detailsView, citiesTableView].forEach {view.addSubview($0)}
        [head, rightArm, leftArm, body, leftLeg, rightLeg, hairCut, rightSneaker, leftSneaker].forEach {personView.layer.addSublayer($0)}
        
        head.position = CGPoint(x: 80, y: 0)
        body.position = CGPoint(x: 45, y: 35)
        rightLeg.position = CGPoint(x: 67, y: 250)
        leftLeg.position = CGPoint(x: 92, y: 250)
        leftArm.position = CGPoint(x: 5, y: 115)
        rightArm.position = CGPoint(x: 158, y: 110)
        rightArm.transform = CATransform3DMakeRotation(0.38 * .pi, 0, 0, 1)
        hairCut.position = CGPoint(x: 76, y: -5)
        rightSneaker.position = CGPoint(x: 65, y: 445)
        leftSneaker.position = CGPoint(x: 141, y: 445)
        
        let rightArmAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rightArmAnimation.fromValue = 0.38 * .pi
        rightArmAnimation.toValue = 0.4 * .pi
        rightArmAnimation.duration = 3
        rightArmAnimation.repeatCount = .infinity
        rightArmAnimation.autoreverses = true
        rightArm.add(rightArmAnimation, forKey: "transform.rotation")
        
        let leftArmAnimation = CABasicAnimation(keyPath: "transform.rotation")
        leftArmAnimation.fromValue = 0
        leftArmAnimation.toValue = 0.01 * .pi
        leftArmAnimation.duration = 3
        leftArmAnimation.repeatCount = .infinity
        leftArmAnimation.autoreverses = true
        leftArm.add(leftArmAnimation, forKey: "transform.rotation")
        
        let leftLegAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        leftLegAnimation.fromValue = leftLeg.path
        leftLegAnimation.toValue = leftLeg_moved.path
        leftLegAnimation.duration = 2
        leftLegAnimation.repeatCount = .infinity
        leftLegAnimation.autoreverses = true
        leftLeg.add(leftLegAnimation, forKey: nil)
        
        let rightLegAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        rightLegAnimation.fromValue = rightLeg.path
        rightLegAnimation.toValue = rightLeg_moved.path
        rightLegAnimation.duration = 2
        rightLegAnimation.repeatCount = .infinity
        rightLegAnimation.autoreverses = true
        rightLeg.add(rightLegAnimation, forKey: nil)
        
        let bodyAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        bodyAnimation.fromValue = body.path
        bodyAnimation.toValue = body_moved.path
        bodyAnimation.duration = 2
        bodyAnimation.repeatCount = .infinity
        bodyAnimation.autoreverses = true
        body.add(bodyAnimation, forKey: nil)
        
        partsCollectionView.delegate = self
        partsCollectionView.dataSource = self
        partsCollectionView.register(PartCell.self, forCellWithReuseIdentifier: "partCell")
        
        citiesTableView.delegate = self
        citiesTableView.dataSource = self
        citiesTableView.register(CityCell.self, forCellReuseIdentifier: "cityCell")
        
        citiesButton.addTarget(self, action: #selector(handleCitiesButton), for: .touchUpInside)
        locationButton.addTarget(self, action: #selector(handleCurrentLocation), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        determinePartOfDay()
        setObserverOnDaySelection()
        view.backgroundColor = .white
        configureMain()
        self.cityTextField.delegate = self
        //location
      
        self.configureLocationManager()
        
        //reading previous data if exists
        UserDefaults.standard.set(nil, forKey: "daysParts")
        if (UserDefaults.standard.value(forKey: "isOpened") != nil){
            retrieveDataAndUpdate()
            self.fillUIelementsWithData()
            self.partsCollectionView.reloadData()
            retrieveSettings()
        }else{
            saveUnitForDetails()
        }
        if Reachability.isInternetAvailable(){
            getDataAndUpdate()
        }
        
        
        //getting fresh data
        UserDefaults.standard.set(1, forKey: "isOpened")
    }


    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    
    func getDataAndUpdate(){
        if UserDefaults.standard.value(forKey: "latitude") != nil && UserDefaults.standard.value(forKey: "longitude") != nil{
            latitude = UserDefaults.standard.value(forKey: "latitude") as! String
            longitude = UserDefaults.standard.value(forKey: "longitude") as! String
            let str = String(latitude) + "%20" + String(longitude)
            print("Geo request is \(str)")
            getWeather(currentGEO: str, completion: {
                [weak self] data in
                processData(data : data)
                //save
                DispatchQueue.main.async {
                    self!.fillUIelementsWithData()
                    configureNotifications()
                    notificationCenter?.removeAllDeliveredNotifications()
                    notificationCenter?.removeAllPendingNotificationRequests()
                     createnoticreateNotificationAtTime(hour: hourOfPush, minute: minuteOfPush, city: currentCity, text: genereatePush(hour: hourOfPush) ?? "", back: false)
                }
            })
            autocomplete(latitude: latitude, longitude: longitude, completion: {
                [weak self] data in
                if data != nil{
                    let currentGeoPositionName = data![0].areaName[0].value + ", " + data![0].region[0].value + ", " + data![0].country[0].value
                currentCity = currentGeoPositionName
                DispatchQueue.main.async {
                     self!.cityTextField.text = currentGeoPositionName
                    }
                }
                else{
                    self!.createGeoAlert(locationImprossible: false)
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
                notificationCenter?.removeAllDeliveredNotifications()
                notificationCenter?.removeAllPendingNotificationRequests()
                createnoticreateNotificationAtTime(hour: hourOfPush, minute: minuteOfPush, city: currentCity, text: genereatePush(hour: hourOfPush) ?? "", back: false)
                
            }
        })
        }
        
    }
    //
    func fillUIelementsWithData(){
        if selectedDay != 0 {
            detailsView.daysCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: true)
        }else{
             detailsView.daysCollectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .left, animated: true)
        }
        detailsView.hoursCollectionView.scrollToItem(at: IndexPath(row: getCurrentHours(), section: 0), at: .centeredHorizontally, animated: false)
        partsCollectionView.scrollToItem(at: IndexPath(row: partOfDayNow, section: 0), at: .left, animated: true)
        DispatchQueue.main.async {
            self.partsCollectionView.reloadData()
            self.detailsView.daysCollectionView.reloadData()
            self.detailsView.hoursCollectionView.reloadData()
            self.detailsView.nowCondition.text = statuses[currentCondition.2]?.0
            if allDays.count != 0{
                self.detailsView.detailsTableView.reloadData()

            }
        }
    }
   
}
