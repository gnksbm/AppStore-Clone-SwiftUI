//
//  Int+.swift
//  FeatureDependency
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

public extension Int {
    var ratingSummaryString: String {
        if self / 1000 == 0 {
            return String(self)
        } else if self / 1000 > 0 {
            return String(self / 1000) + "천"
        } else if self / 10000 > 0 {
            return String(self / 10000) + "만"
        } else if self / 100000000 > 0 {
            return String(self / 100000000) + "억"
        } else {
            return "너무 많아"
        }
    }
}
