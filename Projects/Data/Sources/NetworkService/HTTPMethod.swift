//
//  HTTPMethod.swift
//  Data
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public enum HTTPMethod {
    case get, put, post, delete
    
    var toString: String {
        switch self {
        case .get:
            return "GET"
        case .put:
            return "PUT"
        case .post:
            return "POST"
        case .delete:
            return "DELETE"
        }
    }
}
