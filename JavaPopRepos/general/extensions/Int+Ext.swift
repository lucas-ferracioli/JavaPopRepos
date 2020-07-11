import Foundation

extension Int {
    func getFormatted() -> String {
        if (0...999).contains(self) {
            return "\(self)"
        } else if (1000...999999).contains(self) {
            return "\(self/1000)K"
        } else {
            return "\(self/1000000)M"
        }
    }
}
