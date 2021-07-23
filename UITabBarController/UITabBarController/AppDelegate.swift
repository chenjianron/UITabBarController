//
//  AppDelegate.swift
//  UITabBarController
//
//  Created by GC on 2021/7/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.backgroundColor = UIColor.white
        let myTabBar = UITabBarController()
        myTabBar.tabBar.backgroundColor = UIColor.clear
        let mainViewController = ViewController()
        mainViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 100)
        let articleViewController = ArticleViewController()
        articleViewController.tabBarItem = UITabBarItem(
            title:"文章",
            image:UIImage(named:"article"),
            selectedImage:UIImage(named: "articleSelected"))
        let introViewController = IntroViewController()
           introViewController.tabBarItem = UITabBarItem(
             title: "介紹",
             image: UIImage(named: "profile"),
             tag: 200)
        let settingViewController = SettingViewController()
           settingViewController.tabBarItem.image =
             UIImage(named: "setting")
           settingViewController.tabBarItem.title = "設定"
        myTabBar.viewControllers = [
            mainViewController, articleViewController,
            introViewController, settingViewController
        ]
        myTabBar.selectedIndex = 2
        self.window!.rootViewController = myTabBar
        self.window!.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle


}

