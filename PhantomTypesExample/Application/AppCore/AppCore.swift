//
//  AppCore.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//

final class AppCore {
    static let shared = AppCore()
    
    private init() {
        self.networkL = AppNetworkLayer()
    }
    
    private let networkL: AppNetworkLayerType
}

extension AppCore: AppCoreNetworkable {
    var networkLayer: AppNetworkLayerType { return networkL }
}
