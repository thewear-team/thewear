//
//  DropBoxFileManagement.swift
//  theWearApplicationTests
//
//  Created by Валентина on 15/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import SwiftyDropbox

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    DropboxClientsManager.setupWithAppKey("gyc9fn5jwhgco7p")
    return true
}
//func myButtonInControllerPressed() {
//    DropboxClientsManager.authorizeFromController(UIApplication.shared,
//                                                  controller: self,
//                                                  openURL: { (url: URL) -> Void in
//                                                    UIApplication.shared.openURL(url)
//    })
//}
