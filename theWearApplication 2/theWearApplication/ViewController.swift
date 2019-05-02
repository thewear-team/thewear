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

var currentCity  = "Moscow"
var hourNow : Int = 0
var partOfDayNow : PartsOfDay = .day
var demoCities = ["Washington", "New-York", "Istanbul", "Moscow", "Saint-Petersburg", "Novgorod", "London", "Budapest", "Utah", "Amsterdam", "Paris", "Rome", "Barcelona", "Madrid"]

var demoHours : [String] = ["00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00", "01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00", "13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]

var demoTemp  : [String] = [] // for output /temps by hours
var codesHours  : [String] = [] //for output /codes by hours
var currentCondition = ("", "", "") //for output/ current (temp, feelslike, code)
var allDays : [OneWeatherDay] = [] //contain 7 days by parts + details
var demoDays : [String] = [] // for output

class ViewController: UIViewController {
    
    var widthUnderView: CGFloat = 0.0
    var originYPartsCollectionView: CGFloat = 0.0
    var originYView: CGFloat = 30.0
    var cityTableViewIsOpened = false
    var top: CGFloat = 0.0
    
    var lastCity = ""
    
    let setting = SettingsView()
    
    // MAIN SCREEN
    let manImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "man"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let settingsButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "settings"), for: .normal)
        button.addTarget(self, action: #selector(handleSettings), for: .touchUpInside)
        return button
    }()
    let cityTextField: UITextField = {
        let textField = UITextField()
        textField.text = currentCity
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
    
    // DETAILED VIEW
    let detailsView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.layer.cornerRadius = 25
        return view
    }()
    let hoursCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    let daysCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    let weatherImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "113"))
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
    let windLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let humidityLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let pressureLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let uvLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    @objc func handleSettings() {
        setting.showSettings()
    }
    
    @objc func handleMenuButton() {
        if !cityTableViewIsOpened {
            self.cityTextField.isUserInteractionEnabled = true
            lastCity = cityTextField.text!
            self.cityTextField.becomeFirstResponder()
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.underView.frame = CGRect(x: 0, y: self.view.frame.height, width: self.underView.frame.width, height: self.underView.frame.height)
                self.originYPartsCollectionView = self.view.frame.height
                self.partsCollectionView.frame = CGRect(x: 0, y: self.originYPartsCollectionView, width: self.partsCollectionView.frame.width, height: self.partsCollectionView.frame.height)
                self.manImageView.center = CGPoint(x: self.manImageView.center.x, y: self.partsCollectionView.center.y)
                self.citiesTableView.alpha = 1
            })
        } else {
            self.cityTextField.resignFirstResponder()
            if cityTextField.text != lastCity {
                cityTextField.text = lastCity
            }
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.underView.frame = CGRect(x: 0, y: self.view.frame.height - 180, width: self.underView.frame.width, height: self.underView.frame.height)
                self.originYPartsCollectionView = 0
                self.partsCollectionView.frame = CGRect(x: 0, y: self.originYPartsCollectionView, width: self.partsCollectionView.frame.width, height: self.partsCollectionView.frame.height)
                self.manImageView.center = CGPoint(x: self.manImageView.center.x, y: self.partsCollectionView.center.y)
                self.citiesTableView.alpha = 0
            }) { _ in
                self.cityTextField.isUserInteractionEnabled = false
            }
        }
        cityTableViewIsOpened = !cityTableViewIsOpened
    }
    
    func configureNavigationBar() {
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            let topPadding = window?.safeAreaInsets.top
            top = topPadding!
        }
        
        [cityTextField, menuButton, settingsButton].forEach {view.addSubview($0)}
        originYView = top + 30
    
        cityTextField.frame = CGRect(x: 30, y: top + 25, width: view.frame.width - 150, height: 25)
        menuButton.frame = CGRect(x: 15, y: top + 15, width: view.frame.width - 135, height: 53)
        settingsButton.frame = CGRect(x: view.frame.width - 55, y: top + 25, width: 25, height: 25)
    }
    
    func configureCollectionView() {
        view.addSubview(partsCollectionView)
        partsCollectionView.frame = CGRect(x: 0, y: originYPartsCollectionView, width: view.frame.width, height: view.frame.height)
        view.addSubview(manImageView)
        manImageView.translatesAutoresizingMaskIntoConstraints = false
        manImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        manImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        manImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
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

    func configureDetails() {
        [windLabel, humidityLabel, pressureLabel, uvLabel].forEach {detailsView.addSubview($0)}
        windLabel.frame = CGRect(x: 25, y: 0, width: 250, height: 50)
        humidityLabel.frame = CGRect(x: 25, y: 50, width: 250, height: 50)
        pressureLabel.frame = CGRect(x: 25, y: 100, width: 250, height: 50)
        uvLabel.frame = CGRect(x: 25, y: 150, width: 250, height: 50)
       //
//       else{
        windLabel.text = "Wind - 9 km/h"
        humidityLabel.text = "Humidity - 42%"
        pressureLabel.text = "Pressure - 1004 hPa"
        uvLabel.text = "UV Index:  4 Moderate"
//        }
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
        configureDetails()
    }
    func setColor(){
        let code = allDays[0].morningcode
        let colorComponents = statuses[code]
        if colorComponents != nil {
            let newColor = UIColor(red: CGFloat(colorComponents!.1)/255, green: CGFloat(colorComponents!.2)/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1)
            view.backgroundColor = newColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.color_113
        
        
        //reading previous data if exists
        UserDefaults.standard.set(nil, forKey: "daysParts")
        if (UserDefaults.standard.value(forKey: "isOpened") != nil){
             self.retrieveDataAndUpdate()
             self.fillUIelementsWithData()
            self.partsCollectionView.reloadData()
        }
        //determining part of the day
        determinePartOfDay()
        //getting fresh data
        UserDefaults.standard.set(1, forKey: "isOpened")
        
        
        // configure CollectionView
        configureCollectionView()
        partsCollectionView.delegate = self
        partsCollectionView.dataSource = self
        partsCollectionView.register(MorningCell.self, forCellWithReuseIdentifier: "MorningCell")
        partsCollectionView.register(DayCell.self, forCellWithReuseIdentifier: "DayCell")
        partsCollectionView.register(EveningCell.self, forCellWithReuseIdentifier: "EveningCell")
        partsCollectionView.register(NightCell.self, forCellWithReuseIdentifier: "NightCell")
        
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
        
        getDataAndUpdate()
        self.fillUIelementsWithData()
        
        print(codesHours)//here for the first time still previous codes

    }
    func fillUIelementsWithData(){
        DispatchQueue.main.async {
            self.daysCollectionView.reloadData()
            self.hoursCollectionView.reloadData()
            self.weatherLabel.text = "\(currentCondition.0)°С"
            self.weatherLikeLabel.text = "Feels like \(currentCondition.1)°С"
            if allDays.count != 0{
                self.windLabel.text = "Wind - \(allDays[0].wind) km/h"
                self.humidityLabel.text = "Humidity - \(allDays[0].humidity)%"
                self.pressureLabel.text = "Pressure - \(allDays[0].pressure) hPa"
                self.uvLabel.text = "UV Index:  \(allDays[0].uv) Moderate"
            }
//            self.detailsView.win
        }
    }
   
    
    // свои фукнции потом спрячу в отдельный файл
    func retrieveDataAndUpdate(){
        if (UserDefaults.standard.value(forKey: "todayHours") != nil ){
            let allhours = UserDefaults.standard.value(forKey: "todayHours") as! String
//            print (allhours)
            demoTemp = []
            let hours  = (allhours.split(separator: ";"))
            for hour in hours {
                
                let parts = hour.split(separator: " ")
                print(parts)
                demoTemp.append(String(parts[0]) + "°С" )
                codesHours.append(String(parts[1]))
            }
//            print(demoTemp)
        }
            self.hoursCollectionView.reloadData()
            if (UserDefaults.standard.value(forKey: "daysParts") != nil){
                let alldays = UserDefaults.standard.value(forKey: "daysParts") as! [String]
                for day in alldays {
                    let splitedString = day.split(separator: "/")
                    let date = splitedString[0]
                    let parts = splitedString[1].split(separator: ",")
                    let detais = splitedString[2].split(separator: ",")
                    if parts.count > 9{
                        let oneFutureDay = OneWeatherDay(date : String(date), morningtemp:  String(parts[0]), daytemp:  String(parts[3]), eveningtemp:  String(parts[6]), nighttemp:  String(parts[9]), morningfeelslike:  String(parts[1]), dayfeelslike:  String(parts[4]), eveningfeelslike:  String(parts[7]), nightfeelslike:  String(parts[10]), morningcode:  String(parts[2]), daycode:  String(parts[5]), eveningcode:  String(parts[8]), nightcode:  String(parts[11]), pressure:  String(detais[2]), humidity:  String(detais[1]), wind:  String(detais[0]), uv:  String(detais[5]), sunset:  String(detais[4]), sunrise:  String(detais[3]))
                        allDays.append(oneFutureDay)
                    }
                    else {
                         let oneFutureDay = OneWeatherDay(date : String(date), morningtemp:  String(parts[0]), daytemp:  String(parts[3]), eveningtemp:  String(parts[6]), morningfeelslike:  String(parts[1]), dayfeelslike:  String(parts[4]), eveningfeelslike:  String(parts[7]), morningcode:  String(parts[2]), daycode:  String(parts[5]), eveningcode:  String(parts[8]), pressure:  String(detais[2]), humidity:  String(detais[1]), wind:  String(detais[0]), uv:  String(detais[5]), sunset:  String(detais[4]), sunrise:  String(detais[3]))
                        allDays.append(oneFutureDay)
                    }
                }
                print(allDays)
              
                daysCollectionView.reloadData()
            }
      
         if (UserDefaults.standard.value(forKey: "currentCondition") != nil){
            let currentString = UserDefaults.standard.value(forKey: "currentCondition") as! String
            let items = currentString.split(separator: ",")
            currentCondition.0 = String(items[0])
            currentCondition.1 = String(items[1])
            currentCondition.2 = String(items[2])
        }
    
}
    //и эту тоже
    func getDataAndUpdate(){
        var hoursString = ""
        loadData(currentCity: currentCity, completion: {
            [weak self] data in
            let currentConditionString = data.current_condition[0].temp_C + "," + data.current_condition[0].FeelsLikeC  + "," + data.current_condition[0].weatherCode //for saving
            currentCondition = (data.current_condition[0].temp_C ,  data.current_condition[0].FeelsLikeC,data.current_condition[0].weatherCode ) //for displaying now
            data.weather[0].hourly!.map{
                hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
            }
            data.weather[1].hourly!.map{
                hoursString = hoursString + $0.tempC + " " + $0.weatherCode + ";"
            }
            var parts : [String] = []
            var details : [String] = []
            var bound = 0
            allDays = []
            while bound < 7 {
                let sunInfo = data.weather[bound].astronomy![0].sunrise + "," + data.weather[bound].astronomy![0].sunset + ","
                let detailsLine  = data.weather[bound].hourly![15].windspeedKmph + "," + data.weather[bound].hourly![15].humidity + ","  + data.weather[bound].hourly![15].pressure + "," + sunInfo + data.weather[bound].uvIndex!
                print(detailsLine)
                details.append(detailsLine)
                let date = data.weather[bound].date! + "/"
                let morningLine = data.weather[bound].hourly![9].tempC + "," + data.weather[bound].hourly![9].FeelsLikeC + "," + data.weather[bound].hourly![9].weatherCode + ","
                
                let dayLine = data.weather[bound].hourly![15].tempC + "," + data.weather[bound].hourly![15].FeelsLikeC + "," + data.weather[bound].hourly![15].weatherCode + ","
                
                let eveningLine = data.weather[bound].hourly![21].tempC + "," + data.weather[bound].hourly![21].FeelsLikeC + "," + data.weather[bound].hourly![21].weatherCode + ","
                
                var nightLine = "/"
                
                if bound < 6 {
                    nightLine = data.weather[bound + 1].hourly![3].tempC + "," + data.weather[bound + 1].hourly![3].FeelsLikeC + "," + data.weather[bound + 1].hourly![3].weatherCode + "/"
                    let oneDay = OneWeatherDay(date: data.weather[bound].date!, morningtemp: data.weather[bound].hourly![9].tempC , daytemp: data.weather[bound].hourly![15].tempC, eveningtemp: data.weather[bound].hourly![21].tempC , nighttemp: data.weather[bound + 1].hourly![3].tempC, morningfeelslike: data.weather[bound].hourly![9].FeelsLikeC , dayfeelslike: data.weather[bound].hourly![15].FeelsLikeC, eveningfeelslike: data.weather[bound].hourly![21].FeelsLikeC , nightfeelslike: data.weather[bound + 1].hourly![3].FeelsLikeC, morningcode: data.weather[bound].hourly![9].weatherCode, daycode: data.weather[bound].hourly![15].weatherCode , eveningcode: data.weather[bound].hourly![21].weatherCode, nightcode: data.weather[bound + 1].hourly![3].weatherCode , pressure: data.weather[bound].hourly![15].pressure, humidity: data.weather[bound].hourly![15].humidity , wind: data.weather[bound].hourly![15].windspeedKmph, uv: data.weather[bound].uvIndex!, sunset: data.weather[bound].astronomy![0].sunset, sunrise: data.weather[bound].astronomy![0].sunrise)
                    allDays.append(oneDay)
                }
                //add saving of dayparts + details here (local)
                else{
                    let oneDay = OneWeatherDay(date: data.weather[bound].date!, morningtemp: data.weather[bound].hourly![9].tempC , daytemp: data.weather[bound].hourly![15].tempC, eveningtemp: data.weather[bound].hourly![21].tempC ,morningfeelslike: data.weather[bound].hourly![9].FeelsLikeC , dayfeelslike: data.weather[bound].hourly![15].FeelsLikeC, eveningfeelslike: data.weather[bound].hourly![21].FeelsLikeC , morningcode: data.weather[bound].hourly![9].weatherCode, daycode: data.weather[bound].hourly![15].weatherCode , eveningcode: data.weather[bound].hourly![21].weatherCode , pressure: data.weather[bound].hourly![15].pressure, humidity: data.weather[bound].hourly![15].humidity , wind: data.weather[bound].hourly![15].windspeedKmph, uv: data.weather[bound].uvIndex!, sunset: data.weather[bound].astronomy![0].sunset, sunrise: data.weather[bound].astronomy![0].sunrise)
                    allDays.append(oneDay)
                }
                
                let finalLine =  date + morningLine + dayLine + eveningLine + nightLine + detailsLine
                parts.append(finalLine)
                bound += 1
            }
//            print("HERE ARE NEW FETCHED DAYS \(allDays)")
            print(parts)
            UserDefaults.standard.set(currentConditionString, forKey: "currentCondition")//here is string
            UserDefaults.standard.set(parts, forKey: "daysParts")//here is an array == allDays in vc
            demoTemp = []
            //fill current values
            let hours  = (hoursString.split(separator: ";"))
            codesHours = []
            for hour in hours {
                var parts = hour.split(separator: " ")
                demoTemp.append(String(parts[0]) + "°С" )
                codesHours.append(String(parts[1]))
            }
            print("new codes arrived")
            print(codesHours)
            
            //save
            DispatchQueue.main.async {
                self?.hoursCollectionView.reloadData()
                self?.fillUIelementsWithData()
                self?.partsCollectionView.scrollToItem(at: IndexPath(item: partOfDayNow.rawValue, section: 0), at: .left, animated: true)
                self?.hoursCollectionView.scrollToItem(at: IndexPath(item: hourNow, section: 0), at: .left, animated: true)
            }
            UserDefaults.standard.set(hoursString, forKey: "todayHours")

        })
    }
    func determinePartOfDay(){
        let time = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: time)
        print(hour)
        hourNow = hour
        switch hour{
        case 6...11:
            partOfDayNow = .morning
        case 12...17:
            partOfDayNow = .day
        case 18...23:
            partOfDayNow = .evening
        case 0...5:
            partOfDayNow = .night
        default:
            partOfDayNow = .morning
        }
        print (partOfDayNow)
    }
}
