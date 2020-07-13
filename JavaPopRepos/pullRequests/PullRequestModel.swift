import Foundation

struct PullRequest: Equatable, Decodable {
    let title: String
    let body: String
    let createdAt: String
    let user: User
}

struct User: Equatable, Decodable {
    let login: String
    let avatarUrl: URL
}
