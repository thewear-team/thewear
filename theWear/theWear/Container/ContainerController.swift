//
//  ContainerController.swift
//  theWear
//
//  Created by Maxim Reshetov on 24/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    var detailsController: UIViewController!
    var mainController: MainController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMainController()
        configureDetailsController()
    }
    
    func configureMainController() {
        mainController = MainController()
        view.addSubview(mainController.view)
        addChild(mainController)
        mainController.didMove(toParent: self)
    }
    
    @objc func handleGesture(_ recognizer: UIPanGestureRecognizer) {
        let neededHeight = (4.8 / 6) * detailsController.view.frame.height
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: detailsController.view)
            let newY = detailsController.view.frame.origin.y + translation.y
            
            let newYForNavBar = mainController.underView.frame.origin.y + (translation.y / 4)
            
            if newY <= neededHeight {
                if detailsController.view.frame.origin.y < neededHeight - 150 {
                     mainController.underView.frame = CGRect(x: mainController.underView.frame.origin.x, y: newYForNavBar, width: mainController.underView.frame.width, height: mainController.underView.frame.height)
                }
                detailsController.view.frame = CGRect(x: detailsController.view.frame.origin.x, y: newY, width: detailsController.view.frame.width, height: detailsController.view.frame.height)
                recognizer.setTranslation(.zero, in: detailsController.view)
            }
        } else if recognizer.state == .ended {
            if detailsController.view.frame.origin.y > detailsController.view.frame.height / 2 && detailsController.view.frame.origin.y < neededHeight - 75  {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: 0, y: neededHeight - 150, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
                    self.mainController.underView.frame = CGRect(x: self.mainController.underView.frame.origin.x, y: 44, width: self.mainController.underView.frame.width, height: self.mainController.underView.frame.height)
                }, completion: nil)
            } else if detailsController.view.frame.origin.y <= 44 {
                // handle
            } else if detailsController.view.frame.origin.y <= detailsController.view.frame.height / 2 {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: self.detailsController.view.frame.origin.x, y: 44, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
                    self.mainController.underView.frame = CGRect(x: self.mainController.underView.frame.origin.x, y: -self.mainController.underView.frame.height, width: self.mainController.underView.frame.width, height: self.mainController.underView.frame.height)
                }, completion: nil)
            } else if detailsController.view.frame.origin.y >= neededHeight - 75 {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: 0, y: neededHeight, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
                    self.mainController.underView.frame = CGRect(x: self.mainController.underView.frame.origin.x, y: 44, width: self.mainController.underView.frame.width, height: self.mainController.underView.frame.height)
                }, completion: nil)
            }
        }
    }
    
    func configureDetailsController() {
        detailsController = DetailsController()
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handleGesture(_:)))
        detailsController.view.addGestureRecognizer(panGesture)
        
        let neededHeight = (4.8 / 6) * detailsController.view.frame.height
        detailsController.view.frame = CGRect(x: 0, y: neededHeight, width: detailsController.view.frame.width, height: detailsController.view.frame.height)
        view.insertSubview(detailsController.view, at: 1)
        addChild(detailsController)
        detailsController.didMove(toParent: self)
    }
    
    func showDetailsController() {
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
