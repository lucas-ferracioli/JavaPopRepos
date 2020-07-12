import Foundation

extension Double {
    func getFormatted() -> String {
        if (0...999).contains(self) {
            return String(format: "%.1f", self)
        } else if (1000...999999).contains(self) {
            return String(format: "%.1fK", self/1000)
        } else {
            return String(format: "%.1fM", self/1000000)
        }
    }
}
