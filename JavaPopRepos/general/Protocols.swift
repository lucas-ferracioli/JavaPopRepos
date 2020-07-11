import UIKit

protocol CoordinatorType {
    var navigationController: UINavigationController? { get }
    func start()
}

protocol RepositoryType {
    func requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, Error>) -> Void)
}
