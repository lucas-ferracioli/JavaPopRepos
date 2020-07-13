import Nimble
import Quick
import Cuckoo

@testable import JavaPopRepos

class RootPresenterTests: QuickSpec {
    override func spec() {
        var mockController: MockRootViewControllerType!
        var mockRepository: MockRepositoryType!
        var presenter: RootPresenter!
        
        beforeEach {
            mockRepository = MockRepositoryType()
            presenter = RootPresenter(repository: mockRepository)
            mockController = MockRootViewControllerType()
            presenter.controller = mockController
            
            stub(mockController) { stub in
                stub.show(viewModels: any()).thenDoNothing()
                stub.showError().thenDoNothing()
            }
        }
        
        describe("#getRepositories") {
            context("get success") {
                beforeEach {
                    stub(mockRepository) { stub in
                        stub.requestRepositories(page: any(), completion: any()).then { (_, result) in
                            let data = self.loadJson()
                            result(.success(data!))
                        }
                    }
                }
                
                it("call #show method") {
                    presenter.getRepositories(nextPage: false)
                    verify(mockController).show(viewModels: any())
                }
            }
            
            context("get failure") {
                beforeEach {
                    stub(mockRepository) { stub in
                        stub.requestRepositories(page: any(), completion: any()).then { (_, result) in
                            result(.failure(ErrorCode.genericError))
                        }
                    }
                }
                
                it("call #showError method") {
                    presenter.getRepositories(nextPage: false)
                    verify(mockController).showError()
                }
            }
        }
    }
    
    func loadJson() -> RepositoriesModel? {
        if let path = Bundle.main.path(forResource: "getRepositories", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonObject = try Decoder().decode(RepositoriesModel.self, from: data)
                return jsonObject
            } catch {
                return nil
            }
        }
        return nil
    }
}
