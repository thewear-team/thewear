//
//  DetailsViewExtension.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

extension DetailsView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == hoursCollectionView {
            return allHours.count 
        } else {
            return allDays.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == daysCollectionView{
            if selectedDay != indexPath.row {
                selectedDay = indexPath.row
                page = 0
                Data.prepareArraysForAnotherDay(selectedDay: selectedDay)
                if selectedDay == 0 {
                    Data.prepareCurrentCondition(current: currentCondition)
                }
                DispatchQueue.main.async {
                    NotificationCenter.default.post(name: .needUpdate, object: nil)
                    NotificationCenter.default.post(name: .newCityAndDate, object: nil)
                    self.closeDetailedView()
                }
            }
            else{
                self.closeDetailedView()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == hoursCollectionView {
            if indexPath.row == 26{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "separatorHourCell", for: indexPath) as! SeparatorHour
                let separator = UIView()
                separator.backgroundColor = UIColor(white: 0, alpha: 0.1)
                separator.layer.cornerRadius = 2.5
                cell.addSubview(separator)
                separator.anchor(cell.topAnchor, nil, cell.bottomAnchor, nil, 0, nil, 0, nil, 5, Frames.shared.height * 0.15)
                separator.centerXAnchor.constraint(equalTo: cell.centerXAnchor, constant: 0).isActive = true
                return cell
            } else{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hourCell", for: indexPath) as! HourCell
                cell.hourLabel.text = allHours[indexPath.row]
                if hoursTemps.count > 0{
                    cell.iconImageView.image = UIImage(named: hoursIcons[indexPath.row])
                    cell.weatherLabel.text = convertToFarenheitIfNeeded(degree: hoursTemps[indexPath.row] ) + SettingsModel.temp
                } else{
                    cell.weatherLabel.text = "--ºC"
                    cell.iconImageView.image = UIImage(named: "116")
                }
                return cell
            }}else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! DayCell
            cell.underView.backgroundColor = futureDaysColors[indexPath.row]
            cell.iconImageView.image = UIImage(named:  allDays[indexPath.row].daycode) ?? UIImage(named: "default")
            cell.tempLabel.text = convertToFarenheitIfNeeded(degree: allDays[indexPath.row].daytemp ) + SettingsModel.temp
            cell.minTempLabel.text =  convertToFarenheitIfNeeded(degree: (allDays[indexPath.row].nighttemp  ?? allDays[indexPath.row].eveningtemp)) + SettingsModel.temp
            cell.dayLabel.text = allDates[indexPath.row]
            return cell
        }
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == hoursCollectionView {
            return CGSize(width: Frames.shared.height * 0.1, height: Frames.shared.height * 0.15)
        } else {
            return CGSize(width: Frames.shared.height * 0.15, height: Frames.shared.height * 0.2 + 30)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == hoursCollectionView {
            return 5
        } else {
            return 15
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == hoursCollectionView {
            return UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        } else {
            return UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        }
    }
    
    
}
