import Nimble
import Quick
import Cuckoo

@testable import JavaPopRepos

class PullRequestViewControllerTests: QuickSpec {
    override func spec() {
        var controller: PullRequestViewController!
        var view: PullRequestView!
        var mockPresenter: MockPullRequestPresenterType!
        
        beforeEach {
            mockPresenter = MockPullRequestPresenterType()
            view = PullRequestView()
            controller = PullRequestViewController(view: view, presenter: mockPresenter)
            
            stub(mockPresenter) { stub in
                stub.getPullRequests().thenDoNothing()
            }
        }
        
        describe("#viewDidLoad") {
            beforeEach {
                controller.viewDidLoad()
            }
            
            it("#getRepositories") {
                verify(mockPresenter).getPullRequests()
            }
        }
        
        describe("#bind") {
            beforeEach {
                controller.viewDidLoad()
            }
            
            it("#didRequestAgain") {
                view.didRequestAgain?()
                verify(mockPresenter, times(2)).getPullRequests()
            }
        }
    }
}
