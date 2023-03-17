//
//  InitialSceneViewModel.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import Foundation

protocol InitialSceneViewModelType {
    func performCall(completion: @escaping (Bool) -> ())
}

class InitialSceneViewModel {
    init() {
        self.item = ItemModel(url: URL(string: "https://www.google.com"), body: nil)
    }
    
    private let item: ItemModel
}

extension InitialSceneViewModel: InitialSceneViewModelType {
    func performCall(completion: @escaping (Bool) -> ()) {
        let authReq = Request<RequestType.Authenticated>(item: item)
        let unauthReq = Request<RequestType.Unauthenticated>(item: item)
        
        AppCore.shared.networkLayer.performAuthenticatedCall(request: authReq) { completion($0) }
        AppCore.shared.networkLayer.performUnauthenticatedCall(request: unauthReq) { completion($0) }
        
        #warning("Performs an issue here")
//        AppCore.shared.networkLayer.performAuthenticatedCall(request: unauthReq) { completion($0) }
//        AppCore.shared.networkLayer.performUnauthenticatedCall(request: authReq) { completion($0) }
    }
}
