//
//  SearchRepository.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public protocol SearchRepository {
    func search(request: SearchRequestDTO) async -> Result<[SearchedApp], Error>
}
