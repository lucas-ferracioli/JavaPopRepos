import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class RootStatusViewTests: QuickSpec {
    override func spec() {
        var view: RootStatusView!
        
        beforeEach {
            view = RootStatusView(frame: CGRect(x: 0, y: 0, width: 60, height: 24))
            view.backgroundColor = .white
        }
        
        describe("init") {
            it("has a valid snapshot") {
                view.show(icon: Images.iconFork, value: "10K")
                expect(view) == snapshot()
            }
        }
    }
}
