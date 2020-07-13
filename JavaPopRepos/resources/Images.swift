import UIKit

class Images {
    static let iconFork = image(named: "iconFork")
    static let iconStar = image(named: "iconStar")
    static let errorIcon = image(named: "errorIcon")
    static let emptyIcon = image(named: "emptyIcon")
}

private extension Images {
    static func image(named name: String) -> UIImage {
        return UIImage(named: name, in: Bundle(for: self), compatibleWith: nil) ?? UIImage()
    }
}
