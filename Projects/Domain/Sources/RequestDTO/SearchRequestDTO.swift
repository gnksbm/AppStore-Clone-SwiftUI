//
//  SearchRequestDTO.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public struct SearchRequestDTO {
    let term: String
    let limit: Int
    
    public init(term: String, limit: Int) {
        self.term = term
        self.limit = limit
    }
}

public extension SearchRequestDTO {
    func toData() -> [String: String] {
        [
            "term": term,
            "limit": String(limit)
        ]
    }
}
