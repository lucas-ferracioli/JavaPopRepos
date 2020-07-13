import Foundation

class LocalizedStrings {
    private static let tableName = "Localizable"
    
    // General
    static let appName = localized(forKey: "appName")
    static let pullRequests = localized(forKey: "pullRequests")
    
    // Empty State
    static let noData = localized(forKey: "noData")
    
    // Error State
    static let errorDescription = localized(forKey: "errorDescription")
    static let tryAgain = localized(forKey: "tryAgain")
    
    // Root
    static let noDescription = localized(forKey: "noDescription")
    static let rootCellIdentifier = localized(forKey: "noDescription")
    static let numberOfStars = localized(forKey: "numberOfStars")
    static let numberOfForks = localized(forKey: "numberOfForks")
    
    // Pull Requests
    static let createdAt = localized(forKey: "createdAt")
    static let noBody = localized(forKey: "noBody")
    static let pullRequestCellIdentifier = localized(forKey: "pullRequestCellIdentifier")
}

private extension LocalizedStrings {
    static func localized(forKey key: String) -> String {
        return NSLocalizedString(key, tableName: tableName, bundle: Bundle(for: self), value: "", comment: "")
    }
}
