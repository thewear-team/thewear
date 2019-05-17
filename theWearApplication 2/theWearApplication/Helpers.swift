//
//  Helpers.swift
//  theWearApplication
//
//  Created by Валентина on 17/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation

func getCurrentHours()->Int{
    let currentDate = NSDate() // You can input the custom as well
    let calendar = NSCalendar.current
    let hour = calendar.component(.hour, from: currentDate as Date)
    print(hour)
    return Int(hour)
}
