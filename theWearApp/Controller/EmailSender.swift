//
//  EmailSender.swift
//  theWearApp
//
//  Created by Валентина on 23.08.2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class EmailClassViewController: UIViewController, MFMailComposeViewControllerDelegate {

    let composeVC = MFMailComposeViewController()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }else{
            configureAndPresent()
        }
        
    }
    
    func configureAndPresent() {
        composeVC.mailComposeDelegate = self
    
        composeVC.setToRecipients(["thewear.info@gmail.com"])
        composeVC.setSubject("Your problem")
        composeVC.setMessageBody("Hello! I have an issue to discuss", isHTML: false)
        self.present(composeVC, animated: true, completion: nil)
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        print("hehe")
        
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Mail cancelled")
        case MFMailComposeResult.saved.rawValue:
            print("Mail saved")
        case MFMailComposeResult.sent.rawValue:
            print("Mail sent")
        case MFMailComposeResult.failed.rawValue:
            print("Mail sent failure: %@", error?.localizedDescription)
        default:
            break
        }
        if let currentVc = UIApplication.shared.keyWindow?.rootViewController{
            currentVc.dismiss(animated: true, completion: nil)
        }

    }
    

    
    
    
    
    
    
}
