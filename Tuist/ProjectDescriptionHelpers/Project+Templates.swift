//
//  Project+Templates.swift
//  Config
//
//  Created by gnksbm on 2023/11/19.
//

import ProjectDescription
import EnvironmentPlugin
import DependencyPlugin

extension Project {
    // MARK: Refact
    public static func makeProject(
        name: String,
        targetKinds: TargetKind,
        entitlements: Path? = nil,
        isTestable: Bool = false,
        hasResource: Bool = false,
        dependencies: [TargetDependency]
    ) -> Self {
        var targets = [Target]()
        targets = {
            switch targetKinds {
            case .app:
                var result = [Target]()
                let app = appTarget(name: name, entitlements: entitlements, dependencies: dependencies)
                result.append(app)
                if isTestable {
                    let test = unitTestTarget(name: name, dependencies: dependencies)
                    result.append(test)
                }
                return result
            case .framework:
                var result = [Target]()
                let framework = frameworkTarget(name: name, entitlements: entitlements, hasResource: hasResource, dependencies: dependencies)
                result.append(framework)
                let frameworkDependency = TargetDependency.target(framework)
                let test = unitTestTarget(name: name, dependencies: [frameworkDependency])
                result.append(test)
                return result
            case .feature:
                var result = [Target]()
                let framework = frameworkTarget(name: name, entitlements: entitlements, hasResource: hasResource, isFeature: true, dependencies: dependencies)
                result.append(framework)
                let frameworkDependency = TargetDependency.target(framework)
                let test = unitTestTarget(name: name, isFeature: true, dependencies: [frameworkDependency])
                result.append(test)
                return result
            }
        }()
        return Project(name: name,
                organizationName: .organizationName,
                targets: targets
        )
    }
    
    private static func appTarget(
        name: String,
        entitlements: Path?,
        dependencies: [TargetDependency]
    ) -> Target {
        let target: Target = .init(
            name: name,
            platform: .iOS,
            product: .app,
            bundleId: .bundleIDPrefix,
            deploymentTarget: .current,
            infoPlist: .current,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            entitlements: entitlements,
            scripts: [.swiftLint],
            dependencies: dependencies,
            settings: .secret
        )
        return target
    }

    private static func frameworkTarget(
        name: String,
        entitlements: Path?,
        hasResource: Bool,
        isFeature: Bool = false,
        dependencies: [TargetDependency]
    ) -> Target {
        let target: Target = .init(
            name: name,
            platform: .iOS,
            product: .framework,
            bundleId: .bundleIDPrefix + ".\(name)",
            deploymentTarget: .current,
            infoPlist: .current,
            sources: ["Sources/**"],
            resources: hasResource ? .resources : nil,
            entitlements: entitlements,
            scripts: isFeature ? [.featureSwiftLint] : [.swiftLint],
            dependencies: dependencies,
            settings: .secret
        )
        return target
    }
    
    private static func unitTestTarget(
        name: String,
        isFeature: Bool = false,
        dependencies: [TargetDependency]
    ) -> Target {
        return Target(
            name: "\(name)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: .bundleIDPrefix + ".\(name)Test",
            deploymentTarget: .current,
            infoPlist: .current,
            sources: ["Tests/**"],
            scripts: isFeature ? [.featureSwiftLint] : [.swiftLint],
            dependencies: dependencies
        )
    }
}
