//
//  SettingsViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/06/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let navigationBar = NavigationBar(frame: .zero)
    
    func configureMain() {
        view.addSubview(navigationBar)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureMain()
    }
}
