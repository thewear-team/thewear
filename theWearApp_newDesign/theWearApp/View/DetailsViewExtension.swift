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
            return demoHours.count
        } else {
            return 7
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == hoursCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hourCell", for: indexPath) as! HourCell
            cell.hourLabel.text = demoHours[indexPath.row]
            cell.iconImageView.image = UIImage(named: "116")
            cell.weatherLabel.text = "39°C"
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! DayCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == hoursCollectionView {
            return CGSize(width: 0.11 * height, height: 0.14 * height)
        } else {
            return CGSize(width: 0.2 * height, height: 0.28 * height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == hoursCollectionView {
            return 0
        } else {
            return 30
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == hoursCollectionView {
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        } else {
            return UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        }
    }
}
