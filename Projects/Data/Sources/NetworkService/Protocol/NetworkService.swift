//
//  NetworkService.swift
//  Data
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public protocol NetworkService {
    func request(endPoint: EndPoint) async -> Result<Data, Error>
}
