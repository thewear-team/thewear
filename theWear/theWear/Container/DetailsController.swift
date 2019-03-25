//
//  DetailsController.swift
//  theWear
//
//  Created by Maxim Reshetov on 24/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit

class DetailsController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "days", for: indexPath) as! DaysWeatherTableViewCell
        cell.weekday.text = "Today"
        cell.day.text = "April, 23"
        
        cell.icon.image = UIImage(named: "sun")
        cell.degrees.text = "23°C 17°C"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == partsOfDaysCollectionView {
            let neededWidth = (1 / 3) * view.frame.width
            return CGSize(width: neededWidth, height: partsOfDaysCollectionView.frame.height)
        } else {
            return CGSize(width: 100, height: 125)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == partsOfDaysCollectionView {
            return 3
        } else {
            return 12
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == partsOfDaysCollectionView {
            if indexPath.item == 0 {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    
                    self.underView.frame = CGRect(x: 0, y: 0, width: self.underView.frame.width, height: self.underView.frame.height)
                    self.underView.layer.maskedCorners = [.layerMaxXMinYCorner]
                }, completion: nil)
            } else if indexPath.item == 1 {
                let neededWidth = (1 / 3) * view.frame.width
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.underView.frame = CGRect(x: neededWidth, y: 0, width: self.underView.frame.width, height: self.underView.frame.height)
                    self.underView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
                }, completion: nil)
            } else {
                let neededWidth = (2 / 3) * view.frame.width
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.underView.frame = CGRect(x: neededWidth, y: 0, width: self.underView.frame.width, height: self.underView.frame.height)
                    self.underView.layer.maskedCorners = [.layerMinXMinYCorner]
                }, completion: nil)
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == partsOfDaysCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "part", for: indexPath) as! PartsCollectionViewCell
            cell.name.text = "Now"
            cell.name.textColor = (indexPath.item == 0) ? .black : .white
            cell.icon.image = UIImage(named: "sun")
            cell.degree.text = "23°C"
            cell.degree.textColor = (indexPath.item == 0) ? .black : .white
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hourly", for: indexPath) as! HourlyCollectionViewCell
            cell.time.text = "9:00"
            cell.icon.image = UIImage(named: "sun")
            cell.degree.text = "23°C"
            return cell
        }
    }
    
    
    let partsOfDaysCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.isScrollEnabled = false
        return collectionView
    }()
    
    let hourlyWeatherCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    let underView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.layer.maskedCorners = [.layerMaxXMinYCorner]
        return view
    }()
    
    let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let daysWeatherTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.isScrollEnabled = false
        return tableView
    }()
    
    func configurePartsCollectionView() {
        view.addSubview(backgroundView)
        view.addSubview(underView)
        view.addSubview(partsOfDaysCollectionView)
        view.addSubview(hourlyWeatherCollectionView)
        view.addSubview(daysWeatherTableView)
        let neededHeight = (1 / 6) * view.frame.height
        partsOfDaysCollectionView.anchor(top: view.topAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: neededHeight, enableInsets: false)
        let neededWidth = (1 / 3) * view.frame.width

        underView.anchor(top: view.topAnchor, left: view.leadingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: neededWidth, height: neededHeight, enableInsets: false)
        backgroundView.anchor(top: underView.bottomAnchor, left: view.leadingAnchor, bottom: view.bottomAnchor, right: view.trailingAnchor, paddingTop: -1, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        hourlyWeatherCollectionView.anchor(top: backgroundView.topAnchor, left: backgroundView.leadingAnchor, bottom: nil, right: backgroundView.trailingAnchor, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 125, enableInsets: false)
        
    }
    
    let windImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "wind"))
        return imageView
    }()
    let windLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.text = "9 km/h"
        return label
    }()
    
    let humidityImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "humidity"))
        return imageView
    }()
    let humidityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.text = "20%"
        return label
    }()
    
    let pressureImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "pressure"))
        return imageView
    }()
    let pressureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.text = "100 hPa"
        return label
    }()
    
    let sunriseImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "sunrise"))
        return imageView
    }()
    let sunriseLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.text = "7:51"
        return label
    }()
    
    let sunsetImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "sunset"))
        return imageView
    }()
    let sunsetLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.text = "22:19"
        return label
    }()
    
    func configureMore() {
        [windImageView, windLabel, humidityImageView, humidityLabel, pressureImageView, pressureLabel].forEach {view.addSubview($0)}
        windImageView.anchor(top: hourlyWeatherCollectionView.bottomAnchor, left: view.leadingAnchor, bottom: nil, right: nil, paddingTop: 50, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: 60, height: 60, enableInsets: false)
        windLabel.anchor(top: nil, left: windImageView.trailingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 80, height: 60, enableInsets: false)
        windLabel.centerYAnchor.constraint(equalTo: windImageView.centerYAnchor).isActive = true
        
        humidityImageView.anchor(top: windImageView.bottomAnchor, left: view.leadingAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: 60, height: 60, enableInsets: false)
        humidityLabel.anchor(top: nil, left: humidityImageView.trailingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 80, height: 60, enableInsets: false)
        humidityLabel.centerYAnchor.constraint(equalTo: humidityImageView.centerYAnchor).isActive = true
        
        pressureImageView.anchor(top: humidityImageView.bottomAnchor, left: view.leadingAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: 60, height: 60, enableInsets: false)
        pressureLabel.anchor(top: nil, left: pressureImageView.trailingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 80, height: 60, enableInsets: false)
        pressureLabel.centerYAnchor.constraint(equalTo: pressureImageView.centerYAnchor).isActive = true
        
        daysWeatherTableView.anchor(top: pressureImageView.bottomAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 50, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 560, enableInsets: false)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        configurePartsCollectionView()
        configureMore()
        // configure partsOdDaysCollectionView
        partsOfDaysCollectionView.delegate = self
        partsOfDaysCollectionView.dataSource = self
        partsOfDaysCollectionView.register(PartsCollectionViewCell.self, forCellWithReuseIdentifier: "part")
        
        // configure hourlyWeatherCollectionView
        hourlyWeatherCollectionView.delegate = self
        hourlyWeatherCollectionView.dataSource = self
        hourlyWeatherCollectionView.register(HourlyCollectionViewCell.self, forCellWithReuseIdentifier: "hourly")
        
        // configure daysWeatherTableView
        daysWeatherTableView.delegate = self
        daysWeatherTableView.dataSource = self
        daysWeatherTableView.register(DaysWeatherTableViewCell.self, forCellReuseIdentifier: "days")
    }
}
