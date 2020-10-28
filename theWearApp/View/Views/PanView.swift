//
//  PanView.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit


class PanView: UIView {
    
    var correctNextLayer = false
    var correctPreviousLayer = false
    
    var currentDelegate: CurrentLayerDelegate!
    var nextDelegate: NextLayerDelegate!
    
    func configure() {
        frame = CGRect(x: 0, y: Frames.shared.top + 30 + 0.1 * Frames.shared.height, width: Frames.shared.width, height: 0.9 * Frames.shared.height - Frames.shared.top - 30)
        addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePanView(_:))))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handlePanView(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
            let translation = recognizer.translation(in: self)
            let newX = self.frame.origin.x + translation.x
            let newYY = recognizer.location(in: self).y + Frames.shared.top + 30 + Frames.shared.height * 0.1
            Frames.shared.newY = newYY
            if newX <= 0 {
                if page < colors.count - 1 {
                    if !correctPreviousLayer {
                        correctNextLayer = false
                        currentDelegate.handleOpenCurrentLayer()
                        correctPreviousLayer = true
                    }
                    self.frame.origin.x = newX
                    nextDelegate.createNextLayerWhenPan(newX + Frames.shared.width, newYY, translation.x, translation.y)
                }
            } else {
                if page != 0 {
                    if !correctNextLayer {
                        correctPreviousLayer = false
                        nextDelegate.handleCloseNextLayer()
                        correctNextLayer = true
                    }
                    self.frame.origin.x = newX
                    currentDelegate.createCurrentLayerWhenPan(newX, newYY, translation.x)
                }
            }
            recognizer.setTranslation(.zero, in: self)
        } else if recognizer.state == .ended {
            if self.frame.origin.x < -Frames.shared.width / 2 {
                page += 1
                nextDelegate.handleOpenNextLayer()
            } else if self.frame.origin.x >= -Frames.shared.width / 2 && self.frame.origin.x <= 0 {
                nextDelegate.handleCloseNextLayer()
            } else if self.frame.origin.x > 0 && self.frame.origin.x <= Frames.shared.width / 2 {
                currentDelegate.handleOpenCurrentLayer()
            } else {
                page -= 1
                currentDelegate.handleCloseCurrentLayer()
            }
            self.frame.origin.x = 0
        }
    }
    
    func configureDetailsView() {
        let detailsView = DetailsView(frame: .zero)
        detailsView.tag = 1
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(detailsView)
        }
    }
}
