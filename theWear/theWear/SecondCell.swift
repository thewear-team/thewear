//
//  SecondCell.swift
//  theWearConcept
//
//  Created by Maxim Reshetov on 10/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class SecondCell: UICollectionViewCell {
    
    let manImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "man"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    func configureCell() {
        addSubview(manImageView)
        manImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        manImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        manImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

