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
                    viewModels = self.loadJson()
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
