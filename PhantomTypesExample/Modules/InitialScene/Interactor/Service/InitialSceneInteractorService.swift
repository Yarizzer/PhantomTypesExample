//
//  InitialSceneInteractorService.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol InitialSceneInteractorServiceType: AnyObject {
    func performCall(completion: @escaping (Bool) -> ())
}

class InitialSceneInteractorService {
    init(withModel model: InitialSceneViewModelType) {
        self.viewModel = model
    }
    
    private let viewModel: InitialSceneViewModelType
}

extension InitialSceneInteractorService: InitialSceneInteractorServiceType {
    func performCall(completion: @escaping (Bool) -> ()) {
        viewModel.performCall() { completion($0) }
    }
}
