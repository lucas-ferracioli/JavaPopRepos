import Foundation

class LocalizedStrings {
    private static let tableName = "Localizable"
    
    //General
    static let appName = localized(forKey: "appName")
    static let pullRequests = localized(forKey: "pullRequests")
}

private extension LocalizedStrings {
    static func localized(forKey key: String) -> String {
        return NSLocalizedString(key, tableName: tableName, bundle: Bundle(for: self), value: "", comment: "")
    }
}
