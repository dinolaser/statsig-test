//
//  AppDelegate.swift
//  StatsigTestApp
//
//  Created by Daniel Loomb on 3/24/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  let statsigUser =
    StatsigUser(userID: "dloomb#1",
                name: "Daniel",
                email: "dloomb@gmail.com",
                ip: "192.168.1.1",
                country: "New Zealand",
                custom: ["power_level": "9001"])

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.

    Statsig.start(user: statsigUser, sdkKey: "secret-SJCoxwEHpsOCpEv8AgWG1z2jv6wOo9CEXSCVb0CzbE2") { (res) in
      print("AppDelegate Statsig Completion: \(String(describing: res))")
    }


  

    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


}

