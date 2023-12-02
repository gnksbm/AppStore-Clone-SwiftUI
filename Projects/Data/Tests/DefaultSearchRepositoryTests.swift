//
//  DefaultSearchRepositoryTests.swift
//  DataTests
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import XCTest

@testable import Data
@testable import Domain

final class DefaultSearchRepositoryTests: XCTestCase {
    var sut: DefaultSearchRepository!
    
    override func setUpWithError() throws {
        sut = DefaultSearchRepository(networkService: DefaultNetworkService())
    }
    
    override func tearDownWithError() throws {
    }
    
    func testExample_이상한단어() throws {
        Task {
            let count = 5
            var appList: [SearchedApp]?
            let result = await sut.search(request: .init(term: "anemic", limit: count))
            switch result {
            case .success(let success):
                appList = success
            case .failure(let failure):
                print(failure.localizedDescription)
            }
            XCTAssertNotNil(appList)
        }
    }
    
    func testExample() throws {
        Task {
            let count = 5
            var appList: [SearchedApp] = []
            let result = await sut.search(request: .init(term: "kakao", limit: count))
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
