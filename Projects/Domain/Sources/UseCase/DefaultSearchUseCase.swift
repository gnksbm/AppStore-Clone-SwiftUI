//
//  DefaultSearchUseCase.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public final class DefaultSearchUseCase: SearchUseCase {
    private let repository: SearchRepository
    
    public init(repository: SearchRepository) {
        self.repository = repository
    }
    
    public func search(term: String, limit: Int) async -> Result<[SearchedApp], Error> {
        return await repository.search(request: SearchRequestDTO(term: term, limit: limit))
    }
}
