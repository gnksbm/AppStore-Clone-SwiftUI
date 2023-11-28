import XCTest

@testable import Data
@testable import Domain

final class DataFeatureTests: XCTestCase {
    var sut: DefaultSearchRepository!
    
    override func setUpWithError() throws {
        sut = DefaultSearchRepository(networkService: DefaultNetworkService())
    }
    
    override func tearDownWithError() throws {
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
