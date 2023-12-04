//
//  DIContainer.swift
//  BaseTabFeature
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

import Domain

public final class DIContainer: ObservableObject {
    private static var storage: [String: Any] = [:]
    
    private init() { }
    
    public static func register<T>(type: T.Type, _ object: T) {
        storage["\(type)"] = object
    }
    
    public static func resolve<T>(type: T.Type) -> T {
        guard let object = storage["\(type)"] as? T else {
            fatalError("register 되지 않은 객체 호출: \(type)")
        }
        return object
    }
}
