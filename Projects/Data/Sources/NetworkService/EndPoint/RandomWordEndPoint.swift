//
//  RandomWordEndPoint.swift
//  Data
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

struct RandomWordEndPoint: EndPoint {
    var baseURL: URL? {
        URL(string: "https://random-word-api.herokuapp.com")
    }
    var header: [String: String] {
        [:]
    }
    var path: String {
        "word"
    }
    var query: [String : String]
    var method: HTTPMethod {
        .get
    }
    
    init(query: [String : String]) {
        self.query = query
        query.forEach { self.query.updateValue($1, forKey: $0) }
    }
}
