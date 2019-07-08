//
//  ViewController.swift
//  theWearApp
//
//  Created by Max Reshetov on 30/06/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ChangeCityDelegate {
    
    // MARK: Properties
    
    let naviagtionBar = NaviagationBar(frame: .zero)
    
    let currentLayer = CAShapeLayer()
    let currentLayerMask = CAShapeLayer()
    
    let nextLayer = CAShapeLayer()
    let nextLayerMask = CAShapeLayer()
    
    let currentPartInfo = PartInfoView(frame: .zero)
    let nextPartInfo = PartInfoView(frame: .zero)
    
    let panView = UIView()
    var helpBezier = UIBezierPath()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {return .lightContent}
    
    // MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCurrent()
        configureNext()
        configurePanView()
        configureNavBar()
    }
    
    // MARK: Handlers
    
    func configureCurrent() {
        helpBezier = createCurrent()
        [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        currentLayer.mask = currentLayerMask
        currentLayer.fillColor = colors[page].cgColor
        view.layer.addSublayer(currentLayer)
//        currentLayer.addSublayer(currentPartInfo.layer)
    }
    
    func configureNext() {
        helpBezier = createNext()
        [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        nextLayer.mask = nextLayerMask
        nextLayer.fillColor = colors[page + 1].cgColor
        view.layer.addSublayer(nextLayer)
//        nextLayer.addSublayer(nextPartInfo.layer)
    }
    
    func configurePanView() {
        panView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.addSubview(panView)
        panView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePanView(_:))))
    }
    
    @objc func handlePanView(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: panView)
            let newX = panView.frame.origin.x + translation.x
            if newX <= 0 {
                if page < colors.count - 1 {
                    panView.frame.origin.x = newX
                    helpBezier = createNextWhenPan(newX + width, translation.x)
                    [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
                }
            } else {
                if page != 0 {
                    panView.frame.origin.x = newX
                    helpBezier = createCurrentWhenPan(newX, translation.x)
                    [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
                }
            }
            view.layoutIfNeeded()
            recognizer.setTranslation(.zero, in: panView)
        } else if recognizer.state == .ended {
            if panView.frame.origin.x < -width / 2 {
                page += 1
                handleOpenNextLayer()
            } else if panView.frame.origin.x >= -width / 2 && panView.frame.origin.x <= 0 {
                handleCloseNextLayer()
            } else if panView.frame.origin.x > 0 && panView.frame.origin.x <= width / 2 {
                handleOpenCurrentLayer()
            } else {
                page -= 1
                handleCloseCurrentLayer()
            }
            panView.frame.origin.x = 0
        }
    }
    
    func handleOpenNextLayer() {
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            CATransaction.setValue(true, forKey: kCATransactionDisableActions)
            self.view.backgroundColor = colors[page - 1]
            self.currentLayer.fillColor = colors[page].cgColor
            self.helpBezier = createNext()
            [self.nextLayer, self.nextLayerMask].forEach {$0.path = self.helpBezier.cgPath}
            if page < colors.count - 1 {
                self.nextLayer.fillColor = colors[page + 1].cgColor
            }
            self.view.layoutIfNeeded()
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = nextLayer.path
        helpBezier = createOpenedNext()
        [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        [nextLayer, nextLayerMask].forEach {$0.add(animation, forKey: nil)}
        animation.toValue = helpBezier.cgPath
        CATransaction.commit()
    }
    
    func handleCloseNextLayer() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = nextLayer.path
        helpBezier = createNext()
        [nextLayer, nextLayerMask].forEach {$0.path = helpBezier.cgPath}
        animation.toValue = helpBezier.cgPath
        [nextLayer, nextLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func handleOpenCurrentLayer() {
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = currentLayer.path
        helpBezier = createCurrent()
        animation.toValue = helpBezier.cgPath
        [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        [currentLayer, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
    
    func handleCloseCurrentLayer() {
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            CATransaction.setValue(true, forKey: kCATransactionDisableActions)
            if page != 0 {
               self.view.backgroundColor = colors[page - 1]
            }
            self.nextLayer.fillColor = colors[page + 1].cgColor
            self.currentLayer.fillColor = colors[page].cgColor
            self.helpBezier = createCurrent()
            [self.currentLayer, self.currentLayerMask].forEach {$0.path = self.helpBezier.cgPath}
            self.view.layoutIfNeeded()
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
        animation.duration = 0.3
        animation.fromValue = currentLayer.path
        helpBezier = createClosedCurrent()
        animation.toValue = helpBezier.cgPath
        [currentLayer, currentLayerMask].forEach {$0.path = helpBezier.cgPath}
        [currentLayer, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
        CATransaction.commit()
    }
    
    func configureNavBar() {
        view.addSubview(naviagtionBar)
        naviagtionBar.delegate = self
    }
    
    func changeCity() {
        UIView.animate(withDuration: 0.1) {
            self.naviagtionBar.dateLabel.alpha = 0
        }
        let animation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.position))
        animation.duration = 0.6
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation.fromValue = currentLayer.position
        let openPosition = CGPoint(x: 0, y: height / 2)
        [currentLayer, currentLayerMask].forEach {$0.position = openPosition}
        animation.toValue = openPosition
        [currentLayer, currentLayerMask].forEach {$0.add(animation, forKey: nil)}
    }
}
