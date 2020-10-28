//
//  HairCutColorCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class HairCutColorCell: UICollectionViewCell {
    
    let color = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(color)
        color.center(centerXAnchor, centerYAnchor, -Frames.shared.height * 0.025, 0, Frames.shared.height * 0.05, Frames.shared.height * 0.05)
        color.layer.cornerRadius = Frames.shared.height * 0.025
    }
    
    override var isSelected: Bool {
        didSet {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.color.transform = self.isSelected ? CGAffineTransform(scaleX: 1.4, y: 1.4) : CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
