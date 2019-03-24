//
//  PartsCollectionViewCell.swift
//  theWear
//
//  Created by Maxim Reshetov on 25/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import UIKit

class PartsCollectionViewCell: UICollectionViewCell {
    
    let name: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        return label
    }()
    
    let icon: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let degree: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        return label
    }()
    
    func configureCell() {
        [name, icon, degree].forEach {addSubview($0)}
        
        icon.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 30, height: 30, enableInsets: false)
        icon.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        icon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        name.anchor(top: topAnchor, left: leadingAnchor, bottom: icon.topAnchor, right: trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        
        degree.anchor(top: icon.bottomAnchor, left: leadingAnchor, bottom: bottomAnchor, right: trailingAnchor, paddingTop: -10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
