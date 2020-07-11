class RootPresenter: RootPresenterType {
    weak var controller: RootViewControllerType?
    private let repository: RepositoryType
    
    init(repository: RepositoryType = Repository()) {
        self.repository = repository
    }
    
    func getRepositories() {
        repository.requestRepositories(page: "1") { result in
            switch result {
            case .success(let model):
                let viewModels = RootAdapter().adapt(model: model)
                self.controller?.show(viewModels: viewModels)
            case .failure:
                print("Erro")
            }
        }
    }
}
