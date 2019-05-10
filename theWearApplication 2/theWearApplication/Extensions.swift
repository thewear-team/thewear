//
//  Extensions.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

extension UIColor {
    static let color_113 = UIColor(red: 36/255, green: 158/255, blue: 217/255, alpha: 1)
    static let dark113 = UIColor(red: 10/255, green: 80/255, blue: 116/255, alpha: 1)
    static let color_119 = UIColor(red: 145/255, green: 207/255, blue: 236/255, alpha: 1)
    static let color_122 = UIColor(red: 195/255, green: 205/255, blue: 222/255, alpha: 1)
}

extension UIView {
    func addCornerRadiusAnimation(to: CGFloat, duration: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.toValue = to
        animation.duration = duration
        layer.add(animation, forKey: "cornerRadius")
        layer.cornerRadius = to
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partCell", for: indexPath) as! PartCell
        cell.backgroundColor = UIColor.color_113
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: width, height: fullHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

extension DetailsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0.0625 * fullHeight
    }
    
}

extension DetailsView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == hoursCollectionView {
            return 24
        } else {
            return 7
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == hoursCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hourCell", for: indexPath) as! HourCell
            cell.hour.text = "10:00"
            cell.icon.image = UIImage(named: "sun")
            cell.temperature.text = "23°C"
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! DayCell
            cell.day.text = "Tuesday,\nJuly, 13"
            cell.icon.image = UIImage(named: "sun")
            cell.temperature.text = "23°C"
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == hoursCollectionView {
            return 0
        } else {
            return buttonSize
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: buttonSize, bottom: 0, right: buttonSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == hoursCollectionView {
            return CGSize(width: 0.2 * width, height: 0.15 * fullHeight)
        } else {
            return CGSize(width: 0.3 * width, height: 0.2 * fullHeight)
        }
    }
}




