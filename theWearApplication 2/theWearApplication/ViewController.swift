//
//  ViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

let demoCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]

let demoHours = ["9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00"]
let demoTemp = ["20°С", "23°С", "24°С", "25°С", "22°С", "22°С", "21°С", "21°С", "20°С"]

var demoDays = ["July, 23\nTomorrow", "July, 24\nWednesday", "July, 25\nThursday", "July, 26\nFriday", "July, 27\nSaturday", "July,28\nSunday", "July, 29\nMonday"]

class ViewController: UIViewController {
    
    var widthUnderView: CGFloat = 0.0
    
    let hoursCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    let detailsView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.layer.cornerRadius = 25
        return view
    }()
    
    let daysCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
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
    var detailsViewY: CGFloat = 380
    var daysCollectionViewY: CGFloat = 660
    
    @objc func handlePan(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: underView)
            let newY = underView.frame.origin.y + translation.y
            if newY <= view.frame.height - 180 && newY >= 0 {
                additionalWidth = newY / 12
                underView.frame = CGRect(x: 0, y: newY, width: view.frame.width - additionalWidth, height: underView.frame.height)
                widthUnderView = underView.frame.width
                weatherImage.frame = CGRect(x: 30, y: self.top + 30 - (newY / 24), width: 90, height: 90)
                weatherLabel.frame = CGRect(x: 135, y: self.top + 30 - (newY / 24), width: 90, height: 45)
                weatherLikeLabel.frame = CGRect(x: 135, y: self.top + 50 + 30  - (newY / 24), width: 200, height: 45)
                hoursCollectionView.frame = CGRect(x: 0, y: 220, width: underView.frame.width, height: 100)
                detailsView.frame = CGRect(x: 30, y: detailsViewY, width: underView.frame.width - 60, height: 240)
                daysCollectionView.frame = CGRect(x: 0, y: daysCollectionViewY, width: underView.frame.width, height: 200)
            }
            recognizer.setTranslation(.zero, in: underView)
        } else {
            if underView.frame.origin.y >= view.frame.height - 380 {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.underView.frame = CGRect(x: 0, y: self.view.frame.height - 180, width: self.view.frame.width - 60, height: self.view.frame.height)
                }, completion: nil)
            } else if underView.frame.origin.y < view.frame.height - 380 {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.underView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
                    self.detailsView.frame = CGRect(x: 30, y: 380, width: self.underView.frame.width - 60, height: 240)
                    self.hoursCollectionView.frame = CGRect(x: 0, y: 220, width: self.underView.frame.width, height: 100)
                    self.weatherImage.frame = CGRect(x: 30, y: self.top + 30, width: 90, height: 90)
                    self.weatherLabel.frame = CGRect(x: 135, y: self.top + 30, width: 90, height: 45)
                    self.weatherLikeLabel.frame = CGRect(x: 135, y: self.top + 80, width: 200, height: 45)
                    self.daysCollectionView.frame = CGRect(x: 0, y: self.daysCollectionViewY, width: self.underView.frame.width, height: 200)
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
        
        daysCollectionView.delegate = self
        daysCollectionView.dataSource = self
        daysCollectionView.register(DaysCell.self, forCellWithReuseIdentifier: "day")
        
        underView.addSubview(hoursCollectionView)
        underView.addSubview(daysCollectionView)
        underView.addSubview(detailsView)
        
        hoursCollectionView.frame = CGRect(x: 0, y: 240, width: underView.frame.width, height: 100)
        detailsView.frame = CGRect(x: 30, y: detailsViewY, width: underView.frame.width - 60, height: 240)
        daysCollectionView.frame = CGRect(x: 0, y: daysCollectionViewY, width: underView.frame.width, height: 200)
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

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoCities.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
        cell.backgroundColor = .clear
        cell.cityLabel.text = demoCities[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == partsCollectionView {
            return 3
        } else if collectionView == hoursCollectionView {
            return 9
        } else {
            return 7
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == partsCollectionView {
            return CGSize(width: view.frame.width, height: view.frame.height)
        } else if collectionView == hoursCollectionView {
            return CGSize(width: 80, height: 100)
        } else {
            return CGSize(width: 150, height: 200)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == daysCollectionView {
            return 30
        } else {
            return 0
        }
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
        } else if collectionView == hoursCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hours", for: indexPath) as! HoursCell
            cell.hourLabel.text = demoHours[indexPath.row]
            cell.tempLabel.text = demoTemp[indexPath.row]
            cell.iconImageView.image = UIImage(named: "sun")
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "day", for: indexPath) as! DaysCell
            cell.dayLabel.text = demoDays[indexPath.row]
            return cell
        }
     }
 }
