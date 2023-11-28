//
//  Scripts.swift
//  EnvironmentPlugin
//
//  Created by gnksbm on 2023/11/26.
//

import ProjectDescription

public extension TargetScript {
    static let swiftLint = TargetScript.pre(
        path: .relativeToRoot("Scripts/SwiftLintRunScript.sh"),
        name: "SwiftLintShell",
        basedOnDependencyAnalysis: false
    )
    static let featureSwiftLint = TargetScript.pre(
        path: .relativeToRoot("Scripts/FeatureSwiftLintRunScript.sh"),
        name: "SwiftLintShell",
        basedOnDependencyAnalysis: false
    )
}
