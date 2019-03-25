//
//  DetailsController.swift
//  theWear
//
//  Created by Maxim Reshetov on 24/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit

class DetailsController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == partsOfDaysCollectionView {
            let neededWidth = (1 / 3) * view.frame.width
            return CGSize(width: neededWidth, height: partsOfDaysCollectionView.frame.height)
        } else {
            return CGSize(width: 0, height: 0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == partsOfDaysCollectionView {
            return 3
        } else {
            return 0
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
            cell.degree.text = "23C"
            cell.degree.textColor = (indexPath.item == 0) ? .black : .white
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hourly", for: indexPath) as! HourlyCollectionViewCell
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
        collectionView.backgroundColor = .green
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
    
    func configurePartsCollectionView() {
        view.addSubview(backgroundView)
        view.addSubview(underView)
        view.addSubview(partsOfDaysCollectionView)
        view.addSubview(hourlyWeatherCollectionView)
        let neededHeight = (1 / 6) * view.frame.height
        partsOfDaysCollectionView.anchor(top: view.topAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: neededHeight, enableInsets: false)
        let neededWidth = (1 / 3) * view.frame.width

        underView.anchor(top: view.topAnchor, left: view.leadingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: neededWidth, height: neededHeight, enableInsets: false)
        backgroundView.anchor(top: underView.bottomAnchor, left: view.leadingAnchor, bottom: view.bottomAnchor, right: view.trailingAnchor, paddingTop: -1, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        hourlyWeatherCollectionView.anchor(top: backgroundView.topAnchor, left: backgroundView.leadingAnchor, bottom: nil, right: backgroundView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 125, enableInsets: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        configurePartsCollectionView()
        
        // configure partsOdDaysCollectionView
        partsOfDaysCollectionView.delegate = self
        partsOfDaysCollectionView.dataSource = self
        partsOfDaysCollectionView.register(PartsCollectionViewCell.self, forCellWithReuseIdentifier: "part")
        
        // configure hourlyWeatherCollectionView
        hourlyWeatherCollectionView.delegate = self
        hourlyWeatherCollectionView.dataSource = self
        hourlyWeatherCollectionView.register(HourlyCollectionViewCell.self, forCellWithReuseIdentifier: "hourly")
    }
}
