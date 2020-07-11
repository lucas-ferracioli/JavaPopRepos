protocol RootViewControllerType: class {
    func show(viewModels: [RootViewModel])
}

protocol RootPresenterType: class {
    func getRepositories()
}
