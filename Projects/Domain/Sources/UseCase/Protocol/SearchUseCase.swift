//
//  SearchUseCase.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public protocol SearchUseCase {
    func search(term: String, limit: Int) async -> Result<[SearchedApp], Error>
    func fetchRandomWords(count: Int, wordLength: Int) async -> Result<[String], Error>
}
