import XCTest
@testable import Domain

final class DomainFeatureTests: XCTestCase {
    var sut: SearchUseCase!
    
    override func setUpWithError() throws {
        sut = DefaultSearchUseCase(
            repository: MockSearchRepository()
        )
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }
}
