//
//  MockRandomWordsRepository.swift
//  Domain
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

public final class MockRandomWordsRepository: RandomWordsRepository {
    private let mockStrings: [String] = ["제노", "카카오", "네이버", "토스", "구글", "애플"]
    public init() { }
    public func fetch(request: RandomWordRequestDTO) async -> Result<[String], Error> {
        return .success(mockStrings)
    }
}
