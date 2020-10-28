//
//  HairCutCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class HairCutCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layer.cornerRadius = 10
    }
    
    override var isSelected: Bool {
        didSet {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.backgroundColor = self.isSelected ? UIColor(white: 0, alpha: 0.1) : UIColor(white: 1, alpha: 1)
            }, completion: nil)
            
        }
    }
    
 
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
