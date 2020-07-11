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
        rootPresenter.controller = rootViewController
        navigationController = UINavigationController(rootViewController: rootViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
