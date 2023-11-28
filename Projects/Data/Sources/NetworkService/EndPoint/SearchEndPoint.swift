//
//  SearchEndPoint.swift
//  Data
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

struct SearchEndPoint: EndPoint {
    enum Path: String {
        case search, lookup
    }
    let pathKind: Path
    
    var baseURL: URL? {
        URL(string: "https://itunes.apple.com/")
    }
    var header: [String: String] {
        [:]
    }
    var path: String {
        pathKind.rawValue
    }
    var query: [String : String]
    var method: HTTPMethod {
        .get
    }
    
    init(pathKind: Path, query: [String : String]) {
        self.pathKind = pathKind
        self.query = [
            "media": "software",
            "country": "kr"
        ]
        query.forEach { self.query.updateValue($1, forKey: $0) }
    }
}
