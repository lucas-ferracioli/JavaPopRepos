class RootPresenter: RootPresenterType {
    weak var controller: RootViewControllerType?
    private let repository: RepositoryType
    private var currentPage: Int = 1
    
    init(repository: RepositoryType = Repository()) {
        self.repository = repository
    }
    
    func getRepositories(nextPage: Bool) {
        repository.requestRepositories(page: getPage(nextPage: nextPage)) { result in
            switch result {
            case .success(let model):
                let viewModels = RootAdapter().adapt(model: model)
                self.controller?.show(viewModels: viewModels)
            case .failure:
                self.controller?.showError()
            }
        }
    }
    
    private func getPage(nextPage: Bool) -> String {
        if nextPage {
            currentPage = currentPage + 1
        }
        return "\(currentPage)"
    }
}
