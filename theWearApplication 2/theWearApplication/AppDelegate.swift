//
//  AppDelegate.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UIApplication.shared.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)
        notificationCenter?.removeAllDeliveredNotifications()
        notificationCenter?.removeAllPendingNotificationRequests()
        window = UIWindow()
        window?.makeKeyAndVisible()
        configurePaddingsAndFrame()
        window?.rootViewController = ViewController()
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
            createnoticreateNotificationAtTime(hour: 22, minute: 00, city : city, text: genereatePush(hour: 18) ?? "", back : true)
           createnoticreateNotificationAtTime(hour: 23, minute: 30, city : city, text: genereatePush(hour: 19) ?? "", back : true)
            createnoticreateNotificationAtTime(hour: 23, minute: 00, city : city, text: genereatePush(hour: 19) ?? "", back : true)
             createnoticreateNotificationAtTime(hour: 23, minute: 30, city : city, text: genereatePush(hour: 19) ?? "", back : true)
           createnoticreateNotificationAtTime(hour: 00, minute: 00, city : city, text: genereatePush(hour: 19) ?? "", back : true)
             createnoticreateNotificationAtTime(hour: 00, minute: 30, city : city, text: genereatePush(hour: 19) ?? "", back : true)
            createnoticreateNotificationAtTime(hour: 02, minute: 30, city : city, text: genereatePush(hour: 19) ?? "", back : true)
            createnoticreateNotificationAtTime(hour: getCurrentHours() + 1, minute: 15, city : city, text: genereatePush(hour : getCurrentHours()) ?? "", back : true)
            
         completionHandler(.newData)
        })
        
        }
    }


}

