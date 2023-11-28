//
//  EndPoint.swift
//  Data
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public protocol EndPoint {
    var baseURL: URL? { get }
    var header: [String: String] { get }
    var path: String { get }
    var query: [String: String] { get }
    var method: HTTPMethod { get }
}

extension EndPoint {
    func toRequest() -> URLRequest? {
        guard let baseURL else { return nil }
        let currentURL = baseURL
            .appending(path: path)
            .appending(queryItems: query.map { .init(name: $0, value: $1) })
        var request = URLRequest(url: currentURL)
        request.httpMethod = method.toString
        request.allHTTPHeaderFields = header
        return request
    }
}
