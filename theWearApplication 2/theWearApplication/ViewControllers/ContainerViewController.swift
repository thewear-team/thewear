//
//  ContainerViewController.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/06/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    var viewController: ViewController!
    var settingViewController: SettingsViewController!
    var searchCitiesViewController: SearchCitiesViewController!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func configureMainViewController() {
        viewController = ViewController()
        viewController.delegate = self
        view.addSubview(viewController.view)
        addChild(viewController)
        viewController.didMove(toParent: self)
    }
    
    func animateSettingsViewController() {
        settingViewController = SettingsViewController()
        settingViewController.view.frame = CGRect(x: width, y: 0, width: width, height: fullHeight)
        view.addSubview(settingViewController.view)
        addChild(settingViewController)
        settingViewController.didMove(toParent: self)
        settingViewController.view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePanOfSettingsViewController(_:))))
        
        UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.viewController.view.frame = CGRect(x: -width, y: 0, width: width, height: fullHeight)
            self.settingViewController.view.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
        })
    }
    
    @objc func handlePanOfSettingsViewController(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {} else if recognizer.state == .changed {
            let translation = recognizer.translation(in: settingViewController.view)
            let newX = settingViewController.view.frame.origin.x + translation.x
            
            settingViewController.view.frame = CGRect(x: newX, y: 0, width: width, height: fullHeight)
            viewController.view.frame = CGRect(x: -width + newX, y: 0, width: width, height: fullHeight)
            
            recognizer.setTranslation(.zero, in: settingViewController.view)
        } else {
            if settingViewController.view.frame.origin.x >= width * 0.3 {
                UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.settingViewController.view.frame = CGRect(x: width, y: 0, width: width, height: fullHeight)
                    self.viewController.view.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
                }) { _ in
                    self.view.subviews[1].removeFromSuperview()
                }
            } else {
                UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.settingViewController.view.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
                    self.viewController.view.frame = CGRect(x: -width, y: 0, width: width, height: fullHeight)
                })
            }
        }
    }
    
    func animateSearchCitiesViewController() {
        searchCitiesViewController = SearchCitiesViewController()
        searchCitiesViewController.view.frame = CGRect(x: -width, y: 0, width: width, height: fullHeight)
        view.addSubview(searchCitiesViewController.view)
        addChild(searchCitiesViewController)
        searchCitiesViewController.didMove(toParent: self)
        searchCitiesViewController.view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePanOfSearchCitiesViewController(_:))))
        
        UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.viewController.view.frame = CGRect(x: width, y: 0, width: width, height: fullHeight)
            self.searchCitiesViewController.view.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
        })
    }
    
    @objc func handlePanOfSearchCitiesViewController(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {} else if recognizer.state == .changed {
            let translation = recognizer.translation(in: searchCitiesViewController.view)
            let newX = searchCitiesViewController.view.frame.origin.x + translation.x
            
            searchCitiesViewController.view.frame = CGRect(x: newX, y: 0, width: width, height: fullHeight)
            viewController.view.frame = CGRect(x: width + newX, y: 0, width: width, height: fullHeight)
            
            recognizer.setTranslation(.zero, in: searchCitiesViewController.view)
        } else {
            if searchCitiesViewController.view.frame.origin.x <= -width * 0.3 {
                UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.searchCitiesViewController.view.frame = CGRect(x: -width, y: 0, width: width, height: fullHeight)
                    self.viewController.view.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
                }) { _ in
                    self.view.subviews[1].removeFromSuperview()
                }
            } else {
                UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.searchCitiesViewController.view.frame = CGRect(x: 0, y: 0, width: width, height: fullHeight)
                    self.viewController.view.frame = CGRect(x: width, y: 0, width: width, height: fullHeight)
                })
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMainViewController()
    }
}
