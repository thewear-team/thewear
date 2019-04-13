//
//  NowCell.swift
//  theWearConcept
//
//  Created by Maxim Reshetov on 10/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class NowCell: UICollectionViewCell {
    
    let manImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "man"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let sliderImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "slider_light"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    func configureCell() {
        addSubview(manImageView)
        manImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        manImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        manImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        addSubview(sliderImageView)
        sliderImageView.frame = CGRect(x: frame.width - 60, y: frame.height * 0.75, width: 60, height: 0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
