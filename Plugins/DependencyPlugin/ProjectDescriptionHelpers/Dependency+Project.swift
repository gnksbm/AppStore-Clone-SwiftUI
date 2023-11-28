//
//  Dependency+Project.swift
//  Environment
//
//  Created by gnksbm on 2023/11/19.
//

import ProjectDescription

public extension TargetDependency {
    static let app: Self = .module(name: "AppStore")
    static let data: Self = .module(name: "Data")
    static let domain: Self = .module(name: "Domain")
    static let baseTabFeature: Self = .module(name: "BaseTabFeature")
    static let featureDependency: Self = .module(name: "FeatureDependency")
    
    private static func module(name: String) -> Self {
        .project(target: name, path: .relativeToRoot("Projects/\(name)"))
    }
}
