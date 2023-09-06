//
//  InitialSceneInteractorContract.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol InitialSceneInteractable: AnyObject {
	func makeRequest(requestType: InitialSceneInteractorRequest.RequestType)
}

struct InitialSceneInteractorRequest {
	enum RequestType {
		case initialSetup
	}
}
