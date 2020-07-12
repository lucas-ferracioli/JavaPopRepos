import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class PullRequestViewCellTests: QuickSpec {
    override func spec() {
        var view: PullRequestViewCell!
        
        beforeEach {
            view = PullRequestViewCell(frame: CGRect(x: 0, y: 0, width: 320, height: 120))
            view.backgroundColor = .white
        }
        
        describe("init") {
            it("has a valid snapshot") {
                let viewModels = self.loadJson()
                view.setup(viewModel: (viewModels.first)!)
//                expect(view) == snapshot()
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
