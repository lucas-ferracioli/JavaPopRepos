import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class DoubleExtTests: QuickSpec {
    override func spec() {
        describe("init") {
            it("has no additional character") {
                expect(10.0.getFormatted()).to(equal("10.0"))
            }
            
            it("has K additional character") {
                expect(10000.0.getFormatted()).to(equal("10.0K"))
            }
            
            it("has M additional character") {
                expect(1000000.0.getFormatted()).to(equal("1.0M"))
            }
        }
    }
}
