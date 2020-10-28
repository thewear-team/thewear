//
//  NotificationTimeViewExtension.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/08/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

extension NotificationTimeView: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timeArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let title = UILabel()
        title.font = Frames.shared.mediumFont
        title.textColor = UIColor.customBlack
        title.text = timeArray[row]
        title.textAlignment = .center
        return title
    }
}
