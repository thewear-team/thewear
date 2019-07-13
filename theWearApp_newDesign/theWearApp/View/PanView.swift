//
//  PanView.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit


class PanView: UIView {
    
    // MARK: Properties
    
    var currentDelegate: CurrentLayerDelegate!
    var nextDelegate: NextLayerDelegate!
    var delegate: DetailsViewDelegate!
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurePanView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Handlers
    
    func configurePanView() {
        self.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePanView(_:))))
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapOnWeather(_:))))
    }
    
    @objc func handlePanView(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self)
            let newX = self.frame.origin.x + translation.x
            if newX <= 0 {
                if page < colors.count - 1 {
                    self.frame.origin.x = newX
                    nextDelegate.createNextLayerWhenPan(newX + width, translation.x)
                }
            } else {
                if page != 0 {
                    self.frame.origin.x = newX
                    currentDelegate.createCurrentLayerWhenPan(newX, translation.x)
                }
            }
            recognizer.setTranslation(.zero, in: self)
        } else if recognizer.state == .ended {
            if self.frame.origin.x < -width / 2 {
                nextDelegate.handleOpenNextLayer()
            } else if self.frame.origin.x >= -width / 2 && self.frame.origin.x <= 0 {
                nextDelegate.handleCloseNextLayer()
            } else if self.frame.origin.x > 0 && self.frame.origin.x <= width / 2 {
                currentDelegate.handleOpenCurrentLayer()
            } else {
                currentDelegate.handleCloseCurrentLayer()
            }
            self.frame.origin.x = 0
        }
    }
    
    @objc func handleTapOnWeather(_ recognizer: UITapGestureRecognizer) {
        let location = recognizer.location(in: self)
        if location.x >= 30 && location.x <= width - 60 && location.y >= (0.89 * height - bottom - 30) && location.y <= (height - bottom - 30) {
            delegate.configureDetailsView()
        }
    }
}
