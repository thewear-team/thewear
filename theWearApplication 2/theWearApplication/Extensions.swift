//
//  Extensions.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat, enableInsets: Bool) {
        var topInset = CGFloat(0)
        var bottomInset = CGFloat(0)
        
        if #available(iOS 11, *), enableInsets {
            let insets = self.safeAreaInsets
            topInset = insets.top
            bottomInset = insets.bottom
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop + topInset).isActive = true
        }
        if let left = left {
            leadingAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom + bottomInset).isActive = true
        }
        if let right = right {
            trailingAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
    }
    
}

extension UIColor {
    static let color_113 = UIColor(red: 36/255, green: 158/255, blue: 217/255, alpha: 1)
    static let dark113 = UIColor(red: 10/255, green: 80/255, blue: 116/255, alpha: 1)
    static let color_119 = UIColor(red: 145/255, green: 207/255, blue: 236/255, alpha: 1)
    static let color_122 = UIColor(red: 195/255, green: 205/255, blue: 222/255, alpha: 1)
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
            return 4
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
        if collectionView == daysCollectionView {
            return UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        } else {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == partsCollectionView {
            if indexPath.item == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MorningCell", for: indexPath) as! MorningCell
                cell.bgLabel.text = "Morning"
                let code = currentCondition.2
                let colorComponents = statuses[code]
                if colorComponents != nil {
                    let newColor = UIColor(red: CGFloat(colorComponents!.1)/255, green: CGFloat(colorComponents!.2)/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1)
                    cell.backgroundColor = newColor
                }
                return cell
            } else if indexPath.item == 1 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DayCell", for: indexPath) as! DayCell
                cell.bgLabel.text = "Day"
                let code = codesHours[9]
                let colorComponents = statuses[code]
                if colorComponents != nil {
                    let newColor = UIColor(red: CGFloat(colorComponents!.1)/255, green: CGFloat(colorComponents!.2)/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1)
                    cell.backgroundColor = newColor
                }
                //                return cell
                return cell
            } else if indexPath.item == 2 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EveningCell", for: indexPath) as! EveningCell
                cell.bgLabel.text = "Evening"
                let code = codesHours[23]//JUST TEST
                let colorComponents = statuses[code]
                if colorComponents != nil {
                    let newColor = UIColor(red: CGFloat(colorComponents!.1)/255, green: CGFloat(colorComponents!.2)/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1)
                    cell.backgroundColor = newColor
                }
                //                return cell
                return cell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NightCell", for: indexPath) as! NightCell
                cell.bgLabel.text = "Night"
                let code = codesHours[23]//JUST TEST
                let colorComponents = statuses[code]
                if colorComponents != nil {
                    let newColor = UIColor(red: CGFloat(colorComponents!.1)/255, green: CGFloat(colorComponents!.2)/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1)
                    cell.backgroundColor = newColor
                }
                //                return cell
                return cell
            }
        } else if collectionView == hoursCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hours", for: indexPath) as! HoursCell
            if (demoTemp.count > 0) && (demoHours.count > 0){
                cell.hourLabel.text = demoHours[indexPath.row]
                cell.tempLabel.text = demoTemp[indexPath.row]}
            let code = codesHours[indexPath.row] ?? ""
            cell.iconImageView.image = UIImage(named: code)
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "day", for: indexPath) as! DaysCell
            
            // implementing details
            if allDays.count != 0{
                cell.dayLabel.text = allDays[indexPath.row].date
                cell.iconImageView.image = UIImage(named: allDays[indexPath.row].daycode)
                cell.tempLabel.text =  allDays[indexPath.row].daytemp
                let code  = allDays[indexPath.row].daycode
                let colorComponents = statuses[code]
                if colorComponents != nil {
                    let dayColor = UIColor(red: CGFloat(colorComponents!.1)/255, green: CGFloat(colorComponents!.2)/255, blue: CGFloat(colorComponents!.3)/255, alpha: 1)
                    cell.underView.backgroundColor = dayColor
                    
                }
            }
            if demoDays.count > 0 {
                if allDays.count == 7{
                    //            cell.dayLabel.text = allDays[indexPath.row]
                }
            }
            return cell
        }
    }
}




