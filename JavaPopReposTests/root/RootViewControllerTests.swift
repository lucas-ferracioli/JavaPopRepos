import Nimble
import Nimble_Snapshots
import Quick
import Cuckoo

@testable import JavaPopRepos

class RootViewControllerTests: QuickSpec {
    override func spec() {
        var controller: RootViewController!
        var view: RootView!
        var mockPresenter: MockRootPresenterType!
        var mockDelegate: MockRootDelegate!
        
        beforeEach {
            mockPresenter = MockRootPresenterType()
            view = RootView()
            mockDelegate = MockRootDelegate()
            controller = RootViewController(view: view, presenter: mockPresenter)
            controller.delegate = mockDelegate
            
            stub(mockPresenter) { stub in
                stub.getRepositories(nextPage: any()).thenDoNothing()
            }
            
            stub(mockDelegate) { stub in
                stub.showPullRequests(viewModel: any()).thenDoNothing()
            }
        }
        
        describe("#viewDidLoad") {
            beforeEach {
                controller.viewDidLoad()
            }
            
            it("#getRepositories") {
                verify(mockPresenter).getRepositories(nextPage: any())
            }
        }
        
        describe("#bind") {
            beforeEach {
                controller.viewDidLoad()
            }
            
            it("#didRequestAgain") {
                view.didRequestAgain?()
                verify(mockPresenter, times(2)).getRepositories(nextPage: any())
            }
            
            it("#didRequestNextPage") {
                view.didRequestNextPage?()
                verify(mockPresenter, times(2)).getRepositories(nextPage: any())
            }
            
            it("#didSelectRow") {
                let viewModel = RootViewModel(username: "",
                                              userImage: URL(string: "https://testurl.com")!,
                                              userType: "",
                                              repositoryName: "",
                                              repositoryDescription: "",
                                              numberOfForks: "",
                                              numberOfStars: "")
                view.didSelectRow?(viewModel)
                verify(mockDelegate).showPullRequests(viewModel: any())
            }
        }
    }
}
