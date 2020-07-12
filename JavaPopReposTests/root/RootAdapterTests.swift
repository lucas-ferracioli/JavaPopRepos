import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class RootAdapterTests: QuickSpec {
    override func spec() {
        var viewModels: [RootViewModel]!
        
        beforeEach {
            viewModels = self.loadJson()
        }
        
        describe("init") {
            it("verify view model") {
                expect(viewModels.first?.username).to(equal("user_test1"))
                expect(viewModels.first?.userImage).to(equal(URL(string: "https://userpictest.com")))
                expect(viewModels.first?.userType).to(equal("User"))
                expect(viewModels.first?.repositoryName).to(equal("test-one"))
                expect(viewModels.first?.repositoryDescription).to(equal("Any description to first test."))
                expect(viewModels.first?.numberOfForks).to(equal("34.5K"))
                expect(viewModels.first?.numberOfStars).to(equal("105.9K"))
            }
        }
    }
    
    func loadJson() -> [RootViewModel] {
        if let path = Bundle.main.path(forResource: "getRepositories", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonObject = try Decoder().decode(RepositoriesModel.self, from: data)
                return RootAdapter().adapt(model: jsonObject)
            } catch {
                return [RootViewModel]()
            }
        }
        return [RootViewModel]()
    }
}
