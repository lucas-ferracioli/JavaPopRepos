import Nimble
import Quick

@testable import JavaPopRepos

class CoordinatorTests: QuickSpec {
    override func spec() {
        var coordinator: Coordinator!
        
        beforeEach {
            coordinator = Coordinator(window: UIWindow())
            coordinator.start()
        }
        
        describe("#init") {
            it("#start") {
                expect(coordinator.navigationController?.viewControllers[0]).to(beAKindOf(RootViewController.self))
            }
            
            it("#showPullRequests") {
                let viewModel = self.loadJson().first!
                coordinator.showPullRequests(viewModel: viewModel)
                expect(coordinator.navigationController?.viewControllers[1]).toEventually(beAKindOf(PullRequestViewController.self))
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
