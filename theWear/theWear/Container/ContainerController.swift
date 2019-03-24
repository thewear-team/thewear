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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMainController()
        configureDetailsController()
    }
    
    func configureMainController() {
        let mainController = MainController()
        view.addSubview(mainController.view)
        addChild(mainController)
        mainController.didMove(toParent: self)
    }
    
    @objc func handleGesture(_ recognizer: UIPanGestureRecognizer) {
        let neededHeight = (4.8 / 6) * detailsController.view.frame.height
        let center = detailsController.view.center.y
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: detailsController.view)
    
            let newY = detailsController.view.center.y + translation.y
            detailsController.view.center = CGPoint(x: detailsController.view.center.x, y: newY)
            recognizer.setTranslation(CGPoint.zero, in: detailsController.view)
        } else if recognizer.state == .ended {
            if detailsController.view.center.y > detailsController.view.frame.height {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: 0, y: neededHeight, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
                }, completion: nil)
            } else if detailsController.view.center.y > center - 125 {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                    self.detailsController.view.frame = CGRect(x: 0, y: neededHeight - 125, width: self.detailsController.view.frame.width, height: self.detailsController.view.frame.height)
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
