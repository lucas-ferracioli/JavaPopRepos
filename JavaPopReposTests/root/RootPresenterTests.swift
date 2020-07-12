import Nimble
import Quick
import Cuckoo

@testable import JavaPopRepos

class RootPresenterTests: QuickSpec {
    override func spec() {
        var mockController: MockRootViewControllerType!
        var presenter: RootPresenter!
        
        beforeEach {
            presenter = RootPresenter()
            mockController = MockRootViewControllerType()
            presenter.controller = mockController
            
            stub(mockController) { stub in
                stub.show(viewModels: any()).thenDoNothing()
                stub.showError().thenDoNothing()
            }
        }
        
        describe("#getRepositories") {
            it("get success") {
                presenter.getRepositories(nextPage: false)
            }
        }
    }
}
