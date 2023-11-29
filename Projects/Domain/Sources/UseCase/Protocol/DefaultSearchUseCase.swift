//
//  DefaultSearchUseCase.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public final class DefaultSearchUseCase: SearchUseCase {
    private let searchRepository: SearchRepository
    private let randomWordsRepository: RandomWordsRepository
    
    public init(searchRepository: SearchRepository,
                randomWordsRepository: RandomWordsRepository) {
        self.searchRepository = searchRepository
        self.randomWordsRepository = randomWordsRepository
    }
    
    public func search(term: String, limit: Int) async -> Result<[SearchedApp], Error> {
        return await searchRepository.search(request: SearchRequestDTO(term: term, limit: limit))
    }
    
    public func fetchRandomWords() async -> Result<[String], Error> {
        return await randomWordsRepository.fetch()
    }
}
