import UIKit

class Coordinator: CoordinatorType {
    var navigationController: UINavigationController?
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let rootPresenter = RootPresenter()
        let rootViewController = RootViewController(presenter: rootPresenter)
        rootViewController.delegate = self
        rootPresenter.controller = rootViewController
        navigationController = UINavigationController(rootViewController: rootViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

extension Coordinator: RootDelegate {
    func showPullRequests(viewModel: RootViewModel) {
        let pullRequestPresenter = PullRequestPresenter(username: viewModel.username, repositoryName: viewModel.repositoryName)
        let pullRequestController = PullRequestViewController(presenter: pullRequestPresenter)
        pullRequestPresenter.controller = pullRequestController
        navigationController?.pushViewController(pullRequestController, animated: true)
    }
}
