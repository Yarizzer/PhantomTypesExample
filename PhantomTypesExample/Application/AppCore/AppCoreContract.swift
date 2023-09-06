//
//  AppCoreContract.swift
//  PhantomTypesExample
//
//  Created by Yaroslav Abaturov on 17.03.2023.
//

protocol AppCoreNetworkable: AnyObject {
    var networkLayer: AppNetworkLayerType { get }
}
