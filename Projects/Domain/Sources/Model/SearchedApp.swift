//
//  SearchedApp.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public struct SearchedApp: Hashable {
    public let iconURL: URL
    public let title: String
    public let category: String
    public let rating: Double
    public let ratingCount: Int
    public let developer: String
    public let screenshotList: [URL]
    
    public init(iconURL: URL,
                title: String,
                category: String,
                rating: Double,
                ratingCount: Int,
                developer: String,
                screenshotList: [URL]) {
        self.iconURL = iconURL
        self.title = title
        self.category = category
        self.rating = rating
        self.ratingCount = ratingCount
        self.developer = developer
        self.screenshotList = screenshotList
    }
}
