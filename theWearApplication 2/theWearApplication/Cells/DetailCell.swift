//
//  DetailCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 10/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell {
    
    let icon: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 0.025 * fullHeight
        view.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        return view
    }()
    
    let name: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: fontForAdditional + 4, weight: .medium)
        return label
    }()
    
    func configureCell() {
        [icon, name].forEach {addSubview($0)}
        icon.frame = CGRect(x: buttonSize, y: 0.00625 * fullHeight, width: 0.05 * fullHeight, height: 0.05 * fullHeight)
        name.frame = CGRect(x: buttonSize + 0.1 * fullHeight, y: 0, width: frame.width - (buttonSize + 0.1 * fullHeight), height: 0.0625 * fullHeight)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
