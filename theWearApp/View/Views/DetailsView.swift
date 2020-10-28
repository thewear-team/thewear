//
//  DetailsView.swift
//  theWearApp
//
//  Created by Max Reshetov on 09/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class DetailsView: UIView {
    
    let partInfoView = PartInfoView(frame: .zero, iconName: iconNames[page], temperature: temperature[page], feelsLike: feelsLike[page], condition: condition[page])
    
    let detailsMask = UIView(frame: CGRect(x: 0, y: Frames.shared.height, width: Frames.shared.width, height: Frames.shared.height))
    
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
    
    let windIv = UIImageView(image: UIImage(named: "wind"))
    let windLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumSmallFont
        return label
    }()
    
    let pressureIv = UIImageView(image: UIImage(named: "pressure"))
    let pressureLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumSmallFont
        return label
    }()
    
    let humidityIv = UIImageView(image: UIImage(named: "humidity"))
    let humidityLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumSmallFont
        return label
    }()
    
    let uvIv = UIImageView(image: UIImage(named: "uv"))
    let uvLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumSmallFont
        label.textColor = UIColor.customBlack
        return label
    }()
    
    func configure() {
        frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleDetailsPan(_:))))
        [self, detailsMask].forEach {$0.backgroundColor = .white}
        mask = detailsMask
        
        [partInfoView, hoursCollectionView, daysCollectionView].forEach {addSubview($0)}
        let y = Frames.shared.height * 0.9 - Frames.shared.bottom - 30
        partInfoView.frame = CGRect(x: 30, y: y, width: Frames.shared.width - 60, height: Frames.shared.height * 0.1)
        [partInfoView.temperature, partInfoView.feelsLikeTemperature, partInfoView.condition].forEach {$0.textColor = .black}
        
        var windY = Frames.shared.top + 60 + Frames.shared.height * 0.25 + Frames.shared.paddingBetweenWind
        var expansion: CGFloat = 0
        if selectedDay == 0 || selectedDay == 1 {
            hoursCollectionView.delegate = self
            hoursCollectionView.dataSource = self
            hoursCollectionView.register(HourCell.self, forCellWithReuseIdentifier: "hourCell")
            hoursCollectionView.register(SeparatorHour.self, forCellWithReuseIdentifier: "separatorHourCell")
            let hoursY = Frames.shared.top + 60 + Frames.shared.height * 0.1
            hoursCollectionView.frame = CGRect(x: 0, y: hoursY, width: Frames.shared.width, height: Frames.shared.height * 0.15)
            hoursCollectionView.alpha = 0
            var scrollIndex = hourNow < sunrise ? hourNow   : hourNow + 1
            if hourNow > sunset{
                scrollIndex = scrollIndex + 1
            }
            self.hoursCollectionView.scrollToItem(at: IndexPath(item: (selectedDay == 0 ? scrollIndex : 26) , section: 0), at: .left, animated: false)
        } else {
            expansion = Frames.shared.expansion
            windY -= 15 + Frames.shared.height * 0.075
        }
        
        daysCollectionView.delegate = self
        daysCollectionView.dataSource = self
        daysCollectionView.register(DayCell.self, forCellWithReuseIdentifier: "dayCell")
        let daysY = Frames.shared.height * 0.8 - Frames.shared.bottom - 60
        daysCollectionView.frame = CGRect(x: 0, y: daysY, width: Frames.shared.width, height: Frames.shared.height * 0.2 + 30)
        daysCollectionView.alpha = 0
        
        [windIv, windLabel, pressureIv, pressureLabel, humidityIv, humidityLabel, uvIv, uvLabel].forEach {$0.alpha = 0}
        [windIv, pressureIv, humidityIv, uvIv].forEach {
            $0.layer.cornerRadius = Frames.shared.height * 0.025
            $0.backgroundColor = colors[page]
        }
        [windIv, windLabel, pressureIv, pressureLabel, humidityIv, humidityLabel, uvIv, uvLabel].forEach {addSubview($0)}
        
        var padding: CGFloat = 15
        if Frames.shared.height == 568 {
            padding = 10
        }
        
        windIv.frame = CGRect(x: 30, y: windY - expansion, width: Frames.shared.height * 0.05, height: Frames.shared.height * 0.05)
        pressureIv.anchor(windIv.bottomAnchor, leadingAnchor, nil, nil, padding + expansion, 30, nil, nil, Frames.shared.height * 0.05, Frames.shared.height * 0.05)
        humidityIv.anchor(pressureIv.bottomAnchor, leadingAnchor, nil, nil, padding + expansion, 30, nil, nil, Frames.shared.height * 0.05, Frames.shared.height * 0.05)
        uvIv.anchor(humidityIv.bottomAnchor, leadingAnchor, nil, nil, padding + expansion, 30, nil, nil, Frames.shared.height * 0.05, Frames.shared.height * 0.05)
        windLabel.anchor(windIv.topAnchor, windIv.trailingAnchor, windIv.bottomAnchor, trailingAnchor, 0, 30, 0, 30, nil, nil)
        pressureLabel.anchor(pressureIv.topAnchor, pressureIv.trailingAnchor, pressureIv.bottomAnchor, trailingAnchor, 0, 30, 0, 30, nil, nil)
        humidityLabel.anchor(humidityIv.topAnchor, humidityIv.trailingAnchor, humidityIv.bottomAnchor, trailingAnchor, 0, 30, 0, 30, nil, nil)
        uvLabel.anchor(uvIv.topAnchor, uvIv.trailingAnchor, uvIv.bottomAnchor, trailingAnchor, 0, 30, 0, 30, nil, nil)
        
        fillDetailsWithData()
        show()
    }
    
    func fillDetailsWithData(){
            self.windLabel.text = convertToMpsIfNeeded(wind: allDays[selectedDay].wind) +  " " + NSLocalizedString(SettingsModel.wind, comment: "")
            self.pressureLabel.text = convertHpaToHhmmgIfNeeded(pressure: allDays[selectedDay].pressure) + " " + NSLocalizedString(SettingsModel.pressure, comment: "")
            self.humidityLabel.text = allDays[selectedDay].humidity + " %"
            self.uvLabel.text = allDays[selectedDay].uv
    }
    
    func show() {
        daysCollectionView.scrollToItem(at: IndexPath(row: (selectedDay == 0) ? 1 : 0, section: 0), at: .left, animated: true)
        UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.detailsMask.frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        })
        UIView.animate(withDuration: 0.85, delay: 0.05, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.partInfoView.frame = CGRect(x: 30, y: Frames.shared.top + 30, width: Frames.shared.width - 60, height: Frames.shared.height * 0.1)
        }) { _ in
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
                self.hoursCollectionView.alpha = 1
            })
            UIView.animate(withDuration: 0.3, delay: 0.15, options: .curveEaseOut, animations: {
                self.windIv.alpha = 1
                self.windLabel.alpha = 1
                self.pressureIv.alpha = 1
                self.pressureLabel.alpha = 1
                self.humidityIv.alpha = 1
                self.humidityLabel.alpha = 1
                self.uvIv.alpha = 1
                self.uvLabel.alpha = 1
            })
            UIView.animate(withDuration: 0.3, delay: 0.3, options: .curveEaseOut, animations: {
                self.daysCollectionView.alpha = 1
            })
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func closeDetailedView() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.frame.origin.y = Frames.shared.height
            self.partInfoView.frame.origin.y = -Frames.shared.bottom - 30 - Frames.shared.height * 0.1
        }, completion: {_ in
            self.removeFromSuperview()
        })
    }
    
    @objc func handleDetailsPan(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self)
            let newY = self.frame.origin.y + translation.y
            
            if newY >= 0 {
               self.frame.origin.y = newY
            }

            let check = Frames.shared.height * 0.9 - Frames.shared.bottom - 60 - Frames.shared.top
            if newY >= check {
                partInfoView.frame.origin.y -= translation.y
            } else {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.partInfoView.frame.origin.y = Frames.shared.top + 30
                })
            }
            recognizer.setTranslation(.zero, in: self)
        } else if recognizer.state == .ended {
            if self.frame.origin.y >= Frames.shared.height / 2 {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.frame.origin.y = Frames.shared.height
                    self.partInfoView.frame.origin.y = -Frames.shared.bottom - 30 - Frames.shared.height * 0.1
                }, completion: {_ in
                    self.removeFromSuperview()
                })
            } else {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.frame.origin.y = 0
                })
            }
        }
    }
}
