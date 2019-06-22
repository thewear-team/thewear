//
//  DetailsView.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 07/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class DetailsView: UIView {
    
    var detailsViewX: CGFloat = -fullHeight * 0.1
    var detailsViewIsOpened = false
    var cornerRadiusOfDetailsView: CGFloat = 0.0
    
    // For DetailsView
    let temperatureImageView = UIImageView()
    let nowTemperature = UITextView()
    let nowFeelsLike = UITextView()
    let nowCondition = UITextView()
    
    let hoursCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    let detailsTableView: UITableView = {
        let tableView = UITableView()
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .none
        tableView.isUserInteractionEnabled = false
        return tableView
    }()
    
    let daysCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    func configureDetailsView() {
        [temperatureImageView, nowTemperature, nowFeelsLike, nowCondition, hoursCollectionView, detailsTableView, daysCollectionView].forEach {self.addSubview($0)}
        
        temperatureImageView.frame = CGRect(x: fullHeight * 0.1 + buttonSize, y: fullHeight * 0.05, width: fullHeight * 0.1, height: fullHeight * 0.1)
        nowTemperature.frame = CGRect(x: fullHeight * 0.2 + buttonSize, y: fullHeight * 0.05, width: fullHeight * 0.2, height: fullHeight * 0.05)
        nowFeelsLike.frame = CGRect(x: fullHeight * 0.2 + buttonSize, y: fullHeight * 0.1, width: fullHeight * 0.2, height: fullHeight * 0.025)
        nowCondition.frame = CGRect(x: fullHeight * 0.2 + buttonSize, y: fullHeight * 0.125, width: fullHeight * 0.2, height: fullHeight * 0.025)
        
        temperatureImageView.image = UIImage(named: "sun")
        
        nowTemperature.text = "--°C"
        nowTemperature.textContainerInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        nowTemperature.font = UIFont.systemFont(ofSize: fontForNowTemperature, weight: .medium)
        nowTemperature.isScrollEnabled = false
        nowTemperature.isUserInteractionEnabled = false
        
        nowFeelsLike.text = "Feels like --°C"
        nowFeelsLike.textContainerInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        nowFeelsLike.font = UIFont.systemFont(ofSize: fontForAdditional, weight: .regular)
        nowFeelsLike.textColor = .gray
        nowFeelsLike.isScrollEnabled = false
        nowFeelsLike.isUserInteractionEnabled = false
        
        nowCondition.text = "=="
        
        nowCondition.textContainerInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        nowCondition.font = UIFont.systemFont(ofSize: fontForAdditional, weight: .regular)
        nowCondition.textColor = .gray
        nowCondition.textContainer.maximumNumberOfLines = 2
        nowCondition.isScrollEnabled = false
        nowCondition.isUserInteractionEnabled = false
        
        hoursCollectionView.delegate = self
        hoursCollectionView.dataSource = self
        hoursCollectionView.register(HourCell.self, forCellWithReuseIdentifier: "hourCell")
        hoursCollectionView.frame = CGRect(x: 0, y: 0.25 * fullHeight, width: width, height: 0.15 * fullHeight)
        
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        detailsTableView.register(DetailCell.self, forCellReuseIdentifier: "detailCell")
        detailsTableView.frame = CGRect(x: buttonSize, y: 0.45 * fullHeight, width: width - buttonSize * 2, height: 0.25 * fullHeight)
        
        daysCollectionView.delegate = self
        daysCollectionView.dataSource = self
        daysCollectionView.register(DayCell.self, forCellWithReuseIdentifier: "dayCell")
        daysCollectionView.frame = CGRect(x: 0, y: 0.75 * fullHeight, width: width, height: 0.2 * fullHeight)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: detailsViewX, y: fullHeight * 0.8, width: width, height: fullHeight)
        cornerRadiusOfDetailsView = -(self.frame.origin.y / self.detailsViewX) * ((fullHeight * 0.1) / 8)
        self.layer.cornerRadius = cornerRadiusOfDetailsView
        
        self.backgroundColor = .white
        self.layer.maskedCorners = [.layerMaxXMinYCorner]
        
        configureDetailsView()
        
        let detailsPanRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handleDetailsViewPan(_:)))
        let detailsTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleDetailsViewTap(_:)))
        [detailsPanRecognizer, detailsTapRecognizer].forEach {self.addGestureRecognizer($0)}
    }
    
    @objc func handleDetailsViewTap(_ recognizer: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            if !self.detailsViewIsOpened {
                self.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
                self.layer.cornerRadius = 0
                
                self.temperatureImageView.frame.origin.y = 0.1 * fullHeight
                self.nowTemperature.frame.origin.y = 0.1 * fullHeight
                self.nowFeelsLike.frame.origin.y = 0.15 * fullHeight
                self.nowCondition.frame.origin.y = 0.175 * fullHeight
                
                self.temperatureImageView.frame.origin.x = buttonSize
                self.nowTemperature.frame.origin.x = buttonSize + 0.1 * fullHeight
                self.nowFeelsLike.frame.origin.x = buttonSize + 0.1 * fullHeight
                self.nowCondition.frame.origin.x = buttonSize + 0.1 * fullHeight
                
                self.detailsViewIsOpened = true
            }
        }, completion: nil)
        
        self.detailsTableView.reloadData()
        self.daysCollectionView.reloadData()
        self.hoursCollectionView.reloadData()
    
    }
    
    @objc func handleDetailsViewPan(_ recognizer: UIPanGestureRecognizer) {
        
        // Additional calculations
        let detailsWidth = self.frame.width
        let detailsHeight = self.frame.height
        
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self)
            let detailsViewY = self.frame.origin.y + translation.y
            
            if detailsViewY >= 0 && detailsViewY <= fullHeight * 0.8 {
                self.frame = CGRect(x: (detailsViewY / detailsViewX) * ((fullHeight * 0.1) / 8), y: detailsViewY, width: detailsWidth, height: detailsHeight)
                self.layer.cornerRadius = -(detailsViewY / detailsViewX) * ((fullHeight * 0.1) / 8)
                
                temperatureImageView.frame.origin.y = fullHeight * (0.1 + (detailsViewY / detailsViewX) * 0.00625)
                nowTemperature.frame.origin.y = fullHeight * (0.1 + (detailsViewY / detailsViewX) * 0.00625)
                nowFeelsLike.frame.origin.y = fullHeight * (0.15 + (detailsViewY / detailsViewX) * 0.00625)
                nowCondition.frame.origin.y = fullHeight * (0.175 + (detailsViewY / detailsViewX) * 0.00625)
                
                temperatureImageView.frame.origin.x = buttonSize + fullHeight * (-detailsViewY / detailsViewX) * 0.0125
                nowTemperature.frame.origin.x = buttonSize + fullHeight * (0.1 + (-detailsViewY / detailsViewX) * 0.0125)
                nowFeelsLike.frame.origin.x = buttonSize + fullHeight * (0.1 + (-detailsViewY / detailsViewX) * 0.0125)
                nowCondition.frame.origin.x = buttonSize + fullHeight * (0.1 + (-detailsViewY / detailsViewX) * 0.0125)
            }
            recognizer.setTranslation(.zero, in: self)
        } else if recognizer.state == .ended {
            
            // Additional calculations
            let detailsViewY = self.frame.origin.y
            let percent: CGFloat = detailsViewIsOpened ? 0.1 : 0.7
            
            if detailsViewY <= fullHeight * percent {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
        
                    self.temperatureImageView.frame.origin.y = 0.1 * fullHeight
                    self.nowTemperature.frame.origin.y = 0.1 * fullHeight
                    self.nowFeelsLike.frame.origin.y = 0.15 * fullHeight
                    self.nowCondition.frame.origin.y = 0.175 * fullHeight
                    
                    self.temperatureImageView.frame.origin.x = buttonSize
                    self.nowTemperature.frame.origin.x = buttonSize + 0.1 * fullHeight
                    self.nowFeelsLike.frame.origin.x = buttonSize + 0.1 * fullHeight
                    self.nowCondition.frame.origin.x = buttonSize + 0.1 * fullHeight
                    
                    
                    self.detailsViewIsOpened = true
                }, completion: nil)
                UIViewPropertyAnimator(duration: 0.5, curve: .easeOut) {
                    self.layer.cornerRadius = 0
                }.startAnimation()
            } else {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.frame = CGRect(x: self.detailsViewX, y: fullHeight * 0.8, width: width, height: fullHeight)
                    
                    self.temperatureImageView.frame.origin.y = 0.05 * fullHeight
                    self.nowTemperature.frame.origin.y = 0.05 * fullHeight
                    self.nowFeelsLike.frame.origin.y = 0.1 * fullHeight
                    self.nowCondition.frame.origin.y = 0.125 * fullHeight
                    
                    self.temperatureImageView.frame.origin.x = buttonSize + 0.1 * fullHeight
                    self.nowTemperature.frame.origin.x = buttonSize + 0.2 * fullHeight
                    self.nowFeelsLike.frame.origin.x = buttonSize + 0.2 * fullHeight
                    self.nowCondition.frame.origin.x = buttonSize + 0.2 * fullHeight
                    
                    self.detailsViewIsOpened = false
                }, completion: nil)
                UIViewPropertyAnimator(duration: 0.5, curve: .easeOut) {
                    self.layer.cornerRadius = self.cornerRadiusOfDetailsView
                    }.startAnimation()
            }
        }
        self.detailsTableView.reloadData()
        self.daysCollectionView.reloadData()
        self.hoursCollectionView.reloadData()
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
