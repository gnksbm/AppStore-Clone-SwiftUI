//
//  MockSearchRepository.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

public final class MockSearchRepository: SearchRepository {
    private let mockSearchedApp: [SearchedApp] = SearchedApp.sampleDatas
    
    public init() { }
    
    public func search(request: SearchRequestDTO) async -> Result<[SearchedApp], Error> {
        return .success(mockSearchedApp)
    }
}
