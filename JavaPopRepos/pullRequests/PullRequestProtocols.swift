protocol PullRequestViewControllerType: class {
    func show(viewModels: [PullRequestViewModel])
}

protocol PullRequestPresenterType: class {
    func getPullRequests()
}
