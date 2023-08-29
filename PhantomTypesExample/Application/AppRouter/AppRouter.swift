//
//  AppRouter.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//

import UIKit

protocol AppRoutable {
    func routeToInitialScene()
}

final class AppRouter {
    init() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .systemBackground
    }
    
    private let window: UIWindow
}

extension AppRouter: AppRoutable {
    func routeToInitialScene() {
        window.rootViewController = InitialSceneRouter.assembly()
        window.makeKeyAndVisible()
    }
}
