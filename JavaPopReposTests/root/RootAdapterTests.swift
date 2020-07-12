import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class RootAdapterTests: QuickSpec {
    override func spec() {
        var model: RepositoriesModel!
        
        beforeEach {
            let owner = Owner(login: "test-login",
                              type: "User",
                              avatarUrl: URL(string: "https://testurl.com")!)
            let repo = Repo(name: "TestRepository",
                        description: "Any description",
                        stargazersCount: 15000,
                        forksCount: 1600,
                        owner: owner)
            model = RepositoriesModel(items: [repo])
        }
        
        describe("init") {
            it("verify view model") {
                let viewModel = RootAdapter().adapt(model: model)
                expect(viewModel.first?.username).to(equal("test-login"))
                expect(viewModel.first?.userImage).to(equal(URL(string: "https://testurl.com")))
                expect(viewModel.first?.userType).to(equal("User"))
                expect(viewModel.first?.repositoryName).to(equal("TestRepository"))
                expect(viewModel.first?.repositoryDescription).to(equal("Any description"))
                expect(viewModel.first?.numberOfForks).to(equal("1.6K"))
                expect(viewModel.first?.numberOfStars).to(equal("15.0K"))
            }
        }
    }
}
