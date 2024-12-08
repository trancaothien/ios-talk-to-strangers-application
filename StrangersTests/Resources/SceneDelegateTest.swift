//
//  SceneDelegateTest.swift
//  Strangers
//
//  Created by Trần Cao Thiên on 8/12/24.
//  Copyright © 2024 Studio35. All rights reserved.
//

import UIKit

class SceneDelegate: NSObject, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        if let scene = scene as? UIWindowScene {
            print("SceneDelegate is connected!")
        }
    }
}
