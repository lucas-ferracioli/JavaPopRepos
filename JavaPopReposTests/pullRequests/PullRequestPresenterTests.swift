import Nimble
import Quick
import Cuckoo

@testable import JavaPopRepos

class PullRequestPresenterTests: QuickSpec {
    override func spec() {
        var mockController: MockPullRequestViewControllerType!
        var mockRepository: MockRepositoryType!
        var presenter: PullRequestPresenter!
        
        beforeEach {
            mockRepository = MockRepositoryType()
            presenter = PullRequestPresenter(repository: mockRepository, username: "", repositoryName: "")
            mockController = MockPullRequestViewControllerType()
            presenter.controller = mockController
            
            stub(mockController) { stub in
                stub.show(viewModels: any()).thenDoNothing()
                stub.showError().thenDoNothing()
            }
        }
        
        describe("#getPullRequests") {
            context("get success") {
                beforeEach {
                    stub(mockRepository) { stub in
                        stub.requestPullRequests(user: any(), repository: any(), completion: any()).then { (_, _, result) in
                            let data = self.loadJson()
                            result(.success(data!))
                        }
                    }
                }
                
                it("call #show method") {
                    presenter.getPullRequests()
                    verify(mockController).show(viewModels: any())
                }
            }
            
            context("get failure") {
                beforeEach {
                    stub(mockRepository) { stub in
                        stub.requestPullRequests(user: any(), repository: any(), completion: any()).then { (_, _, result) in
                            result(.failure(.genericError))
                        }
                    }
                }
                
                it("call #showError method") {
                    presenter.getPullRequests()
                    verify(mockController).showError()
                }
            }
        }
    }
    
    func loadJson() -> [PullRequest]? {
        if let path = Bundle.main.path(forResource: "getPullRequests", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonObject = try Decoder().decode([PullRequest].self, from: data)
                return jsonObject
            } catch {
                return nil
            }
        }
        return nil
    }
}
