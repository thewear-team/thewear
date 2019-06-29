//
//  SearchCitiesViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/06/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SearchCitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate{
    
    var currentCity = ""
    var delegate: ContainerViewController!
    var mainDelegate : ViewController!
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
        self.searchTextField.delegate = self
       self.mainDelegate = ViewController()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if allCities.count > 0 {
            return allCities.count
        }else {return 0}
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
        if allCities.count > 0 {
            cell.cityLabel.text = allCities[indexPath.row]
        }else{
        cell.cityLabel.text = currentCity
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var text = allCities[indexPath.row]
        text = text.replacingOccurrences(of: " ", with: "%20")
        selectedCity = text
         selectedDay = 0
        currentCity = text
        if selectedCity != ""{
            print(selectedCity)
            loadData(currentCity: selectedCity, completion: {
                [weak self] data in
                if Reachability.isInternetAvailable(){
                    print(data.current_condition[0].temp_C)
                    processData(data: data)
//
                    DispatchQueue.main.async {
                        self?.delegate.viewController.fillUIelementsWithData()
                        self?.handleBack()
                        
                        self?.delegate.viewController.cityButton.setTitle(allCities[indexPath.row], for: .normal)
                    }
                }else{
                    self!.mainDelegate.createInternetAlert()
                }
            })}
        UIView.animate(withDuration: 0.2) {
            self.searchTextField.text = allCities[indexPath.row]
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()  //if desired
        handleSearchOfCity(city : textField.text)
        return true
    }
    
    func handleSearchOfCity(city : String?) {
        if Reachability.isInternetAvailable(){
            if city != nil {
                autocomplete(cityTyped: city!, completion: {
                    [weak self] results in
                    if results != nil{
                        allCities = []
                        for result in results!{
                            allCities.append(getProperAreaName(item: result))
                        }
                    }else{
                        self?.mainDelegate.createCityInputAlert()
                    }
                    DispatchQueue.main.async{
                       self?.searchCitiesTableView.reloadData()
                    }
                })
            }
        }else{
            self.mainDelegate.createInternetAlert()
        }
    }
}
