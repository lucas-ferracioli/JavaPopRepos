protocol RootViewControllerType: class {
    func show(viewModels: [RootViewModel])
}

protocol RootPresenterType: class {
    func getRepositories(nextPage: Bool)
}

protocol RootDelegate: AnyObject {
    func showPullRequests(viewModel: RootViewModel)
}
