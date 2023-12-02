//
//  DefaultRandomWordsRepositoryTest.swift
//  DataTests
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import XCTest

@testable import Data
@testable import Domain

final class DefaultRandomWordsRepositoryTest: XCTestCase {
    var sut: DefaultRandomWordsRepository!
    
    override func setUpWithError() throws {
        sut = DefaultRandomWordsRepository(networkService: DefaultNetworkService())
    }
    
    override func tearDownWithError() throws {
    }
    
    func testExample() throws {
        Task {
            let count = 5
            var appList: [String] = []
            let result = await sut.fetch(request: .init(count: 6, wordLength: count))
            switch result {
            case .success(let success):
                appList = success
            case .failure(let failure):
                print(failure.localizedDescription)
            }
            XCTAssertEqual(appList.count, count)
            print(appList)
        }
    }
    
    func testPerformanceExample() throws {
        self.measure {
        }
    }
}
