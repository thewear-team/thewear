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

protocol MainDelegate {
    func fillUIelementsWithData()
    func createGeoAlert(locationImprossible : Bool)
    func createInternetAlert()
    func createCityInputAlert()
}

class ViewController: UIViewController, MainDelegate {
  
    
    
    var delegate: ContainerViewController!
    var locationManager: CLLocationManager?
    
    var latitude :  String = ""
    var longitude : String = ""
    var isOpened = false
    
    let navigationBar = NavigationBar(frame: .zero)
    let locationButton = LocationButton(frame: .zero)
    let cityButton = CityButton(frame: .zero)
    let settingsButton = SettingsButton(frame: .zero)
    
    let partsCollectionView = PartsCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let detailsView = DetailsView(frame: .zero)
    
    // skeleton
    let personView = PersonView(frame: .zero)
    let head = createHead()
    let rightArm = createRightArm()
    let leftArm = createLeftArm()
    let body = createBody()
    let rightLeg = createRightLeg()
    let leftLeg = createLeftLeg()
    let hairCut = createHairCut()
    
    // clothes
    let rightSneaker = createSneaker()
    let leftSneaker = createSneaker()
    let rightTrouserLeg = createRightTrouserLeg()
    let leftTrouserLeg = createLeftTrouserLeg()
    //let rightTrouserLeg_moved = createMovedRightTrouserLeg()
    
    let leftLeg_moved = createMovedLeftLeg()
    let rightLeg_moved = createMovedRightLeg()
    let body_moved = createMovedBody()
    
    func configureMain() {
        [partsCollectionView, navigationBar].forEach {view.addSubview($0)}
        [cityButton, settingsButton, locationButton].forEach {navigationBar.addSubview($0)}
        [personView, detailsView].forEach {view.addSubview($0)}
        [head, rightArm, leftArm, body, leftLeg, rightLeg, hairCut, rightSneaker, leftSneaker, leftTrouserLeg, rightTrouserLeg].forEach {personView.layer.addSublayer($0)}
        
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
        rightTrouserLeg.position = CGPoint(x: 68, y: 243)
        leftTrouserLeg.position = CGPoint(x: 97, y: 243)
        
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
        //leftLeg.add(leftLegAnimation, forKey: nil)
        
        let rightLegAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        rightLegAnimation.fromValue = rightLeg.path
        rightLegAnimation.toValue = rightLeg_moved.path
        rightLegAnimation.duration = 2
        rightLegAnimation.repeatCount = .infinity
        rightLegAnimation.autoreverses = true
        rightLeg.add(rightLegAnimation, forKey: nil)
        
//        let rightTrouserLegAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
//        rightTrouserLegAnimation.fromValue = rightTrouserLeg.path
//        rightTrouserLegAnimation.toValue = rightTrouserLeg_moved.path
//        rightTrouserLegAnimation.duration = 2
//        rightTrouserLegAnimation.repeatCount = .infinity
//        rightTrouserLegAnimation.autoreverses = true
//        rightLeg.add(rightTrouserLegAnimation, forKey: nil)
        
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
    
        locationButton.addTarget(self, action: #selector(handleCurrentLocation), for: .touchUpInside)
        cityButton.addTarget(self, action: #selector(handleShowCityList), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(handleSettingsButton), for: .touchUpInside)
    }
    
    @objc func handleSettingsButton() {
        delegate.animateSettingsViewController()
    }
    
    @objc func handleShowCityList() {
        delegate.animateSearchCitiesViewController(cityButton.titleLabel!.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        determinePartOfDay()
        setObserverOnDaySelection()
        view.backgroundColor = .white
        configureMain()
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
                        self!.cityButton.setTitle(currentGeoPositionName, for: .normal)
                    }
                } else {
                    self!.createGeoAlert(locationImprossible: false)
                }
            })
        } else {
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
        if partOfDayNow != 3{
            partsCollectionView.scrollToItem(at: IndexPath(row: partOfDayNow, section: 0), at: .left, animated: true)}
        else{
            partsCollectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .left, animated: true)
        }
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
        self.present(alert, animated: true, completion: nil)
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
        self.present(alert, animated: true, completion: nil)
    }
}
