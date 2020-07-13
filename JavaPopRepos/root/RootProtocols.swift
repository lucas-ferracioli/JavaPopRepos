protocol RootViewControllerType: class {
    func show(viewModels: [RootViewModel])
    func showError()
}

protocol RootPresenterType: class {
    func getRepositories(nextPage: Bool)
}

protocol RootDelegate: AnyObject {
    func showPullRequests(viewModel: RootViewModel)
}
