//
//  CitiesTableView.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 17/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class CitiesTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.frame = CGRect(x: 0, y: top + height * 0.1, width: width, height: fullHeight - top - height * 0.1)
        self.backgroundColor = .clear
        self.alpha = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
