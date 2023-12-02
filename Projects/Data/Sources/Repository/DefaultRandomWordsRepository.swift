//
//  DefaultRandomWordsRepository.swift
//  Data
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

import Domain

public final class DefaultRandomWordsRepository: RandomWordsRepository {
    private let networkService: NetworkService
    
    public init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    public func fetch(request: RandomWordRequestDTO) async -> Result<[String], Error> {
        let result = await networkService.request(
            endPoint: RandomWordEndPoint(
                query: request.toData()
            )
        )
        switch result {
        case .success(let data):
            do {
                let strArr = try JSONDecoder().decode([String].self, from: data)
                return .success(strArr)
            } catch {
                return .failure(NetworkError.parseError)
            }
        case .failure(let error):
            return .failure(error)
        }
    }
}
