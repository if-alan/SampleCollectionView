//
//  AppDelegate.swift
//  SampleCollectionView
//
//  Created by Nur If Alan Farizi on 14/07/20.
//  Copyright © 2020 Nur If Alan Farizi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
           let rootViewController = SampleCollectionViewController()
//           let navigationController = UINavigationController(rootViewController: rootViewController)
           window.rootViewController = rootViewController
           window.makeKeyAndVisible()
        }
        return true
    }

}

