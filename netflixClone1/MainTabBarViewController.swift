//
//  ViewController.swift
//  netflixClone1
//
//  Created by Zeki Furkan Durum on 30.07.2023.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcommingContorller())
        let vc3 = UINavigationController(rootViewController: searchViewController())
        let vc4 = UINavigationController(rootViewController: downloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
       
        vc1.title = "home"
        vc2.title = "coming soon"
        vc3.title = "top search"
        vc4.title = "downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
    }


}

