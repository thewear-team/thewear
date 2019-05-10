//
//  NavigationBar.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 08/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class NavigationBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y: top, width: width, height: height * 0.1)
        buttonSize = self.frame.height * 0.4
        buttonY = top + self.frame.height / 2 - buttonSize / 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
