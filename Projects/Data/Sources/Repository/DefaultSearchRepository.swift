//
//  DefaultSearchRepository.swift
//  Data
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

import Domain

public final class DefaultSearchRepository: SearchRepository {
    private let networkService: NetworkService
    
    public init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    public func search(request: SearchRequestDTO) async -> Result<[SearchedApp], Error> {
        let result = await networkService.request(
            endPoint: SearchEndPoint(
                pathKind: .search, query: request.toData()
            )
        )
        switch result {
        case .success(let data):
            do {
                let dto = try JSONDecoder().decode(SearchResponseDTO.self, from: data)
                return .success(dto.toDomain())
            } catch {
                return .failure(NetworkError.parseError)
            }
        case .failure(let error):
            return .failure(error)
        }
    }
}
