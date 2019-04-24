//
//  SettingsView.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 25/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SettingsView: NSObject {
    
    let underView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 45
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return view
    }()
    
    let downnImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "downn"))

        return imageView
    }()
    
    @objc func handleRecognizer(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: underView)
            let newY = underView.frame.origin.y + translation.y
            if let window = UIApplication.shared.keyWindow {
                if newY >= window.frame.height * 0.2 {
                    underView.frame = CGRect(x: 0, y: newY, width: underView.frame.width, height: underView.frame.height)
                    
                }
            }
            recognizer.setTranslation(.zero, in: underView)
        } else {
            if let window = UIApplication.shared.keyWindow {
                if underView.frame.origin.y >= window.frame.height * 0.5 {
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                        self.underView.frame = CGRect(x: 0, y: window.frame.height, width: self.underView.frame.width, height: self.underView.frame.height)
                    }, completion: nil)
                } else {
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                        self.underView.frame = CGRect(x: 0, y: window.frame.height * 0.2, width: self.underView.frame.width, height: self.underView.frame.height)
                        
                    }, completion: nil)
                }
            }
        }
    }
    
    func showSettings() {
        
        let blurEffect = UIBlurEffect(style: .regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        if let window = UIApplication.shared.keyWindow {
            [blurEffectView, underView].forEach {window.addSubview($0)}
            underView.addSubview(downnImageView)
            blurEffectView.frame = window.frame
            blurEffectView.alpha = 0
            underView.frame = CGRect(x: 0, y: window.frame.height, width: window.frame.width, height: window.frame.height * 0.8)
            let recognizer = UIPanGestureRecognizer(target: self, action: #selector(handleRecognizer(_:)))
            underView.addGestureRecognizer(recognizer)
            downnImageView.frame = CGRect(x: (window.frame.width * 0.5) - 15.0, y: -35, width: 25, height: 25)
        }

        // actually showing
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            if let window = UIApplication.shared.keyWindow {
                self.underView.frame = CGRect(x: 0, y: window.frame.height * 0.2, width: window.frame.width, height: window.frame.height * 0.8)
                blurEffectView.alpha = 1
            }
        }, completion: nil)
    }
    
    override init() {
        super.init()
    }
}
