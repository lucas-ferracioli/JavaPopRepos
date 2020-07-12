import Nimble
import Nimble_Snapshots
import Quick
import UIKit

@testable import JavaPopRepos

class IntExtTests: QuickSpec {
    override func spec() {
        describe("init") {
            it("has no additional character") {
                expect(10.getFormatted()).to(equal("10"))
            }
            
            it("has K additional character") {
                expect(10000.getFormatted()).to(equal("10K"))
            }
            
            it("has M additional character") {
                expect(1000000.getFormatted()).to(equal("1M"))
            }
        }
    }
}
