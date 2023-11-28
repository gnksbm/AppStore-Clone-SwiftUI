//
//  Dependency+Feature.swift
//  DependencyPlugin
//
//  Created by gnksbm on 2023/11/24.
//

import ProjectDescription

public extension Array<TargetDependency> {
    enum Feature: CaseIterable {
        case search
        
        public var dependency: TargetDependency {
            switch self {
            case .search:
                return featureModule(name: "SearchFeature")
            }
        }
        
        private func featureModule(name: String) -> TargetDependency {
            .project(target: name, path: .relativeToRoot("Projects/Feature/\(name)"))
        }
    }
}
