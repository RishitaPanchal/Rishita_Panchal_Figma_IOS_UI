//
//  SceneDelegate.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 22/02/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("\nSceneDelegate : willConnectTo")
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let navController = UINavigationController()
        let appCoordinator = AppCoordinator(navController)
        appCoordinator.start()
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("SceneDelegate : sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("SceneDelegate : sceneDidBecomeActive")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("SceneDelegate : sceneWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("SceneDelegate : sceneWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("SceneDelegate : sceneDidEnterBackground")
    }


}

