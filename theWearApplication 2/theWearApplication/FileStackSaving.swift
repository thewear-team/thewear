//
//  FileStackSaving.swift
//  theWearApplication
//
//  Created by Валентина on 14/05/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import Foundation
import FilestackSDK
import Filestack



//let filelink = transformable(handle: "g8fLXNCRT4K3TJSUFrRW")
//https://cdn.filestackcontent.com/ARVNFDkIFTCy2nOXvYSoLz/output=secure:true/security=policy:eyJleHBpcnkiOiAxNTU3ODY5NDg5LCAiY2FsbCI6IFsicmVhZCIsICJzdGF0IiwgImNvbnZlcnQiLCAicGljayIsICJzdG9yZSJdfQ==,signature:5d65637eedcf3e02dabda02dc33591a188aa5f3a8f6d62e4abce2553690f5f1d/MhYVnbR6OqudFHodf41Q

func initializeFilestack(){

    // Initialize a `Policy` with the expiry time and permissions you need.
    let oneDayInSeconds: TimeInterval = 60 * 60 * 24 * 356 // expires in a year
    let policy = Policy(// Set your expiry time (one year in our case)
        expiry: Date(timeIntervalSinceNow: oneDayInSeconds),
        // Set the permissions you want your policy to have
        call: [.pick, .read, .store])
    
    // Initialize a `Security` object by providing a `Policy` object and your app secret.
    // You can find and/or enable your app secret in the Developer Portal.
    guard let security = try? Security(policy: policy, appSecret: "YOUR-APP-SECRET") else {
        return
    }
    
    // Initialize your `Client` object by passing a valid API key, and security options.
   let  client = Client(apiKey: "AjbtO3fMEQiCkslGUvDNfz", security: security)
    

    let localURL = URL(string: "file:///an-app-sandbox-friendly-local-url")!
    
    let uploadRequest = client.multiFileUpload(from: localURL, uploadProgress: { (progress) in
        // Here you may update the UI to reflect the upload progress.
        print("progress = \(String(describing: progress))")
    }) { (response) in
        // Try to obtain Filestack handle
        if let json = response?.json, let handle = json["handle"] as? String {
            // Use Filestack handle
        } else if let error = response?.error {
            // Handle error
        }
    }
}
