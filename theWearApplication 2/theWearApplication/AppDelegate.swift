//
//  AppDelegate.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit
import os

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var appViewController : ViewController = ViewController()
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        appViewController = ViewController()
        UIApplication.shared.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)
        notificationCenter?.requestAuthorization(options: .alert, completionHandler: {
            granted, error in
            if granted{
                print("granted")
            }
        })
        
        notificationCenter?.removeAllDeliveredNotifications()
        notificationCenter?.removeAllPendingNotificationRequests()
        window = UIWindow()
        window?.makeKeyAndVisible()
        configurePaddingsAndFrame()
        window?.rootViewController =  ViewController()
        return true
    }
  

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
      
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {

         NotificationCenter.default.post(Notification(name: afterInactive))
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //MARK: background data fetch
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        if application.backgroundRefreshStatus == .available {
            // yay!
        notificationCenter?.removeAllDeliveredNotifications()
        notificationCenter?.removeAllPendingNotificationRequests()
        let vc = ViewController()
        print("location in background is \(vc.latitude), \(vc.longitude)")
        print("last selected city is \(currentCity)")
        let city = currentCity.replacingOccurrences(of: "%20", with: " ")
        loadData(currentCity: currentCity, completion: {
            data in
            processData(data: data)
            print(data.current_condition[0].temp_C)
            configureNotifications()
            os_log("running background fetch now")
            createnoticreateNotificationAtTime(hour: hourOfPush, minute: minuteOfPush, city : city, text: genereatePush(hour: hourOfPush) ?? "", back : true)
//
//            createnoticreateNotificationAtTime(hour: getCurrentHours() + 1, minute: 15, city : city, text: genereatePush(hour : getCurrentHours()) ?? "", back : true)
            
         completionHandler(.newData)
        })
        
        }
    }


}

