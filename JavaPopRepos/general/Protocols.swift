import UIKit

protocol CoordinatorType {
    var navigationController: UINavigationController? { get }
    func start()
}

protocol RepositoryType {
    func requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, ErrorCode>) -> Void)
    func requestPullRequests(user: String, repository: String, completion: @escaping (Result<[PullRequest], ErrorCode>) -> Void)
}
