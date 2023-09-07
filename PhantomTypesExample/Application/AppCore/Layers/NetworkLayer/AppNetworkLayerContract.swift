//
//  AppNetworkLayerContract.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//

import Foundation

enum RequestType {
    enum Authenticated { }
    enum Unauthenticated { }
}

struct Request<RequestType> {
    let item: ItemModel
}

typealias AuthenticatedRequest = Request<RequestType.Authenticated>
typealias UnauthenticatedRequest = Request<RequestType.Unauthenticated>
