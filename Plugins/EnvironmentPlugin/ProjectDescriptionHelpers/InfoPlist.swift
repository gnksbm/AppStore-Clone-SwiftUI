//
//  InfoPlist.swift
//  AppStore
//
//  Created by gnksbm on 2023/11/19.
//  Copyright © 2023 https://github.com/gnksbm/Clone_AppStore. All rights reserved.
//

import ProjectDescription

extension InfoPlist {
    public static let current: Self = .extendingDefault(with: [
        "BundleDisplayName": .appName,
        "CFBundleShortVersionString": .shortVersion,
        "CFBundleVersion": .version,
        "UILaunchStoryboardName": "LaunchScreen",
    ])
}
