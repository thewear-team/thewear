//
//  SearchCitiesViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/06/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SearchCitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentCity = ""
    var delegate: ContainerViewController!
    
    let searchTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        textField.backgroundColor = .white
        textField.setLeftPaddingPoints(buttonSize)
        textField.setRightPaddingPoints(-buttonSize * 2.5)
        return textField
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "back"), for: .normal)
        button.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        return button
    }()
    
    let searchCitiesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    @objc func handleBack() {
        searchTextField.resignFirstResponder()
        delegate.animateSearchCitiesViewController("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        [searchTextField, searchCitiesTableView, backButton].forEach {view.addSubview($0)}
        
        searchTextField.frame = CGRect(x: 0, y: top, width: width, height: height * 0.1)
        searchTextField.text = currentCity
        searchCitiesTableView.frame = CGRect(x: 0, y: top + height * 0.1, width: width, height: height + bottom)
        searchCitiesTableView.delegate = self
        searchCitiesTableView.dataSource = self
        searchCitiesTableView.register(CityCell.self, forCellReuseIdentifier: "cityCell")
        searchCitiesTableView.estimatedRowHeight = height * 0.1
        searchCitiesTableView.rowHeight = UITableView.automaticDimension
        backButton.frame = CGRect(x: width - buttonSize * 2, y: top + (height * 0.1 - buttonSize) / 2, width: buttonSize, height: buttonSize)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
        cell.cityLabel.text = currentCity
        cell.selectionStyle = .none
        return cell
    }
}
