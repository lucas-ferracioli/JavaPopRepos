import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class EmptyStateViewTests: QuickSpec {
    override func spec() {
        var view: EmptyStateView!
        
        beforeEach {
            view = EmptyStateView(frame: CGRect(x: 0, y: 0, width: 360, height: 140))
        }
        
        describe("init") {
            it("has a valid snapshot") {
                expect(view) == snapshot()
            }
        }
    }
}
