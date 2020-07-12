import UIKit

class RootViewController: UIViewController, RootViewControllerType {
    weak var delegate: RootDelegate?
    
    private let contentView: RootView
    private let presenter: RootPresenterType
    
    init(view: RootView = RootView(),
         presenter: RootPresenterType) {
        self.contentView = view
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        bind()
        setNavigationControllerLayout(title: LocalizedStrings.appName)
        presenter.getRepositories(nextPage: false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func bind() {
        contentView.didRequestAgain = { [weak self] in
            self?.presenter.getRepositories(nextPage: false)
        }
        
        contentView.didRequestNextPage = { [weak self] in
            self?.presenter.getRepositories(nextPage: true)
        }
        
        contentView.didSelectRow = { [weak self] viewModel in
            self?.delegate?.showPullRequests(viewModel: viewModel)
        }
    }
    
    func show(viewModels: [RootViewModel]) {
        contentView.show(viewModels: viewModels)
    }
    
    func showError() {
        contentView.showError()
    }
}
