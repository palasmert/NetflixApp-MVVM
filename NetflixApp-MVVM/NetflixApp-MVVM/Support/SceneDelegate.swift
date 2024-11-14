//
//  SceneDelegate.swift
//  NetflixApp-MVVM
//
//  Created by Mert Palas on 14.11.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        print("MainTabbarController yükleniyor...")
        
        window?.rootViewController = MainTabbarController()
        window?.makeKeyAndVisible()
    }
}
