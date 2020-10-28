//
//  AppDelegate.swift
//  theWearApp
//
//  Created by Max Reshetov on 30/06/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UIApplication.shared.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)
        
        NotificationCenter.default.addObserver(self, selector: #selector(localeChanged), name: NSLocale.currentLocaleDidChangeNotification, object: nil)
        NotificationService.shared.notificationCenter?.requestAuthorization(options: .alert, completionHandler: {
            granted, error in
            if granted{
                 notificationEnabled = SettingsSaver.enabled
                NotificationService.shared.configureNotifications()
                print("granted")
            }
            else{
                 notificationEnabled = SettingsSaver.disabled
            }
        })
        
        NotificationService.shared.notificationCenter?.removeAllDeliveredNotifications()
        NotificationService.shared.notificationCenter?.removeAllPendingNotificationRequests()
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController()
        
        determinePartOfDay()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("soon will be inactive")
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
        window?.viewWithTag(1)?.removeFromSuperview()
        window?.viewWithTag(2)?.removeFromSuperview()
        window?.viewWithTag(3)?.removeFromSuperview()
        window?.viewWithTag(4)?.removeFromSuperview()
        window?.viewWithTag(5)?.removeFromSuperview()
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        selectedDay = 0
        if alert != nil{
            alert?.removeFromSuperview()
            alert = nil
        }
        print("start working afret inactive")
       NotificationCenter.default.post(name: .startWorking, object: self)

    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        if alert != nil{
            alert?.removeFromSuperview()
            alert = nil
        }
 
    }
    
   
    
    func applicationWillTerminate(_ application: UIApplication) {
    }
    
    //MARK: background data fetch
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        if application.backgroundRefreshStatus == .available {
            // yay!
            NotificationService.shared.notificationCenter?.removeAllDeliveredNotifications()
            NotificationService.shared.notificationCenter?.removeAllPendingNotificationRequests()
            if !ViewController.latitude.isEmpty && !ViewController.longitude.isEmpty{
                let geo = ViewController.latitude  + "%20" + ViewController.longitude
                NetworkService.shared.getWeather(currentGEO: geo, completion: {
                    data in
                    Data.doAllDataManipulations(data: data)
                    NotificationService.shared.performAllNotificationTasks()
                })}
        }
    }
    
    @objc  func localeChanged() {
        
    }

    
}

