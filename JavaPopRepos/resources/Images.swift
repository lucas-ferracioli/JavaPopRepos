import UIKit

class Images {
    static let iconFork = image(named: "iconFork")
    static let iconStar = image(named: "iconStar")
}

private extension Images {
    static func image(named name: String) -> UIImage {
        return UIImage(named: name, in: Bundle(for: self), compatibleWith: nil) ?? UIImage()
    }
}
