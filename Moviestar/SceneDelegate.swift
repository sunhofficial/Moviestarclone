//
//  SceneDelegate.swift
//  Moviestar
//
//  Created by 235 on 2023/05/29.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?
    
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowscene = (scene as? UIWindowScene) else { return }
    window = UIWindow(windowScene: windowscene)
    window?.backgroundColor = .systemBackground
    window?.rootViewController = ViewController()
    window?.makeKeyAndVisible()
        
    }
}
