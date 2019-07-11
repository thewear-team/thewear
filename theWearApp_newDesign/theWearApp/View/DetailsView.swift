//
//  DetailsView.swift
//  theWearApp
//
//  Created by Max Reshetov on 09/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class DetailsView: UIView {
    
    // MARK: Properties
    
    let partInfoView = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    let detailsMask = UIView(frame: CGRect(x: 0, y: height, width: width, height: height))
    
    let hoursCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .clear
        return cv
    }()
    
    let daysCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .clear
        return cv
    }()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureDetailsView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configureDetailsView() {
        self.frame = CGRect(x: 0, y: height, width: width, height: height)
        self.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleDetailsPan(_:))))
        self.backgroundColor = .white
        detailsMask.backgroundColor = .white
        self.mask = detailsMask
        addSubview(partInfoView)
        partInfoView.frame = CGRect(x: 30, y: -bottom - 30 - 0.11 * height, width: width - 60, height: 0.11 * height)
        [partInfoView.temperature, partInfoView.feelsLikeTemperature, partInfoView.condition].forEach {$0.textColor = .black}
        
        addSubview(hoursCollectionView)
        hoursCollectionView.delegate = self
        hoursCollectionView.dataSource = self
        hoursCollectionView.register(HourCell.self, forCellWithReuseIdentifier: "hourCell")
        hoursCollectionView.frame = CGRect(x: 0, y: top + 60 + 0.11 * height, width: width, height: 0.14 * height)
        hoursCollectionView.alpha = 0
        
        addSubview(daysCollectionView)
        daysCollectionView.delegate = self
        daysCollectionView.dataSource = self
        daysCollectionView.register(DayCell.self, forCellWithReuseIdentifier: "dayCell")
        daysCollectionView.frame = CGRect(x: 0, y: 0.72 * height - bottom - 30, width: width, height: 0.28 * height)
        daysCollectionView.alpha = 0
    }
    
    func show() {
        UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.frame = CGRect(x: 0, y: 0, width: width, height: height)
            self.detailsMask.frame = CGRect(x: 0, y: 0, width: width, height: height)
            self.partInfoView.frame = CGRect(x: 30, y: 0.89 * height - bottom - 30, width: width - 60, height: 0.11 * height)
        }) { _ in
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.partInfoView.frame = CGRect(x: 30, y: top + 30, width: width - 60, height: 0.11 * height)
            }, completion: { _ in
                UIView.animate(withDuration: 0.2, animations: {
                    self.hoursCollectionView.alpha = 1
                    self.daysCollectionView.alpha = 1
                })
            })
        }
    }
    
    @objc func handleDetailsPan(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self)
            let newY = self.frame.origin.y + translation.y
            
            if newY >= 0 {
               self.frame.origin.y = newY
            }
            
            recognizer.setTranslation(.zero, in: self)
        } else if recognizer.state == .ended {
            
        }
    }
}
