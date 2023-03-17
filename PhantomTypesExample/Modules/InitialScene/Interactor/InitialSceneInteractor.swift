//
//  InitialSceneInteractor.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

class InitialSceneInteractor {
    init(withRouter router: InitialSceneRoutable, presenter: InitialScenePresentable, service: InitialSceneInteractorServiceType) {
        self.router = router
        self.presenter = presenter
        self.service = service
    }

    private let router: InitialSceneRoutable
    private let presenter: InitialScenePresentable
    private let service: InitialSceneInteractorServiceType
}

extension InitialSceneInteractor: InitialSceneInteractable {
    func makeRequest(requestType: InitialSceneInteractorRequest.RequestType) {
        switch requestType {
        case .initialSetup:
            service.performCall() { [weak self] in
                if $0 { self?.presenter.response(responseType: .initialSetup) }
            }
        }
    }
}
