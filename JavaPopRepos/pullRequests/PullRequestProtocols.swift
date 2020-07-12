protocol PullRequestViewControllerType: class {
    func show(viewModels: [PullRequestViewModel])
    func showError()
}

protocol PullRequestPresenterType: class {
    func getPullRequests()
}
