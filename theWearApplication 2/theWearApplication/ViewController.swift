//
//  ViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//
//погоду по часам не сохраняем для будущих дней
//MARK : Saving rules for UserDefaults
//hours today  --"temp; code;" x24 +
//forecast-- days, temps, codes (for tableview) "date, temp, code/ wind, pressure, humidity, date;" x7 +


import UIKit

class ViewController: UIViewController {
    
    let navigationBar = NavigationBar(frame: .zero)
    let cityTextField = CityTextField(frame: .zero)
    let settingsButton = SettingsButton(frame: .zero)
    let partsCollectionView = PartsCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    let detailsView = DetailsView(frame: .zero)
    let settingsView = SettingsView()
    
    func configureMain() {
        [partsCollectionView, navigationBar, cityTextField, settingsButton, detailsView].forEach {view.addSubview($0)}
        partsCollectionView.delegate = self
        partsCollectionView.dataSource = self
        partsCollectionView.register(PartCell.self, forCellWithReuseIdentifier: "partCell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureMain()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
