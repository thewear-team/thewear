//
//  PersonView.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 12/06/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class PersonView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: (width - 200) / 2, y: (fullHeight - 490) / 2 - 25, width: 200, height: 490)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
