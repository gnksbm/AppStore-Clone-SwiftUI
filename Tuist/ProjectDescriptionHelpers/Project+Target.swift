//
//  Scripts.swift
//  ProjectDescriptionHelpers
//
//  Created by gnksbm on 2023/11/19.
//

import ProjectDescription

public enum TargetKind {
    case app, framework, feature
}

public extension ResourceFileElements {
    static let resources: Self = ["Resources/**"]
}
