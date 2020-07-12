class PullRequestPresenter: PullRequestPresenterType {
    weak var controller: PullRequestViewControllerType?
    
    private let repository: RepositoryType
    private let username: String
    private let repositoryName: String
    
    init(repository: RepositoryType = Repository(),
         username: String,
         repositoryName: String) {
        self.repository = repository
        self.username = username
        self.repositoryName = repositoryName
    }
    
    func getPullRequests() {
        repository.requestPullRequests(user: username, repository: repositoryName) { result in
            switch result {
            case .success(let model):
                let viewModels = PullRequestAdapter().adapt(model: model)
                self.controller?.show(viewModels: viewModels)
            case .failure:
                self.controller?.showError()
            }
        }
    }
}
