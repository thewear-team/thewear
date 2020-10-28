//
//  SearchView.swift
//  theWearApp
//
//  Created by Max Reshetov on 19/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit

class SearchView: UIView {
    
    var loadingView: LoadingView?
    
    var searchTimer : Timer?
    var searchingNow = false
    var searchResult = [String]()
    
    var delegate: ActivateCityButtonDelegate!
    var cityDelegate: CityDelegate!
    
    let cityTextField: UITextField = {
        let textField = UITextField()
        textField.font = Frames.shared.cityFont
        textField.textColor = UIColor.customBlack
        textField.textAlignment = .left
        return textField
    }()
    
    
    
    let searchViewMask = UIView(frame: CGRect(x: -Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height))
    
    lazy var citiesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.showsVerticalScrollIndicator = false
        tableView.dataSource = self
        tableView.estimatedRowHeight = 0.05 * Frames.shared.height
        tableView.register(CityCell.self, forCellReuseIdentifier: "cityCell")
        tableView.register(UseCurrentLocationCell.self, forCellReuseIdentifier: "useCurrentLocationcell")
        return tableView
    }()
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.adjustsImageWhenHighlighted = false
        button.imageEdgeInsets = UIEdgeInsets(top: 0.01 * Frames.shared.height, left: 0.02 * Frames.shared.height, bottom: 0.035 * Frames.shared.height, right: 30)
        button.setImage(UIImage(named: "arrow"), for: .normal)
        button.isUserInteractionEnabled = false
        button.addTarget(self, action: #selector(handleCloseButton), for: .touchUpInside)
        return button
    }()
    
    func configure() {
        frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        [cityTextField, citiesTableView, closeButton].forEach {addSubview($0)}
        cityTextField.delegate = self
        cityTextField.addTarget(self, action: #selector(handleTextChange(_:)), for: .editingChanged)
        cityTextField.frame = CGRect(x: 30, y: Frames.shared.top + 32, width: Frames.shared.width - 60 - 0.05 * Frames.shared.height, height: 0.05 * Frames.shared.height)
        closeButton.frame = CGRect(x: Frames.shared.width - 30 - 0.05 * Frames.shared.height, y: Frames.shared.top + 30, width: 0.05 * Frames.shared.height + 30, height: 0.075 * Frames.shared.height)
        citiesTableView.anchor(cityTextField.bottomAnchor, leadingAnchor, bottomAnchor, trailingAnchor, 30, 30, 0, 30, nil, nil)
        [self, searchViewMask].forEach {$0.backgroundColor = .white}
        mask = searchViewMask
        self.searchingNow = false
        showSearchView()
    }
    
    func showSearchView() {
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.searchViewMask.frame = CGRect(x: 0, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        }) { _ in
            self.closeButton.isUserInteractionEnabled = true
            self.citiesTableView.reloadData()
            self.delegate.activateCityAndSettingsButton()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleCloseButton() {
        cityTextField.resignFirstResponder()
        delegate.activateCityAndSettingsButton()
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.searchViewMask.frame = CGRect(x: -Frames.shared.width, y: 0, width: Frames.shared.width, height: Frames.shared.height)
        }, completion: { _ in
            self.removeFromSuperview()
        })
        searchingNow = false
    }
    
    func handleCurrentLocation() {
        print("current location mode selected")
        if ViewController.refreshLocation() {
            selectedDay = 0
            ViewController.getDataByLocation()
        }else{
            DispatchQueue.main.async {
                if alert == nil {
                    alert = Alert(frame: .zero, alert: NSLocalizedString("Sorry, impossible to get your location. Please, use city search instead.", comment: ""))
                    if let window = UIApplication.shared.keyWindow {
                        window.addSubview(alert!)
                    }
                }
            }
        }

    }
    
    @objc func handleTextChange(_ sender : Any){
        searchingNow = true
        
        print("text changed")
        searchResult = []
        self.citiesTableView.reloadData()
        
        self.searchTimer?.invalidate()
        
        let currentText = cityTextField.text ?? ""
        if  Array(currentText).count >= 3 {
            searchTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(handleSearchOfCity(_ : )), userInfo: nil, repeats: false)
        }else if currentText == ""{
            searchResult = []
        }
        
    }    
    
}
