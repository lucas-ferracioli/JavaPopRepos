import Nimble
import Quick
import UIKit

@testable import JavaPopRepos

class PullRequestAdapterTests: QuickSpec {
    override func spec() {
        var viewModels: [PullRequestViewModel]!
        
        beforeEach {
            viewModels = self.loadJson()
        }
        
        describe("init") {
            it("verify view model") {
                expect(viewModels.first?.username).to(equal("test-user"))
                expect(viewModels.first?.userImage).to(equal(URL(string: "https://userpicimage.com")))
                expect(viewModels.first?.pullRequestTitle).to(equal("Pull Request 1"))
                expect(viewModels.first?.pullRequestBody).to(equal("Any body."))
                expect(viewModels.first?.pullRequestDate).to(equal("Created at 09/07/2020"))
            }
        }
    }
    
    func loadJson() -> [PullRequestViewModel] {
        if let path = Bundle.main.path(forResource: "getPullRequests", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonObject = try Decoder().decode([PullRequest].self, from: data)
                return PullRequestAdapter().adapt(model: jsonObject)
            } catch {
                return [PullRequestViewModel]()
            }
        }
        return [PullRequestViewModel]()
    }
}
