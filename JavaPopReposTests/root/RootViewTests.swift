import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class RootViewTests: QuickSpec {
    override func spec() {
        var view: RootView!
        var viewModels: [RootViewModel]!
        
        beforeEach {
            view = RootView(frame: CGRect(x: 0, y: 0, width: 320, height: 680))
            view.backgroundColor = .white
        }
        
        describe("init") {
            context("has valid viewModels") {
                beforeEach {
                    let viewModel = RootViewModel(username: "test-user",
                                                  userImage: URL(string: "https://testurl.com")!,
                                                  userType: "User",
                                                  repositoryName: "TestRepository",
                                                  repositoryDescription: "This is any description.",
                                                  numberOfForks: "100K",
                                                  numberOfStars: "5M")
                    viewModels = [viewModel, viewModel, viewModel, viewModel, viewModel]
                }
                
                it("has a valid snapshot") {
                    view.show(viewModels: viewModels)
                    expect(view) == snapshot()
                }
            }
            
            context("is loading") {
                it("has a valid snapshot") {
                    expect(view) == snapshot()
                }
            }
            
            context("get an error") {
                it("has a valid snapshot") {
                    view.showError()
                    expect(view) == snapshot()
                }
            }
        }
    }
}
