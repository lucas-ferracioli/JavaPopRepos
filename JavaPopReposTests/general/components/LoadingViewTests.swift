import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class LoadingViewTests: QuickSpec {
    override func spec() {
        var view: LoadingView!
        
        beforeEach {
            view = LoadingView(frame: CGRect(x: 0, y: 0, width: 360, height: 100))
        }
        
        describe("init") {
            it("has a valid snapshot") {
                expect(view) == snapshot()
            }
        }
    }
}
