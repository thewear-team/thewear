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
//forecast-- days, temps, codes (for tableview) "date, temp, code/ wind, pressure, humidity, date;" x7 +


import UIKit

var demoCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]

var demoHours : [String] = ["00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]
var demoTemp  : [String] = [] // for output
var codesHours  : [String] = [] //for output
var currentCondition = ("", "", "") //for output
var allDays : [OneWeatherDay] = [] //contain 7 days by parts for output
var demoDays : [String] = [] // for output

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
        view.layer.cornerRadius = 45
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
        
        //reading previous data if exists
        
        if (UserDefaults.standard.value(forKey: "isOpened") != nil){
             self.retrieveDataAndUpdate()
             self.fillUIelementsWithData()
             UserDefaults.standard.set(1, forKey: "isOpened")
        }
        
        //getting fresh data
        getDataAndUpdate()
//        self.fillUIelementsWithData()
        
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
    func fillUIelementsWithData(){
        DispatchQueue.main.async {
            self.hoursCollectionView.reloadData()
            self.weatherLabel.text = "\(currentCondition.0)°С"
            self.weatherLikeLabel.text = "Feels like \(currentCondition.0)°С"
        }
    }
    
    func retrieveDataAndUpdate(){
        if (UserDefaults.standard.value(forKey: "todayHours") != nil ){
            let allhours = UserDefaults.standard.value(forKey: "todayHours") as! String
            print (allhours)
            demoTemp = []
            let hours  = (allhours.split(separator: ";"))
            for hour in hours {
                let parts = hour.split(separator: " ")
                demoTemp.append(String(parts[0]) + "°С" )
                codesHours.append(String(parts[0]))
            }
            print(demoTemp)
        }
            self.hoursCollectionView.reloadData()
            if (UserDefaults.standard.value(forKey: "daysParts") != nil){
                var alldays = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                for day in alldays {
                    let splitedString = day.split(separator: "/")
                    print(splitedString[0])
                    print(splitedString[1])
                    let parts = splitedString[0].split(separator: ",")
                    print(parts)
                    let detais = splitedString[1].split(separator: ",")
                    print(detais)
                    let oneFutureDay = OneWeatherDay(date : String(detais[3])  ,morningtemp: String(parts[0]), daytemp: String(parts[3]), eveningtemp: String(parts[6]), morningfeelslike: String(parts[1]), dayfeelslike: String(parts[4]), eveningfeelslike: String(parts[7]), morningcode: String(parts[2]), daycode: String(parts[5]), eveningcode: String(parts[8]), pressure: String(detais[2]), humidity: String(detais[1]), wind: String(detais[0]))
                    print(oneFutureDay)
                    allDays.append(oneFutureDay)
                }
                print(allDays)
            }
         if (UserDefaults.standard.value(forKey: "currentCondition") != nil){
            let currentString = UserDefaults.standard.value(forKey: "currentCondition") as! String
            let items = currentString.split(separator: ",")
            currentCondition.0 = String(items[0])
            currentCondition.1 = String(items[1])
            currentCondition.2 = String(items[2])
        }
    
}
    
    //forecast-- days, temp, mintemp, codes (for tableview and for details) "date, day, temp, mintemp, code, wind, pressure, sunrise (not yet), sunset (not yet), humidity;
    func getDataAndUpdate(){
        var hoursString = ""
        var alldaysStrings : [String] = []
        loadData(currentCity: "Moscow", completion: {
            [weak self] data in
            let currentConditionString = data.current_condition[0].temp_C + "," + data.current_condition[0].FeelsLikeC  + "," + data.current_condition[0].weatherCode //for saving
            currentCondition = (data.current_condition[0].temp_C ,  data.current_condition[0].FeelsLikeC,data.current_condition[0].weatherCode ) //for displaying now
            data.weather[0].hourly!.map{
                hoursString = hoursString + $0.FeelsLikeC + " " + $0.weatherCode + ";"
            }
            var parts : [String] = []
            for day in data.weather{
                let morningLine = day.hourly![9].tempC + "," + day.hourly![9].FeelsLikeC + "," + day.hourly![9].weatherCode + ","
                
                let dayLine = day.hourly![15].tempC + "," + day.hourly![15].FeelsLikeC + "," + day.hourly![15].weatherCode + ","
                
                let eveningLine = day.hourly![21].tempC + "," + day.hourly![21].FeelsLikeC + "," + day.hourly![21].weatherCode + "/"
                
                let detailsLine =  day.hourly![15].windspeedKmph + "," + day.hourly![15].humidity + "," + day.hourly![15].pressure + "," + day.date! + ";"
                
                let finalLine = morningLine + dayLine + eveningLine + detailsLine
                parts.append(finalLine)
            }
            print(parts)
            UserDefaults.standard.set(currentConditionString, forKey: "currentCondition")
            UserDefaults.standard.set(parts, forKey: "daysParts")
            demoTemp = []
            //fill current values
            let hours  = (hoursString.split(separator: ";"))
            for hour in hours {
                var parts = hour.split(separator: " ")
                demoTemp.append(String(parts[0]) + "°С" )
                codesHours.append(String(parts[1]))
            }
            
            //save
            DispatchQueue.main.async {
                self?.hoursCollectionView.reloadData()
                self?.fillUIelementsWithData()
            }
            UserDefaults.standard.set(hoursString, forKey: "todayHours")

        })
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
            return 24
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
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
            if (demoTemp.count > 0) && (demoHours.count > 0){
            cell.hourLabel.text = demoHours[indexPath.row]
            cell.tempLabel.text = demoTemp[indexPath.row]}
            cell.iconImageView.image = UIImage(named: "sun")
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "day", for: indexPath) as! DaysCell
            if demoDays.count > 0 {
                if allDays.count == 7{
//            cell.dayLabel.text = allDays[indexPath.row]
                }
            }
            return cell
        }
     }
 }

