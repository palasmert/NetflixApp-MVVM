//
//  ViewController.swift
//  NetflixApp-MVVM
//
//  Created by Mert Palas on 14.11.2024.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        createTabbar()
    }

    func createTabbar() {
        let vcFirst = UINavigationController(rootViewController: MovieListBuilder.make())
        let vcSecond = UINavigationController(rootViewController: UpComingVC())
        let vcThird = UINavigationController(rootViewController: SearchVC())
        let vcFourth = UINavigationController(rootViewController: DownloadViewController())
        
        vcFirst.tabBarItem.image = UIImage(systemName: "house")
        vcSecond.tabBarItem.image = UIImage(systemName: "play.circle")
        vcThird.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vcFourth.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        vcFirst.title = "Home"
        vcSecond.title = "Coming Soon"
        vcThird.title = "Top Search"
        vcFourth.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vcFirst, vcSecond, vcThird, vcFourth], animated: true)
    }

}

