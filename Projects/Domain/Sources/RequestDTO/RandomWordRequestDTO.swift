//
//  RandomWordRequestDTO.swift
//  Domain
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

public struct RandomWordRequestDTO {
    let count: Int
    let wordLength: Int
    
    public init(count: Int, wordLength: Int) {
        self.count = count
        self.wordLength = wordLength
    }
}

public extension RandomWordRequestDTO {
    func toData() -> [String: String] {
        [
            "number": String(count),
            "length": String(wordLength)
        ]
    }
}
