//
//  ChangePersonView.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class ChangePersonView: UIView {
    
    let underView: UIView = {
        let view = UIView()
        view.tag = 4
        view.backgroundColor = .white
        return view
    }()
    
    let genderSegmentedControl: UISegmentedControl = {
        let items = [NSLocalizedString("Man", comment: ""), NSLocalizedString("Woman", comment: "")]
        let sc = UISegmentedControl(items: items)
        sc.backgroundColor = .white
        sc.selectedSegmentIndex = 1
        sc.layer.cornerRadius = 10
        let font = Frames.shared.regularFont
        sc.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
        sc.tintColor = colors[page]
        return sc
    }()
    
    let hairCutLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = (SettingsModel.gender == "woman") ? NSLocalizedString("Hairstyle", comment: "") :  NSLocalizedString("Hairstyle, beard and mustache", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let hairCutsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    let hairCutColorLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = NSLocalizedString("Hair color", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let hairCutColorCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    let skinColorLabel: UILabel = {
        let label = UILabel()
        label.font = Frames.shared.mediumFont
        label.text = NSLocalizedString("Skin color", comment: "")
        label.textColor = UIColor.customBlack
        label.textAlignment = .left
        return label
    }()
    
    let skinColorCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    let pageView = UIView()
    
    @objc func changeGender(_ sender: UISegmentedControl) {
        if genderSegmentedControl.selectedSegmentIndex == 0 {
            UserDefaultsService.SettingSaver.saveGender(gender: SettingsSaver.man)
            SettingsModel.gender = SettingsSaver.man
            SettingsModel.hairNumber  = 0
            SettingsModel.beardnumber = 0
            UserDefaultsService.SettingSaver.saveBeardNumber(color: 0)
            self.hairCutsCollectionView.reloadData()
            hairCutLabel.text = NSLocalizedString("Hairstyle, beard and mustache", comment: "")
            hairCutsCollectionView.selectItem(at: IndexPath(row: 0 + Man.hairstyles.count + 1, section: 0), animated: false, scrollPosition: .left)
        } else {
            UserDefaultsService.SettingSaver.saveGender(gender: SettingsSaver.woman)
            SettingsModel.gender = SettingsSaver.woman
            SettingsModel.hairNumber  = 0
            hairCutLabel.text = NSLocalizedString("Hairstyle", comment: "")
            self.hairCutsCollectionView.reloadData()
        }
       
        self.hairCutsCollectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: .left)
        SettingsModel.hairNumber = 0
        
        UserDefaultsService.SettingSaver.saveHairStyle(number: 0)
        restylePerson(completion: {
            NotificationCenter.default.post(name: .needUpdate, object: self)
        })
    }
    
    func configure() {
        if let window = UIApplication.shared.keyWindow {
            
            pageView.tag = 5
            
            hairCutsCollectionView.delegate = self
            hairCutsCollectionView.dataSource = self
            hairCutsCollectionView.register(HairCutCell.self, forCellWithReuseIdentifier: "hairCutCell")
            
            hairCutColorCollectionView.delegate = self
            hairCutColorCollectionView.dataSource = self
            hairCutColorCollectionView.register(HairCutColorCell.self, forCellWithReuseIdentifier: "hairCutColorCell")
            
            skinColorCollectionView.delegate = self
            skinColorCollectionView.dataSource = self
            skinColorCollectionView.register(HairCutColorCell.self, forCellWithReuseIdentifier: "hairCutColorCell")
            
            [pageView, underView].forEach {window.addSubview($0)}
            pageView.backgroundColor = lastShownColor ?? colors[page]
            pageView.alpha = 1
            pageView.frame = CGRect(x: Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
            underView.frame = CGRect(x: 2 * Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
            
            let closeButton = UIButton()
            closeButton.adjustsImageWhenHighlighted = false
            closeButton.imageEdgeInsets = UIEdgeInsets(top: Frames.shared.height * 0.01, left: 0, bottom: Frames.shared.height * 0.01, right: Frames.shared.height * 0.02)
            closeButton.setImage(UIImage(named: "arrowSet"), for: .normal)
            closeButton.addTarget(self, action: #selector(close), for: .touchUpInside)
            underView.addSubview(closeButton)
            closeButton.frame = CGRect(x: 30, y: Frames.shared.top + 30, width: 0.05 * Frames.shared.height, height: 0.05 * Frames.shared.height)
            
            [genderSegmentedControl, hairCutLabel, hairCutsCollectionView, hairCutColorLabel, hairCutColorCollectionView, skinColorLabel, skinColorCollectionView].forEach {underView.addSubview($0)}
            let genderY = Frames.shared.top + 60 + 0.05 * Frames.shared.height
            genderSegmentedControl.frame = CGRect(x: 30, y: genderY, width: Frames.shared.width - 60, height: Frames.shared.height * 0.05)
            
            //genderSegmentedControl.anchor(closeButton.bottomAnchor, underView.leadingAnchor, nil, underView.trailingAnchor, 30, 30, nil, 30, nil, Frames.shared.height * 0.05)
            hairCutLabel.anchor(genderSegmentedControl.bottomAnchor, underView.leadingAnchor, nil, underView.trailingAnchor, Frames.shared.paddingBetweenWind, 30, nil, 30, nil, Frames.shared.height * 0.05)
            hairCutsCollectionView.anchor(hairCutLabel.bottomAnchor, underView.leadingAnchor, nil, underView.trailingAnchor, 15, 0, nil, 0, nil, Frames.shared.height * 0.15)
            hairCutColorLabel.anchor(hairCutsCollectionView.bottomAnchor, underView.leadingAnchor, nil, underView.trailingAnchor, 30, 30, nil, 30, nil, Frames.shared.height * 0.05)
            hairCutColorCollectionView.anchor(hairCutColorLabel.bottomAnchor, underView.leadingAnchor, nil, underView.trailingAnchor, 0, 0, nil, 0, nil, Frames.shared.height * 0.1)
            skinColorLabel.anchor(hairCutColorCollectionView.bottomAnchor, underView.leadingAnchor, nil, underView.trailingAnchor, Frames.shared.paddingBetweenWind, 30, nil, 30, nil, Frames.shared.height * 0.05)
            skinColorCollectionView.anchor(skinColorLabel.bottomAnchor, underView.leadingAnchor, nil, underView.trailingAnchor, 0, 0, nil, 0, nil, Frames.shared.height * 0.1)
            
            genderSegmentedControl.addTarget(self, action: #selector(changeGender(_:)), for: .valueChanged)
            
            let doneButton = UIButton()
            doneButton.layer.cornerRadius = 10
            doneButton.backgroundColor = colors[page]
            doneButton.setTitle("Done", for: .normal)
            doneButton.addTarget(self, action: #selector(close(_:)), for: .touchUpInside)
            doneButton.addTarget(self, action: #selector(touchDown(_:)), for: .touchDown)
            underView.addSubview(doneButton)
            doneButton.anchor(nil, underView.leadingAnchor, underView.safeAreaLayoutGuide.bottomAnchor, underView.trailingAnchor, nil, 30, 30, 30, nil, Frames.shared.height * 0.075)
            
            hairCutsCollectionView.allowsMultipleSelection = true
            genderSegmentedControl.selectedSegmentIndex = (SettingsModel.gender == SettingsSaver.man) ? 0 : 1
            hairCutsCollectionView.selectItem(at: IndexPath(item: SettingsModel.hairNumber, section: 0), animated: false, scrollPosition: .left)
            hairCutColorCollectionView.selectItem(at: IndexPath(row: SettingsModel.hairColorNumber, section: 0), animated: false, scrollPosition: .left)
            skinColorCollectionView.selectItem(at: IndexPath(row: SettingsModel.skinColorNumber, section: 0), animated: false, scrollPosition: .left)
            if SettingsModel.gender == SettingsSaver.man{
                hairCutsCollectionView.selectItem(at: IndexPath(item: SettingsModel.beardnumber + 6, section: 0), animated: false, scrollPosition: .right)
            }
        }
    }
    
    @objc func touchDown(_ sender: UIButton) {
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        })
    }
    
    func show() {
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.pageView.frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
            self.underView.frame = CGRect(x: Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        }, completion: { _ in
            UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.pageView.frame = CGRect(x: -Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
                self.underView.frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
            })
        })
    }
    
    @objc func close(_ sender: UIButton) {
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            sender.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.pageView.frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
            self.underView.frame = CGRect(x: Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        }, completion: { _ in
            UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.pageView.frame = CGRect(x: Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
                self.underView.frame = CGRect(x: 2 * Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
            }, completion: { _ in
                self.window?.viewWithTag(4)?.removeFromSuperview()
                self.window?.viewWithTag(5)?.removeFromSuperview()
                self.removeFromSuperview()
            })
        })
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        show()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
