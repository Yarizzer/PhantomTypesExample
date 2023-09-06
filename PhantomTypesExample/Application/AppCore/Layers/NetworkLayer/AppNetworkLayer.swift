//
//  AppNetworkLayer.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//

protocol AppNetworkLayerType: AnyObject {
    func performAuthenticatedCall(request: AuthenticatedRequest, completion: @escaping (Bool) -> ())
    func performUnauthenticatedCall(request: UnauthenticatedRequest, completion: @escaping (Bool) -> ())
}

class AppNetworkLayer {}

extension AppNetworkLayer: AppNetworkLayerType {
    func performAuthenticatedCall(request: AuthenticatedRequest, completion: @escaping (Bool) -> ()) {
        #warning("Sending auth request here")
        
        completion(true)
    }
    
    func performUnauthenticatedCall(request: UnauthenticatedRequest, completion: @escaping (Bool) -> ()) {
        #warning("Sending Unauth request here")
        
        completion(true)
    }
}
