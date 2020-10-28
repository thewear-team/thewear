//
//  InternetAlert.swift
//  theWearApp
//
//  Created by Max Reshetov on 07/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class Alert: UIView {
    
    let wrongLabel: UILabel = {
        let label = UILabel()
        label.text = "Something went wrong..."
        label.font = UIFont(name: "AvenirNext-Medium", size: 18)
        label.textColor = UIColor.customBlack
        label.numberOfLines = 0
        return label
    }()
    
    let alertLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "AvenirNext-Regular", size: 14)
        label.textColor = UIColor.customBlack
        label.numberOfLines = 0
        return label
    }()
    
    let okButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ok", for: .normal)
        button.backgroundColor = colors[page]
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleButtonTouchDown), for: .touchDown)
        button.addTarget(self, action: #selector(handleButtonTouchCancel), for: .touchUpInside)
        return button
    }()
    
    @objc func handleButtonTouchDown() {
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.okButton.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        })
    }
    
    @objc func handleButtonTouchCancel() {
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.okButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: { _ in
            UIView.animate(withDuration: 0.5, animations: {
                self.frame = CGRect(x: 30, y: Frames.shared.height + 30, width: Frames.shared.width - 60, height: Frames.shared.height * 0.15)
            }, completion: { _ in
                self.removeFromSuperview()
                alert = nil
            })
        })
    }
    
    init(frame: CGRect, alert: String) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        self.frame = CGRect(x: 30, y: Frames.shared.height + 30, width: Frames.shared.width - 60, height: Frames.shared.height * 0.15)
        backgroundColor = .white
        [wrongLabel, alertLabel, okButton].forEach {addSubview($0)}
        okButton.center(nil, centerYAnchor, nil, 0, 60, 30)
        okButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        wrongLabel.anchor(topAnchor, leadingAnchor, nil, okButton.leadingAnchor, 15, 15, nil, 15, nil, 30)
        alertLabel.anchor(wrongLabel.bottomAnchor, leadingAnchor, bottomAnchor, okButton.leadingAnchor, 5, 15, 15, 15, nil, nil)
        self.alertLabel.text = alert
        self.tag = 0
        animateAlert()
    }
    
    func animateAlert() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.frame = CGRect(x: 30, y: 0.85 * Frames.shared.height - 30 - Frames.shared.bottom, width: Frames.shared.width - 60, height: Frames.shared.height * 0.15)
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
