import Foundation

struct RepositoriesModel: Equatable, Decodable {
    let items: [Repo]
}

struct Repo: Equatable, Decodable {
    let name: String
    let description: String
    let stargazersCount: Double
    let forksCount: Double
    let owner: Owner
}

struct Owner: Equatable, Decodable {
    let login: String
    let type: String
    let avatarUrl: URL
}
